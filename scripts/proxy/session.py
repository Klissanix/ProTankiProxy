from __future__ import annotations
import argparse
import socket
import threading
import time
from typing import Tuple

from .shared import _ProxyShared
from .forwarding import _fwd_sc, _fwd_cs, _pickup_worker
from .logger import EventLog


def _addr_to_text(addr: object) -> str:
    if isinstance(addr, tuple) and len(addr) >= 2:
        return f"{addr[0]}:{addr[1]}"
    return str(addr) if addr else ""


def _socket_addr(sock: socket.socket, *, peer: bool) -> str:
    try:
        raw = sock.getpeername() if peer else sock.getsockname()
    except OSError:
        return ""
    return _addr_to_text(raw)


def _handle_session(client_sock: socket.socket,
                    client_addr: Tuple[str, int],
                    server_host: str,
                    server_port: int,
                    args: argparse.Namespace,
                    logger: EventLog,
                    shared_ref: list) -> None:
    client_local = ""
    try:
        local = client_sock.getsockname()
        client_local = f"{local[0]}:{local[1]}"
    except OSError:
        pass
    logger.log(
        "client_connected",
        addr=f"{client_addr[0]}:{client_addr[1]}",
        local=client_local,
    )

    t0 = time.monotonic()
    bind_ip = (getattr(args, "upstream_bind_ip", "") or "").strip()
    try:
        src = (bind_ip, 0) if bind_ip else None
        logger.log(
            "upstream_connect_attempt",
            attempt=1,
            upstream=f"{server_host}:{server_port}",
            bind_ip=bind_ip,
        )
        srv = socket.create_connection((server_host, server_port), timeout=10,
                                       source_address=src)
        srv.settimeout(1.0)
        client_sock.settimeout(1.0)
        upstream_local = ""
        try:
            s_local = srv.getsockname()
            upstream_local = f"{s_local[0]}:{s_local[1]}"
        except OSError:
            pass
        logger.log("upstream_connected",
                   upstream=f"{server_host}:{server_port}",
                   connect_ms=round((time.monotonic() - t0) * 1000),
                   bind_ip=bind_ip,
                   local=upstream_local)
    except OSError as exc:
        # If forced source bind picked the wrong NIC, retry once unbound.
        server_alias_enabled = bool(getattr(args, "server_alias_enabled", False))
        can_retry_unbound = bool(bind_ip) and not server_alias_enabled
        if not can_retry_unbound:
            logger.log(
                "upstream_error",
                error=str(exc),
                bind_ip=bind_ip,
                server_alias_enabled=server_alias_enabled,
                can_retry_unbound=False,
            )
            client_sock.close()
            return
        logger.log(
            "upstream_connect_fallback",
            reason=str(exc),
            from_bind_ip=bind_ip,
            server_alias_enabled=server_alias_enabled,
            fallback_unbound=True,
        )
        try:
            logger.log(
                "upstream_connect_attempt",
                attempt=2,
                upstream=f"{server_host}:{server_port}",
                bind_ip="",
                fallback_from_bind_ip=bind_ip,
            )
            srv = socket.create_connection((server_host, server_port), timeout=10)
            srv.settimeout(1.0)
            client_sock.settimeout(1.0)
            upstream_local = ""
            try:
                s_local = srv.getsockname()
                upstream_local = f"{s_local[0]}:{s_local[1]}"
            except OSError:
                pass
            logger.log(
                "upstream_connected",
                upstream=f"{server_host}:{server_port}",
                connect_ms=round((time.monotonic() - t0) * 1000),
                bind_ip="",
                fallback_from_bind_ip=bind_ip,
                local=upstream_local,
            )
        except OSError as exc2:
            logger.log(
                "upstream_error",
                error=str(exc2),
                bind_ip=bind_ip,
                fallback=True,
                server_alias_enabled=server_alias_enabled,
                can_retry_unbound=True,
            )
            client_sock.close()
            return

    # Preserve runtime settings from the previous/stub shared (toggled via hotkeys)
    old_shared = shared_ref[0]
    shared = _ProxyShared()
    if old_shared is not None:
        shared.noclip_enabled      = old_shared.noclip_enabled
        shared.auto_pickup_enabled = old_shared.auto_pickup_enabled
        shared.xray_enabled        = old_shared.xray_enabled
        shared.near_radius         = old_shared.near_radius
    shared_ref[0] = shared
    shared.server_sock = srv

    t_sc = threading.Thread(
        target=_fwd_sc,
        args=(srv, client_sock, shared, logger),
        daemon=True, name="fwd-sc")
    t_cs = threading.Thread(
        target=_fwd_cs,
        args=(client_sock, srv, shared, logger),
        daemon=True, name="fwd-cs")
    t_pu = threading.Thread(
        target=_pickup_worker,
        args=(shared, logger, args.pickup_delay, 0.05),
        daemon=True, name="pickup-worker")
    t_sc.start()
    t_cs.start()
    t_pu.start()
    logger.log(
        "session_threads_started",
        client_local=_socket_addr(client_sock, peer=False),
        client_peer=_socket_addr(client_sock, peer=True),
        upstream_local=_socket_addr(srv, peer=False),
        upstream_peer=_socket_addr(srv, peer=True),
    )

    try:
        # Wait for either forwarding direction to end first.
        while t_sc.is_alive() and t_cs.is_alive():
            t_sc.join(timeout=0.2)
            t_cs.join(timeout=0.2)
        first_stopped = "both"
        if not t_sc.is_alive() and t_cs.is_alive():
            first_stopped = "s2c"
        elif t_sc.is_alive() and not t_cs.is_alive():
            first_stopped = "c2s"
        logger.log(
            "session_forwarder_exit",
            first_stopped=first_stopped,
            sc_alive=t_sc.is_alive(),
            cs_alive=t_cs.is_alive(),
        )
    finally:
        logger.log(
            "session_teardown_begin",
            sc_alive=t_sc.is_alive(),
            cs_alive=t_cs.is_alive(),
            pickup_alive=t_pu.is_alive(),
        )
        shared.session_active = False
        shared.server_sock = None

        # Wake blocking recv/send calls so threads can exit quickly.
        for sock_obj in (srv, client_sock):
            try:
                sock_obj.shutdown(socket.SHUT_RDWR)
            except OSError:
                pass

        t_sc.join(timeout=1.5)
        t_cs.join(timeout=1.5)
        t_pu.join(timeout=0.5)
        logger.log(
            "session_threads_joined",
            sc_alive=t_sc.is_alive(),
            cs_alive=t_cs.is_alive(),
            pickup_alive=t_pu.is_alive(),
        )

        with shared._active_lock:
            shared._active.clear()
            shared._active_pos.clear()

        srv.close()
        client_sock.close()
        logger.log(
            "session_ended",
            addr=f"{client_addr[0]}:{client_addr[1]}",
            duration_ms=round((time.monotonic() - t0) * 1000),
            cipher_active=shared.cipher_active,
        )
