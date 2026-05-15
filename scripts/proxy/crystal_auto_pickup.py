from __future__ import annotations

import sys
import pathlib as _pathlib
# Allow running directly: py -3 proxy/crystal_auto_pickup.py
# Adds scripts/ to path so "from proxy.xxx import" resolves correctly.
sys.path.insert(0, str(_pathlib.Path(__file__).resolve().parent.parent))
sys.stdout.reconfigure(encoding="utf-8")
sys.stderr.reconfigure(encoding="utf-8")

import argparse
import datetime as dt
import os
import socket
import threading

from proxy.logger import EventLog
from proxy.http_servers import _start_config_http_server, _start_status_http_server
from proxy.runtime_paths import ensure_runtime_dirs, get_traffic_dir
from proxy.console_tee import install_console_tee
from proxy.session import _handle_session
from proxy.shared import _ProxyShared


def _build_argparser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(
        description="ProTanki crystal auto-pickup MITM proxy (security research)"
    )
    p.add_argument("--server-host", default="146.59.110.146",
                   help="Real game server IPv4 (default: %(default)s)")
    p.add_argument("--server-port", type=int, default=25565,
                   help="Real game server port (default: %(default)s)")
    p.add_argument("--listen-host", default="0.0.0.0",
                   help="Local TCP proxy bind address (default: %(default)s)")
    p.add_argument("--listen-port", type=int, default=25565,
                   help="Local TCP proxy port (default: %(default)s)")
    p.add_argument("--config-http-host", default="146.59.110.103",
                   help="IP to bind the config HTTP server on (default: %(default)s).")
    p.add_argument("--config-http-port", type=int, default=80,
                   help="Port for the config HTTP server (default: %(default)s)")
    p.add_argument("--fallback-cdn-ip", default="",
                   help="IP to connect to for CDN pass-through (resolved before hosts file changes).")
    p.add_argument("--fallback-cdn-host", default="s.pro-tanki.com",
                   help="Host header for CDN pass-through requests (default: %(default)s).")
    p.add_argument("--pickup-delay", type=float, default=0.05,
                   help="Seconds to wait after spawn before injecting pickup (default: %(default)s s)")
    p.add_argument("--near-radius", type=float, default=1500.0,
                   help="Max distance in game units to attempt pickup. 0=always. (default: %(default)s)")
    p.add_argument("--output-dir",
                   default=str(get_traffic_dir()),
                   help="Directory for JSONL log output")
    p.add_argument("--upstream-bind-ip", default="",
                   help="Bind upstream socket to this local IP before connecting to the server.")
    p.add_argument("--status-port", type=int, default=25581,
                   help="Port for JSON status endpoint (overlay). 0=disable. (default: %(default)s)")
    return p


def main() -> None:
    args = _build_argparser().parse_args()

    ensure_runtime_dirs()
    os.makedirs(args.output_dir, exist_ok=True)
    stamp = dt.datetime.now().strftime("%Y%m%d_%H%M%S")
    console_log_file = os.path.join(args.output_dir, f"proxy_console_{stamp}.log")
    install_console_tee(console_log_file)
    log_file = os.path.join(
        args.output_dir,
        f"auto_pickup_{args.server_host.replace(chr(46), chr(95))}_{stamp}.jsonl"
    )
    logger = EventLog(log_file)

    cfg = {
        "server": f"{args.server_host}:{args.server_port}",
        "listen": f"{args.listen_host}:{args.listen_port}",
        "pickup_delay": args.pickup_delay,
        "near_radius": args.near_radius,
        "log_file": log_file,
    }
    logger.log("startup_config", **cfg)

    print("=" * 60)
    print("ProTanki MITM Proxy")
    print("=" * 60)
    print(f"  Upstream       : {args.server_host}:{args.server_port}")
    print(f"  TCP listen     : {args.listen_host}:{args.listen_port}")
    print(f"  Pickup delay   : {args.pickup_delay} s  |  near radius: {args.near_radius:.0f} units")
    print(f"  Log            : {log_file}")
    print(f"  HTTP config    : {args.config_http_host}:{args.config_http_port}")
    print("=" * 60)

    try:
        from proxy.noclip_patch import get_patched_swf
        print("[*] Building noclip-patched library.swf (takes ~30s first time)...")
        get_patched_swf()
    except Exception as _noclip_exc:
        print(f"[!] noclip patch failed: {_noclip_exc}")
        raise SystemExit(1)

    # shared_ref[0] starts with a stub so HTTP server can check noclip_enabled
    # before the first game session.
    shared_ref: list = [_ProxyShared()]
    shared_ref[0].near_radius = args.near_radius

    try:
        _start_config_http_server(
            args.config_http_host,
            args.config_http_port,
            "127.0.0.1",
            args.listen_port,
            shared_ref,
            fallback_cdn_ip=args.fallback_cdn_ip,
            fallback_cdn_host=args.fallback_cdn_host,
        )
    except OSError as exc:
        print(f"[!] Failed to bind HTTP config server on "
              f"{args.config_http_host}:{args.config_http_port}: {exc}")
        print("    Make sure you added the loopback IP alias (see --help) and")
        print("    are running as Administrator.")
        raise SystemExit(1)

    if args.status_port:
        _start_status_http_server(shared_ref, "127.0.0.1", args.status_port)
        print(f"[+] Status endpoint : http://127.0.0.1:{args.status_port}/status")

    listen_sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    listen_sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    listen_sock.bind((args.listen_host, args.listen_port))
    listen_sock.listen(5)
    logger.log("proxy_listening",
               listen=f"{args.listen_host}:{args.listen_port}",
               upstream=f"{args.server_host}:{args.server_port}")

    print()
    print("[+] Waiting for game connections... (Ctrl+C to stop)")

    try:
        while True:
            client_sock, client_addr = listen_sock.accept()
            t = threading.Thread(
                target=_handle_session,
                args=(client_sock, client_addr,
                      args.server_host, args.server_port,
                      args, logger, shared_ref),
                daemon=True,
                name=f"session-{client_addr[1]}"
            )
            t.start()
    except KeyboardInterrupt:
        print("\n[!] Interrupted - shutting down proxy.")
    finally:
        listen_sock.close()


if __name__ == "__main__":
    main()
