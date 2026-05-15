from __future__ import annotations

import contextlib
import ctypes
import os
import pathlib
import random
import socket
import struct
import subprocess
from typing import Iterable

from .constants import GAME_EXECUTABLE_CANDIDATES, HOSTS_FILE, HOSTS_MARKER, INET_CACHE_DIR
from .logger import EventLog


def _safe_log(logger: EventLog | None, event: str, **kw) -> None:
    if logger is not None:
        logger.log(event, **kw)


def resolve_ipv4_direct_all(hostname: str, dns_server: str = "8.8.8.8", timeout: float = 4.0) -> list[str]:
    """Resolve all IPv4 answers via direct UDP DNS query, bypassing hosts file and OS cache."""
    sock = None
    seen: set[str] = set()
    result: list[str] = []
    try:
        tx = random.randint(1, 65535)
        hdr = struct.pack("!HHHHHH", tx, 0x0100, 1, 0, 0, 0)
        q = b"".join(bytes([len(part)]) + part for part in hostname.encode().split(b"."))
        q += b"\x00" + struct.pack("!HH", 1, 1)
        sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        sock.settimeout(timeout)
        sock.sendto(hdr + q, (dns_server, 53))
        data, _ = sock.recvfrom(512)
        if len(data) < 12 or struct.unpack("!H", data[0:2])[0] != tx:
            return []
        qdcount = struct.unpack("!H", data[4:6])[0]
        ancount = struct.unpack("!H", data[6:8])[0]
        pos = 12
        for _ in range(qdcount):
            while pos < len(data):
                if data[pos] & 0xC0 == 0xC0:
                    pos += 2
                    break
                if data[pos] == 0:
                    pos += 1
                    break
                pos += data[pos] + 1
            pos += 4
        for _ in range(ancount):
            if pos >= len(data):
                break
            if data[pos] & 0xC0 == 0xC0:
                pos += 2
            else:
                while pos < len(data) and data[pos]:
                    pos += data[pos] + 1
                pos += 1
            if pos + 10 > len(data):
                break
            rtype, _, _, rdlen = struct.unpack("!HHIH", data[pos:pos + 10])
            pos += 10
            if rtype == 1 and rdlen == 4 and pos + 4 <= len(data):
                ip = socket.inet_ntoa(data[pos:pos + 4])
                if ip and not ip.startswith("127.") and ip not in seen:
                    seen.add(ip)
                    result.append(ip)
            pos += rdlen
    except Exception:
        return []
    finally:
        if sock is not None:
            with contextlib.suppress(Exception):
                sock.close()
    return result


def build_fallback_cdn_ips(
    base_ips: Iterable[str],
    cdn_host: str,
    loopback_ip: str,
    *,
    verbose: bool = True,
    logger: EventLog | None = None,
) -> list[str]:
    seen: set[str] = set()
    result: list[str] = []
    for ip in base_ips:
        if ip and ip not in seen and not ip.startswith("127.") and ip != loopback_ip:
            seen.add(ip)
            result.append(ip)

    extra_ips = resolve_ipv4_direct_all(cdn_host)
    for ip in extra_ips:
        if ip and ip not in seen and not ip.startswith("127.") and ip != loopback_ip:
            seen.add(ip)
            result.append(ip)
            if verbose:
                print(f"[*] CDN extra mirror resolved: {cdn_host} -> {ip}")
            _safe_log(logger, "dns_resolve", host=cdn_host, ok=True, ip=ip, method="direct_extra")

    if not extra_ips:
        _safe_log(logger, "dns_resolve", host=cdn_host, ok=False, error="no_direct_ipv4_records", method="direct_extra_all")

    return result


def parse_hosts_line(line: str) -> tuple[str, list[str]]:
    raw = line.split("#", 1)[0].strip()
    if not raw:
        return "", []
    parts = raw.split()
    if len(parts) < 2:
        return "", []
    return parts[0], [host.lower() for host in parts[1:]]


def ensure_hosts_redirects(
    target_ip: str,
    domains: tuple[str, ...],
    *,
    verbose: bool = True,
    logger: EventLog | None = None,
) -> list[str]:
    def _vprint(message: str) -> None:
        if verbose:
            print(message)

    if not HOSTS_FILE.exists():
        _vprint(f"[!] hosts file not found: {HOSTS_FILE}")
        return []

    try:
        existing_lines = HOSTS_FILE.read_text(encoding="ascii", errors="ignore").splitlines()
    except OSError as exc:
        _vprint(f"[!] Failed to read hosts file: {exc}")
        return []

    domain_set = {domain.lower() for domain in domains}
    cleaned_lines: list[str] = []
    for line in existing_lines:
        if HOSTS_MARKER in line:
            ip, hostnames = parse_hosts_line(line)
            if ip and ip != target_ip and any(host in domain_set for host in hostnames):
                _vprint(f"[*] hosts: removing stale entry ({ip} -> {hostnames}) to update to {target_ip}")
                continue
        cleaned_lines.append(line)

    mapped: dict[str, str] = {}
    for line in cleaned_lines:
        ip, hostnames = parse_hosts_line(line)
        if not ip:
            continue
        for host in hostnames:
            mapped[host] = ip

    added: list[str] = []
    new_entries: list[str] = []
    skipped_same: list[str] = []
    skipped_conflict: list[str] = []
    for domain in domains:
        key = domain.lower()
        mapped_ip = mapped.get(key)
        if mapped_ip:
            if mapped_ip == target_ip:
                skipped_same.append(domain)
                _vprint(f"[+] hosts: {domain} already maps to {target_ip}")
            else:
                skipped_conflict.append(f"{domain}:{mapped_ip}")
                _vprint(f"[!] hosts: {domain} is mapped to {mapped_ip}; keeping existing mapping")
            continue
        new_entries.append(f"{target_ip} {domain} {HOSTS_MARKER}")
        added.append(domain)
        _vprint(f"[+] hosts: added {target_ip} {domain}")

    if new_entries:
        try:
            payload = "\n".join(cleaned_lines)
            if payload and not payload.endswith("\n"):
                payload += "\n"
            payload += "\n".join(new_entries) + "\n"
            HOSTS_FILE.write_text(payload, encoding="ascii", errors="ignore")
        except OSError as exc:
            _vprint(f"[!] Failed to update hosts entries: {exc}")
            _safe_log(logger, "hosts_redirects", ok=False, target_ip=target_ip, error=str(exc))
            return added

    _safe_log(
        logger,
        "hosts_redirects",
        ok=True,
        target_ip=target_ip,
        added=added,
        skipped_same=skipped_same,
        skipped_conflict=skipped_conflict,
    )
    return added


def cleanup_hosts_redirects(*, verbose: bool = True, logger: EventLog | None = None) -> int:
    def _vprint(message: str) -> None:
        if verbose:
            print(message)

    if not HOSTS_FILE.exists():
        _safe_log(logger, "hosts_cleanup", ok=True, removed=0, reason="hosts_file_missing")
        return 0
    try:
        lines = HOSTS_FILE.read_text(encoding="ascii", errors="ignore").splitlines()
    except OSError as exc:
        _vprint(f"[!] Failed to read hosts file for cleanup: {exc}")
        _safe_log(logger, "hosts_cleanup", ok=False, error=str(exc), stage="read")
        return 0

    keep = [line for line in lines if HOSTS_MARKER not in line]
    removed = len(lines) - len(keep)
    if removed <= 0:
        _safe_log(logger, "hosts_cleanup", ok=True, removed=0)
        return 0

    payload = "\n".join(keep)
    if payload:
        payload += "\n"
    try:
        HOSTS_FILE.write_text(payload, encoding="ascii", errors="ignore")
        _vprint(f"[*] hosts cleanup: removed {removed} auto entry(s)")
    except OSError as exc:
        _vprint(f"[!] Failed to write hosts file during cleanup: {exc}")
        _safe_log(logger, "hosts_cleanup", ok=False, error=str(exc), stage="write")
        return 0
    _safe_log(logger, "hosts_cleanup", ok=True, removed=removed)
    return removed


def clear_wininet_library_cache(*, verbose: bool = True, logger: EventLog | None = None) -> int:
    if not INET_CACHE_DIR.exists():
        _safe_log(logger, "wininet_cache_cleanup", ok=True, removed=0, cache_dir_missing=True)
        return 0
    removed = 0
    for pattern in ("library*.swf", "library*.tara"):
        for path in INET_CACHE_DIR.rglob(pattern):
            try:
                path.unlink()
                removed += 1
            except OSError:
                pass
    if verbose and removed > 0:
        print(f"[*] Cleared {removed} cached library file(s) from WinInet cache")
    _safe_log(logger, "wininet_cache_cleanup", ok=True, removed=removed, cache_dir=str(INET_CACHE_DIR))
    return removed


def ensure_loopback_alias(ip: str, *, verbose: bool = True, logger: EventLog | None = None) -> bool:
    def _vprint(message: str) -> None:
        if verbose:
            print(message)

    iface = "Loopback Pseudo-Interface 1"
    try:
        out = subprocess.check_output(
            ["netsh", "interface", "ip", "show", "address", iface],
            text=True,
            stderr=subprocess.DEVNULL,
        )
        if ip in out:
            _vprint(f"[+] Loopback alias {ip} already exists")
            _safe_log(logger, "loopback_alias", ip=ip, iface=iface, action="check", status="exists")
            return False
    except Exception as exc:
        _safe_log(logger, "loopback_alias", ip=ip, iface=iface, action="check", status="check_failed", error=str(exc))

    _vprint(f"[*] Adding loopback alias {ip} ...")
    try:
        result = subprocess.run(
            ["netsh", "interface", "ip", "add", "address", iface, ip, "255.255.255.255"],
            capture_output=True,
            text=True,
        )
    except FileNotFoundError:
        _vprint("[!] netsh not found, skipping loopback alias setup")
        _safe_log(logger, "loopback_alias", ip=ip, iface=iface, action="add", status="netsh_missing")
        return False

    if result.returncode == 0:
        _vprint(f"[+] Loopback alias {ip} added")
        _safe_log(logger, "loopback_alias", ip=ip, iface=iface, action="add", status="ok")
        return True

    stdout = result.stdout.strip()
    stderr = result.stderr.strip()
    _vprint(f"[!] netsh failed to add loopback alias: {stdout} {stderr}")
    _safe_log(
        logger,
        "loopback_alias",
        ip=ip,
        iface=iface,
        action="add",
        status="failed",
        returncode=result.returncode,
        stdout=stdout,
        stderr=stderr,
    )
    return False


def remove_loopback_alias(ip: str, *, verbose: bool = True, logger: EventLog | None = None) -> None:
    def _vprint(message: str) -> None:
        if verbose:
            print(message)

    iface = "Loopback Pseudo-Interface 1"
    try:
        result = subprocess.run(
            ["netsh", "interface", "ip", "delete", "address", iface, ip],
            capture_output=True,
            text=True,
        )
        if result.returncode == 0:
            _vprint(f"[*] Removed loopback alias {ip}")
            _safe_log(logger, "loopback_alias", ip=ip, iface=iface, action="remove", status="ok")
            return
        stdout = result.stdout.strip()
        stderr = result.stderr.strip()
        _vprint(f"[!] netsh failed to remove loopback alias {ip}: {stdout} {stderr}")
        _safe_log(
            logger,
            "loopback_alias",
            ip=ip,
            iface=iface,
            action="remove",
            status="failed",
            returncode=result.returncode,
            stdout=stdout,
            stderr=stderr,
        )
    except Exception as exc:
        _vprint(f"[!] Failed to remove loopback alias {ip}: {exc}")
        _safe_log(logger, "loopback_alias", ip=ip, iface=iface, action="remove", status="exception", error=str(exc))


def launch_game(
    game_path: str = "",
    *,
    verbose: bool = True,
    logger: EventLog | None = None,
) -> str | None:
    candidates = [game_path] if game_path else []
    candidates.extend(GAME_EXECUTABLE_CANDIDATES)
    for path in candidates:
        if not path:
            continue
        candidate = pathlib.Path(path)
        if not candidate.exists():
            continue
        try:
            subprocess.Popen([str(candidate)])
            if verbose:
                print(f"[+] Launched game executable: {candidate}")
            _safe_log(logger, "game_launch", ok=True, path=str(candidate))
            return str(candidate)
        except OSError as exc:
            if verbose:
                print(f"[!] Failed to launch game executable: {exc}")
            _safe_log(logger, "game_launch", ok=False, path=str(candidate), error=str(exc))
            continue
    if verbose:
        print("[*] Game executable not found, skipping auto-launch")
    _safe_log(logger, "game_launch", ok=False, error="not_found")
    return None


def hide_console_window() -> None:
    keep_console = os.environ.get("PROTANKI_KEEP_CONSOLE", "").strip().lower()
    if keep_console in {"1", "true", "yes"}:
        return
    try:
        hwnd = ctypes.windll.kernel32.GetConsoleWindow()
        if hwnd:
            ctypes.windll.user32.ShowWindow(hwnd, 0)
    except Exception:
        pass
