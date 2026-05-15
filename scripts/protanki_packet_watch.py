#!/usr/bin/env python3
"""
Passive packet watcher for ProTanki test-server traffic.

What it does:
- Captures TCP traffic to/from a chosen server:port (live sniff) OR reads a PCAP file.
- Reassembles TCP byte streams per direction.
- Parses ProTanki packet framing (8-byte header + packetId + payload).
- Handles optional deflate-compressed payloads.
- Filters important packet IDs for bonus/crystal security analysis.
- Writes structured JSONL + CSV logs.

This tool is passive. It does NOT inject/modify traffic.
"""

from __future__ import annotations

import argparse
import csv
import datetime as dt
import json
import os
import re
import socket
import sys
import time
import zlib
from collections import defaultdict
from dataclasses import dataclass
from typing import Dict, Iterable, List, Optional, Tuple


# Known IDs from reverse analysis.
KNOWN_PACKET_NAMES: Dict[int, str] = {
    -1047185003: "bonus_pickup_request_client",
    1044854075: "bonus_pickup_request_client_alt",
    -1291499147: "bonus_taken_confirm_server",
    1433937811: "bonus_taken_confirm_server_alt",
    1831462385: "bonus_spawn_server",
    -2026749922: "bonus_remove_server",
    1149211509: "battle_fund_change_server",
    -593513288: "crystal_balance_update_server",
}

DEFAULT_FILTER_IDS = sorted(KNOWN_PACKET_NAMES.keys())

ASCII_RE = re.compile(rb"[ -~]{4,}")


@dataclass
class PacketEvent:
    timestamp: str
    direction: str
    src: str
    sport: int
    dst: str
    dport: int
    packet_id: int
    packet_name: str
    compressed: bool
    payload_len: int
    payload_preview_hex: str
    ascii_hits: List[str]


class StreamParser:
    def __init__(self, max_packet_len: int = 2_000_000) -> None:
        self.buf = bytearray()
        self.max_packet_len = max_packet_len

    def feed(self, data: bytes) -> List[Tuple[bool, int, bytes]]:
        self.buf.extend(data)
        out: List[Tuple[bool, int, bytes]] = []

        while True:
            if len(self.buf) < 8:
                break

            header_word = int.from_bytes(self.buf[0:4], "big", signed=False)
            compressed = ((header_word >> 24) & 0x40) != 0
            total_len = header_word & 0xFFFFFF

            # Sanity guard to avoid desync spirals.
            if total_len < 8 or total_len > self.max_packet_len:
                # Drop one byte and continue searching a valid frame boundary.
                del self.buf[0]
                continue

            if len(self.buf) < total_len:
                break

            packet_id = int.from_bytes(self.buf[4:8], "big", signed=True)
            payload = bytes(self.buf[8:total_len])
            del self.buf[:total_len]

            if compressed and payload:
                try:
                    # AS3 uses deflate for this protocol.
                    payload = zlib.decompress(payload, -zlib.MAX_WBITS)
                except Exception:
                    # Keep raw bytes if decompress fails so analyst can inspect.
                    pass

            out.append((compressed, packet_id, payload))

        return out


def now_iso() -> str:
    return dt.datetime.now(dt.timezone.utc).isoformat()


def extract_ascii_hits(payload: bytes, limit: int = 6) -> List[str]:
    hits = []
    for m in ASCII_RE.finditer(payload):
        try:
            hits.append(m.group(0).decode("ascii", errors="ignore"))
        except Exception:
            continue
        if len(hits) >= limit:
            break
    return hits


def is_client_to_server(src: str, sport: int, dst: str, dport: int, server_host: str, server_port: int) -> bool:
    return dst == server_host and dport == server_port


def packet_name(packet_id: int) -> str:
    return KNOWN_PACKET_NAMES.get(packet_id, "unknown")


def local_ipv4_candidates() -> set:
    addrs = set()
    try:
        hostname = socket.gethostname()
        for info in socket.getaddrinfo(hostname, None, socket.AF_INET):
            addrs.add(info[4][0])
    except Exception:
        pass
    addrs.update({"127.0.0.1"})
    return addrs


def append_event(event: PacketEvent, jsonl_path: str, csv_writer: csv.DictWriter, csv_file) -> None:
    row = {
        "timestamp": event.timestamp,
        "direction": event.direction,
        "src": event.src,
        "sport": event.sport,
        "dst": event.dst,
        "dport": event.dport,
        "packet_id": event.packet_id,
        "packet_name": event.packet_name,
        "compressed": event.compressed,
        "payload_len": event.payload_len,
        "payload_preview_hex": event.payload_preview_hex,
        "ascii_hits": " | ".join(event.ascii_hits),
    }

    with open(jsonl_path, "a", encoding="utf-8") as jf:
        jf.write(json.dumps(row, ensure_ascii=False) + "\n")

    csv_writer.writerow(row)
    csv_file.flush()


def ensure_output_dir(path: str) -> None:
    os.makedirs(path, exist_ok=True)


def parse_tcp_payloads_live(
    server_host: str,
    server_port: int,
    iface: Optional[str],
    bpf_filter: Optional[str],
) -> Iterable[Tuple[str, int, str, int, bytes]]:
    try:
        from scapy.all import IP, TCP, Raw, sniff  # type: ignore
    except Exception as e:
        raise RuntimeError(
            "scapy is required for live mode. Install with: py -3 -m pip install scapy"
        ) from e

    q: List[Tuple[str, int, str, int, bytes]] = []

    def on_pkt(pkt):
        if IP not in pkt or TCP not in pkt or Raw not in pkt:
            return
        ip = pkt[IP]
        tcp = pkt[TCP]
        payload = bytes(pkt[Raw].load)
        if not payload:
            return
        q.append((ip.src, int(tcp.sport), ip.dst, int(tcp.dport), payload))

    flt = bpf_filter or f"tcp and host {server_host} and port {server_port}"
    sniff(iface=iface, filter=flt, prn=on_pkt, store=False)

    for item in q:
        yield item


def parse_tcp_payloads_pcap(
    pcap_path: str,
    server_host: str,
    server_port: int,
) -> Iterable[Tuple[str, int, str, int, bytes]]:
    try:
        from scapy.all import IP, TCP, Raw, PcapReader  # type: ignore
    except Exception as e:
        raise RuntimeError(
            "scapy is required for pcap mode. Install with: py -3 -m pip install scapy"
        ) from e

    with PcapReader(pcap_path) as pcap:
        for pkt in pcap:
            if IP not in pkt or TCP not in pkt or Raw not in pkt:
                continue
            ip = pkt[IP]
            tcp = pkt[TCP]
            if not ((ip.src == server_host and int(tcp.sport) == server_port) or (ip.dst == server_host and int(tcp.dport) == server_port)):
                continue
            payload = bytes(pkt[Raw].load)
            if not payload:
                continue
            yield (ip.src, int(tcp.sport), ip.dst, int(tcp.dport), payload)


def run(args: argparse.Namespace) -> int:
    server_host = args.server_host
    server_port = args.server_port

    ensure_output_dir(args.output_dir)
    stamp = dt.datetime.now().strftime("%Y%m%d_%H%M%S")
    base_name = f"protanki_watch_{server_host.replace('.', '_')}_{server_port}_{stamp}"
    csv_path = os.path.join(args.output_dir, base_name + ".csv")
    jsonl_path = os.path.join(args.output_dir, base_name + ".jsonl")

    filter_ids = set(args.filter_ids) if args.filter_ids else set(DEFAULT_FILTER_IDS)
    include_unknown = args.include_unknown

    stream_parsers: Dict[Tuple[str, int, str, int], StreamParser] = defaultdict(StreamParser)

    csv_headers = [
        "timestamp",
        "direction",
        "src",
        "sport",
        "dst",
        "dport",
        "packet_id",
        "packet_name",
        "compressed",
        "payload_len",
        "payload_preview_hex",
        "ascii_hits",
    ]

    print(f"[+] Server target: {server_host}:{server_port}")
    print(f"[+] Output CSV:   {csv_path}")
    print(f"[+] Output JSONL: {jsonl_path}")
    print(f"[+] Filter IDs:   {sorted(filter_ids)}")
    if include_unknown:
        print("[+] Unknown packet IDs will also be logged")

    mode = args.mode
    if mode == "live":
        print("[+] Starting live sniff... (Ctrl+C to stop)")
    else:
        print(f"[+] Reading PCAP: {args.pcap}")

    with open(csv_path, "w", newline="", encoding="utf-8") as cf:
        writer = csv.DictWriter(cf, fieldnames=csv_headers)
        writer.writeheader()

        try:
            if mode == "live":
                payload_iter = parse_tcp_payloads_live(server_host, server_port, args.iface, args.bpf)
            else:
                payload_iter = parse_tcp_payloads_pcap(args.pcap, server_host, server_port)

            for src, sport, dst, dport, raw in payload_iter:
                key = (src, sport, dst, dport)
                frames = stream_parsers[key].feed(raw)

                for compressed, pkt_id, payload in frames:
                    if not include_unknown and pkt_id not in filter_ids:
                        continue
                    if include_unknown is False and pkt_id in KNOWN_PACKET_NAMES and pkt_id not in filter_ids:
                        continue

                    direction = "C->S" if is_client_to_server(src, sport, dst, dport, server_host, server_port) else "S->C"

                    event = PacketEvent(
                        timestamp=now_iso(),
                        direction=direction,
                        src=src,
                        sport=sport,
                        dst=dst,
                        dport=dport,
                        packet_id=pkt_id,
                        packet_name=packet_name(pkt_id),
                        compressed=compressed,
                        payload_len=len(payload),
                        payload_preview_hex=payload[: args.hex_preview].hex(),
                        ascii_hits=extract_ascii_hits(payload),
                    )
                    append_event(event, jsonl_path, writer, cf)

                    print(
                        f"[{event.timestamp}] {event.direction} id={event.packet_id} ({event.packet_name}) "
                        f"len={event.payload_len} compressed={event.compressed}"
                    )
                    if event.ascii_hits:
                        print(f"    ascii: {event.ascii_hits[:2]}")

        except KeyboardInterrupt:
            print("\n[+] Stopped by user.")
        except Exception as e:
            print(f"[!] Error: {e}")
            return 1

    print("[+] Done.")
    return 0


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(description="ProTanki packet watcher (passive)")
    p.add_argument("--mode", choices=["live", "pcap"], default="live", help="Capture mode")
    p.add_argument("--server-host", default="146.59.110.146", help="Server IPv4")
    p.add_argument("--server-port", type=int, default=25565, help="Server TCP port")
    p.add_argument("--pcap", help="Path to .pcap/.pcapng for offline mode")
    p.add_argument("--iface", help="Interface for scapy sniff (optional)")
    p.add_argument("--bpf", help="Custom BPF filter (optional)")
    p.add_argument("--output-dir", default=r"C:\Users\Oleh\Documents\ProTanki-security\artifacts\traffic", help="Output folder")
    p.add_argument("--hex-preview", type=int, default=64, help="Payload hex preview bytes")
    p.add_argument(
        "--filter-ids",
        type=int,
        nargs="*",
        default=DEFAULT_FILTER_IDS,
        help="Packet IDs to keep (default: known bonus/crystal IDs)",
    )
    p.add_argument(
        "--include-unknown",
        action="store_true",
        help="Also log unknown IDs (can be noisy)",
    )
    return p


def main() -> int:
    parser = build_parser()
    args = parser.parse_args()

    if args.mode == "pcap" and not args.pcap:
        parser.error("--pcap is required in pcap mode")

    return run(args)


if __name__ == "__main__":
    raise SystemExit(main())
