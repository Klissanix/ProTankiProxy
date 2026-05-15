#!/usr/bin/env python3
import csv
import json
import re
from pathlib import Path

CLASS_RE = re.compile(r"public\s+class\s+(.+?)\s*(?:extends|implements|\{)", re.DOTALL)
PACKET_ID_RE = re.compile(
    r"override\s+public\s+function\s+§else\s+try§\(\)\s*:\s*int\s*\{\s*return\s+(-?\d+)\s*;",
    re.DOTALL,
)
PRIORITY_RE = re.compile(
    r"override\s+public\s+function\s+§5214235090235103123423632234§\(\)\s*:\s*int\s*\{\s*return\s+(-?\d+)\s*;",
    re.DOTALL,
)


def parse_file(path: Path):
    text = path.read_text(encoding="utf-8", errors="ignore")
    class_match = CLASS_RE.search(text)
    packet_match = PACKET_ID_RE.search(text)
    if not class_match or not packet_match:
        return None

    priority_match = PRIORITY_RE.search(text)
    return {
        "file": str(path),
        "class": " ".join(class_match.group(1).split()),
        "packet_id": int(packet_match.group(1)),
        "priority": int(priority_match.group(1)) if priority_match else None,
    }


def main():
    root = Path(r"C:\Users\Oleh\Documents\ProTanki-security\artifacts\swf\decompiled_library\scripts")
    out_dir = Path(r"C:\Users\Oleh\Documents\ProTanki-security\artifacts\swf\analysis")
    out_dir.mkdir(parents=True, exist_ok=True)

    rows = []
    for path in root.rglob("*.as"):
        parsed = parse_file(path)
        if parsed:
            rows.append(parsed)

    rows.sort(key=lambda x: x["packet_id"])

    csv_path = out_dir / "packet_map.csv"
    json_path = out_dir / "packet_map.json"

    with csv_path.open("w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=["packet_id", "priority", "class", "file"])
        w.writeheader()
        w.writerows(rows)

    json_path.write_text(json.dumps(rows, ensure_ascii=False, indent=2), encoding="utf-8")

    print(f"[+] packets: {len(rows)}")
    print(f"[+] csv: {csv_path}")
    print(f"[+] json: {json_path}")


if __name__ == "__main__":
    main()
