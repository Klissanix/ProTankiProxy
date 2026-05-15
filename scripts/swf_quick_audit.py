#!/usr/bin/env python3
import argparse
import hashlib
import io
import json
import lzma
import re
import struct
import sys
import zlib
from pathlib import Path

TAG_NAMES = {
    12: "DoAction",
    56: "ExportAssets",
    57: "ImportAssets",
    69: "FileAttributes",
    76: "SymbolClass",
    82: "DoABC",
    87: "DefineBinaryData",
}

PRINTABLE_RE = re.compile(rb"[ -~]{6,}")
URL_RE = re.compile(r"(https?://[^\s\"'<>]+|wss?://[^\s\"'<>]+|[a-zA-Z0-9.-]+\.(?:ru|com|net|org|io)(?::\d+)?)", re.IGNORECASE)


def read_swf_bytes(path: Path):
    raw = path.read_bytes()
    if len(raw) < 8:
        raise ValueError("File too small to be SWF")

    signature = raw[0:3]
    version = raw[3]
    declared_len = struct.unpack("<I", raw[4:8])[0]

    if signature == b"FWS":
        body = raw[8:]
    elif signature == b"CWS":
        body = zlib.decompress(raw[8:])
    elif signature == b"ZWS":
        if len(raw) < 17:
            raise ValueError("ZWS file too small")
        compressed_len = struct.unpack("<I", raw[8:12])[0]
        lzma_payload = raw[12:12 + compressed_len]
        if len(lzma_payload) < 6:
            raise ValueError("Invalid ZWS payload")

        # SWF ZWS stores LZMA properties (5 bytes) followed by compressed data.
        # Rebuild LZMA-Alone header by injecting expected uncompressed size.
        props = lzma_payload[:5]
        payload = lzma_payload[5:]
        expected_size = max(0, declared_len - 8)
        lzma_alone = props + struct.pack("<Q", expected_size) + payload
        body = lzma.decompress(lzma_alone, format=lzma.FORMAT_ALONE)
    else:
        raise ValueError(f"Unsupported SWF signature: {signature!r}")

    decompressed = b"FWS" + bytes([version]) + struct.pack("<I", declared_len) + body
    return raw, decompressed, signature.decode("ascii", errors="replace"), version, declared_len


def skip_rect_and_header_fields(data: bytes):
    # RECT is bit-packed. First 5 bits = Nbits for each coordinate (xMin, xMax, yMin, yMax)
    bit0 = data[8]
    nbits = bit0 >> 3
    rect_bits = 5 + 4 * nbits
    rect_bytes = (rect_bits + 7) // 8

    # After RECT: FrameRate (UI16 but fixed8), FrameCount (UI16)
    pos = 8 + rect_bytes + 2 + 2
    return pos


def parse_tags(data: bytes):
    pos = skip_rect_and_header_fields(data)
    tags = []
    while pos + 2 <= len(data):
        tag_and_len = struct.unpack_from("<H", data, pos)[0]
        pos += 2
        tag_code = tag_and_len >> 6
        short_len = tag_and_len & 0x3F

        if short_len == 0x3F:
            if pos + 4 > len(data):
                break
            tag_len = struct.unpack_from("<I", data, pos)[0]
            pos += 4
        else:
            tag_len = short_len

        if pos + tag_len > len(data):
            break

        tag_data = data[pos:pos + tag_len]
        pos += tag_len

        tags.append({
            "code": tag_code,
            "name": TAG_NAMES.get(tag_code, f"Tag{tag_code}"),
            "length": tag_len,
            "offset": pos - tag_len,
            "data": tag_data,
        })

        if tag_code == 0:
            break

    return tags


def extract_strings(data: bytes, max_count=5000):
    out = []
    for m in PRINTABLE_RE.finditer(data):
        s = m.group(0).decode("ascii", errors="ignore")
        out.append(s)
        if len(out) >= max_count:
            break
    return out


def main():
    parser = argparse.ArgumentParser(description="Quick SWF audit: header/tags/strings/indicators")
    parser.add_argument("input", type=Path, help="Path to SWF")
    parser.add_argument("--out-dir", type=Path, required=True, help="Output directory")
    args = parser.parse_args()

    args.out_dir.mkdir(parents=True, exist_ok=True)

    raw, dec, sig, ver, declared_len = read_swf_bytes(args.input)
    tags = parse_tags(dec)

    sha256 = hashlib.sha256(raw).hexdigest()
    strings = extract_strings(dec)

    indicators = sorted({m.group(1) for s in strings for m in URL_RE.finditer(s)})

    doabc_count = sum(1 for t in tags if t["code"] == 82)
    bin_data_count = sum(1 for t in tags if t["code"] == 87)
    tag_hist = {}
    for t in tags:
        key = t["name"]
        tag_hist[key] = tag_hist.get(key, 0) + 1

    report = {
        "input": str(args.input),
        "sha256": sha256,
        "signature": sig,
        "version": ver,
        "declared_file_length": declared_len,
        "actual_raw_length": len(raw),
        "actual_decompressed_length": len(dec),
        "tags_total": len(tags),
        "doabc_count": doabc_count,
        "definebinarydata_count": bin_data_count,
        "tag_histogram": tag_hist,
        "indicators": indicators[:500],
        "sample_strings": strings[:300],
    }

    (args.out_dir / "swf_quick_report.json").write_text(json.dumps(report, indent=2, ensure_ascii=True), encoding="utf-8")
    (args.out_dir / "swf_strings.txt").write_text("\n".join(strings), encoding="utf-8")

    print("[+] Report:", args.out_dir / "swf_quick_report.json")
    print("[+] Strings:", args.out_dir / "swf_strings.txt")
    print("[+] DoABC tags:", doabc_count)
    print("[+] DefineBinaryData tags:", bin_data_count)
    print("[+] Indicators:", len(indicators))


if __name__ == "__main__":
    try:
        main()
    except Exception as exc:
        print(f"[!] Error: {exc}", file=sys.stderr)
        sys.exit(1)
