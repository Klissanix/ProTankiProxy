#!/usr/bin/env python3
"""
Bonus compromise test runner (defensive QA helper).

Purpose:
- Analyze parsed packet CSV from protanki_packet_watch.py.
- Deduplicate common PktMon duplicate frames.
- Correlate spawn -> pickup request -> confirm/reward chain.
- Evaluate manual test markers (early/replay/random-id/etc.) with pass/fail.
- Export machine-readable JSON + human-readable Markdown report.

Important:
- This script does NOT inject packets and does NOT automate cheating.
- It is designed for authorized security testing and evidence logging.
"""

from __future__ import annotations

import argparse
import csv
import datetime as dt
import json
import os
from dataclasses import dataclass
from typing import Dict, Iterable, List, Optional, Tuple

SPAWN_ID = 1831462385
PICKUP_REQ_ID = -1047185003
PICKUP_CONFIRM_ID = -1291499147
CRYSTAL_UPDATE_ID = -593513288
FUND_UPDATE_ID = 1149211509
REMOVE_ID = -2026749922

TRACK_IDS = {
    SPAWN_ID,
    PICKUP_REQ_ID,
    PICKUP_CONFIRM_ID,
    CRYSTAL_UPDATE_ID,
    FUND_UPDATE_ID,
    REMOVE_ID,
}


@dataclass
class Event:
    ts: dt.datetime
    direction: str
    packet_id: int
    payload_len: int
    payload_preview_hex: str
    raw: Dict[str, str]


@dataclass
class AttemptResult:
    req_ts: dt.datetime
    nearest_spawn_ts: Optional[dt.datetime]
    spawn_delta_ms: Optional[int]
    confirm_ts: Optional[dt.datetime]
    crystal_ts: Optional[dt.datetime]
    accepted: bool


def risk_level(score: int) -> str:
    if score >= 8:
        return "high"
    if score >= 4:
        return "medium"
    return "low"


def parse_iso(ts: str) -> dt.datetime:
    return dt.datetime.fromisoformat(ts)


def parse_csv(path: str) -> List[Event]:
    out: List[Event] = []
    with open(path, "r", encoding="utf-8", newline="") as f:
        reader = csv.DictReader(f)
        for row in reader:
            try:
                packet_id = int(row["packet_id"])
            except Exception:
                continue

            if packet_id not in TRACK_IDS:
                continue

            try:
                ts = parse_iso(row["timestamp"])
            except Exception:
                continue

            direction = row.get("direction", "")
            payload_hex = (row.get("payload_preview_hex") or "").strip().lower()
            try:
                payload_len = int(row.get("payload_len", "0"))
            except Exception:
                payload_len = 0

            out.append(
                Event(
                    ts=ts,
                    direction=direction,
                    packet_id=packet_id,
                    payload_len=payload_len,
                    payload_preview_hex=payload_hex,
                    raw=row,
                )
            )

    out.sort(key=lambda e: e.ts)
    return out


def deduplicate(events: List[Event], dedup_window_ms: int) -> List[Event]:
    if not events:
        return []

    deduped: List[Event] = []
    last_seen: Dict[Tuple[str, int, int, str], dt.datetime] = {}
    threshold = dt.timedelta(milliseconds=dedup_window_ms)

    for e in events:
        key = (e.direction, e.packet_id, e.payload_len, e.payload_preview_hex)
        prev = last_seen.get(key)
        if prev is not None and (e.ts - prev) <= threshold:
            continue
        deduped.append(e)
        last_seen[key] = e.ts

    return deduped


def find_first_after(
    events: List[Event],
    packet_id: int,
    start_ts: dt.datetime,
    max_delta_ms: int,
    direction: Optional[str] = None,
) -> Optional[dt.datetime]:
    limit = start_ts + dt.timedelta(milliseconds=max_delta_ms)
    for e in events:
        if e.ts < start_ts:
            continue
        if e.ts > limit:
            break
        if e.packet_id != packet_id:
            continue
        if direction and e.direction != direction:
            continue
        return e.ts
    return None


def find_nearest_prior_spawn(
    spawns: List[Event],
    req_ts: dt.datetime,
    max_back_ms: int,
) -> Tuple[Optional[dt.datetime], Optional[int]]:
    best_ts: Optional[dt.datetime] = None
    best_delta: Optional[int] = None
    for e in reversed(spawns):
        if e.ts > req_ts:
            continue
        delta = req_ts - e.ts
        delta_ms = int(delta.total_seconds() * 1000)
        if delta_ms > max_back_ms:
            break
        best_ts = e.ts
        best_delta = delta_ms
        break
    return best_ts, best_delta


def correlate_attempts(
    events: List[Event],
    max_spawn_back_ms: int,
    confirm_window_ms: int,
    crystal_window_ms: int,
) -> List[AttemptResult]:
    reqs = [e for e in events if e.packet_id == PICKUP_REQ_ID and e.direction == "C->S"]
    spawns = [e for e in events if e.packet_id == SPAWN_ID and e.direction == "S->C"]

    attempts: List[AttemptResult] = []
    for req in reqs:
        spawn_ts, spawn_delta_ms = find_nearest_prior_spawn(spawns, req.ts, max_spawn_back_ms)
        confirm_ts = find_first_after(
            events,
            PICKUP_CONFIRM_ID,
            req.ts,
            max_delta_ms=confirm_window_ms,
            direction="S->C",
        )
        crystal_ts = find_first_after(
            events,
            CRYSTAL_UPDATE_ID,
            req.ts,
            max_delta_ms=crystal_window_ms,
            direction="S->C",
        )
        accepted = (confirm_ts is not None) or (crystal_ts is not None)
        attempts.append(
            AttemptResult(
                req_ts=req.ts,
                nearest_spawn_ts=spawn_ts,
                spawn_delta_ms=spawn_delta_ms,
                confirm_ts=confirm_ts,
                crystal_ts=crystal_ts,
                accepted=accepted,
            )
        )

    return attempts


def load_markers(path: Optional[str]) -> List[Dict[str, str]]:
    if not path:
        return []
    with open(path, "r", encoding="utf-8") as f:
        data = json.load(f)
    if not isinstance(data, list):
        raise ValueError("Markers JSON must be a list")
    out: List[Dict[str, str]] = []
    for item in data:
        if not isinstance(item, dict):
            continue
        if "name" not in item or "start" not in item or "end" not in item:
            continue
        out.append(item)
    return out


def evaluate_markers(
    markers: List[Dict[str, str]],
    events: List[Event],
) -> List[Dict[str, object]]:
    results: List[Dict[str, object]] = []

    for m in markers:
        name = str(m.get("name", "unnamed"))
        expected = str(m.get("expected", "reject"))
        start = parse_iso(str(m["start"]))
        end = parse_iso(str(m["end"]))

        in_window = [e for e in events if start <= e.ts <= end]
        req_cnt = sum(1 for e in in_window if e.packet_id == PICKUP_REQ_ID and e.direction == "C->S")
        conf_cnt = sum(1 for e in in_window if e.packet_id == PICKUP_CONFIRM_ID and e.direction == "S->C")
        cry_cnt = sum(1 for e in in_window if e.packet_id == CRYSTAL_UPDATE_ID and e.direction == "S->C")

        accepted = (conf_cnt > 0) or (cry_cnt > 0)
        if expected.lower() == "reject":
            passed = not accepted
        elif expected.lower() == "accept":
            passed = accepted
        else:
            passed = True

        results.append(
            {
                "name": name,
                "expected": expected,
                "start": start.isoformat(),
                "end": end.isoformat(),
                "requests": req_cnt,
                "confirms": conf_cnt,
                "crystal_updates": cry_cnt,
                "accepted_by_server": accepted,
                "pass": passed,
                "notes": m.get("notes", ""),
            }
        )

    return results


def _cluster_timestamps(ts_list: List[dt.datetime], window_ms: int) -> List[List[dt.datetime]]:
    if not ts_list:
        return []

    clusters: List[List[dt.datetime]] = []
    current: List[dt.datetime] = [ts_list[0]]
    for ts in ts_list[1:]:
        gap_ms = int((ts - current[-1]).total_seconds() * 1000)
        if gap_ms <= window_ms:
            current.append(ts)
        else:
            clusters.append(current)
            current = [ts]
    clusters.append(current)
    return clusters


def analyze_attack_surface(
    events: List[Event],
    attempts: List[AttemptResult],
    replay_window_ms: int,
    rapid_pickup_ms: int,
) -> Dict[str, object]:
    req_events = [e for e in events if e.packet_id == PICKUP_REQ_ID and e.direction == "C->S"]

    by_payload: Dict[str, List[dt.datetime]] = {}
    for e in req_events:
        key = e.payload_preview_hex or "<empty>"
        by_payload.setdefault(key, []).append(e.ts)

    replay_clusters: List[Dict[str, object]] = []
    for payload_key, ts_list in by_payload.items():
        ts_sorted = sorted(ts_list)
        clusters = _cluster_timestamps(ts_sorted, replay_window_ms)
        for cl in clusters:
            if len(cl) < 2:
                continue
            min_gap_ms: Optional[int] = None
            if len(cl) >= 2:
                gaps = [int((cl[i] - cl[i - 1]).total_seconds() * 1000) for i in range(1, len(cl))]
                min_gap_ms = min(gaps) if gaps else None
            replay_clusters.append(
                {
                    "payload_fingerprint": payload_key,
                    "count": len(cl),
                    "first_ts": cl[0].isoformat(),
                    "last_ts": cl[-1].isoformat(),
                    "window_ms": int((cl[-1] - cl[0]).total_seconds() * 1000),
                    "min_inter_request_gap_ms": min_gap_ms,
                }
            )

    rapid_accepted = [
        {
            "req_ts": a.req_ts.isoformat(),
            "spawn_delta_ms": a.spawn_delta_ms,
            "confirm_ts": a.confirm_ts.isoformat() if a.confirm_ts else None,
        }
        for a in attempts
        if a.accepted and a.spawn_delta_ms is not None and a.spawn_delta_ms <= rapid_pickup_ms
    ]

    accepted_without_spawn = [
        {
            "req_ts": a.req_ts.isoformat(),
            "confirm_ts": a.confirm_ts.isoformat() if a.confirm_ts else None,
            "crystal_ts": a.crystal_ts.isoformat() if a.crystal_ts else None,
        }
        for a in attempts
        if a.accepted and a.spawn_delta_ms is None
    ]

    replay_excess = sum(max(0, int(c["count"]) - 1) for c in replay_clusters)
    risk_score = (replay_excess * 2) + (len(rapid_accepted) * 3) + (len(accepted_without_spawn) * 5)

    return {
        "replay_window_ms": replay_window_ms,
        "rapid_pickup_threshold_ms": rapid_pickup_ms,
        "replay_clusters": replay_clusters,
        "rapid_accepted_pickups": rapid_accepted,
        "accepted_without_recent_spawn": accepted_without_spawn,
        "risk_score": risk_score,
        "risk_level": risk_level(risk_score),
        "signals": {
            "replay_cluster_count": len(replay_clusters),
            "rapid_accepted_count": len(rapid_accepted),
            "accepted_without_spawn_count": len(accepted_without_spawn),
        },
    }


def write_csv(path: str, events: Iterable[Event]) -> None:
    headers = [
        "timestamp",
        "direction",
        "packet_id",
        "payload_len",
        "payload_preview_hex",
    ]
    with open(path, "w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=headers)
        writer.writeheader()
        for e in events:
            writer.writerow(
                {
                    "timestamp": e.ts.isoformat(),
                    "direction": e.direction,
                    "packet_id": e.packet_id,
                    "payload_len": e.payload_len,
                    "payload_preview_hex": e.payload_preview_hex,
                }
            )


def write_report_md(path: str, summary: Dict[str, object]) -> None:
    lines: List[str] = []
    lines.append("# Bonus Compromise Test Report")
    lines.append("")
    lines.append(f"- Source CSV: {summary['source_csv']}")
    lines.append(f"- Generated at (UTC): {summary['generated_at_utc']}")
    lines.append("")
    lines.append("## Event Stats")
    lines.append(f"- Raw tracked events: {summary['raw_events']}")
    lines.append(f"- Deduped events: {summary['deduped_events']}")
    lines.append(f"- Pickup attempts (C->S {PICKUP_REQ_ID}): {summary['pickup_attempts']}")
    lines.append(f"- Accepted attempts (confirm/crystal observed): {summary['accepted_attempts']}")
    lines.append(f"- Rejected/unclear attempts: {summary['rejected_or_unclear_attempts']}")
    lines.append("")

    lines.append("## Attempt Correlation")
    lines.append("| req_ts | spawn_delta_ms | confirm_ts | crystal_ts | accepted |")
    lines.append("|---|---:|---|---|---|")
    for a in summary["attempts"]:
        lines.append(
            "| {req} | {delta} | {conf} | {cry} | {ok} |".format(
                req=a["req_ts"],
                delta=a["spawn_delta_ms"] if a["spawn_delta_ms"] is not None else "-",
                conf=a["confirm_ts"] or "-",
                cry=a["crystal_ts"] or "-",
                ok="yes" if a["accepted"] else "no",
            )
        )
    lines.append("")

    marker_results = summary.get("marker_results", [])
    lines.append("## Marker Evaluation")
    if marker_results:
        lines.append("| name | expected | requests | confirms | crystal_updates | accepted_by_server | pass |")
        lines.append("|---|---|---:|---:|---:|---|---|")
        for m in marker_results:
            lines.append(
                "| {name} | {expected} | {req} | {conf} | {cry} | {acc} | {ps} |".format(
                    name=m["name"],
                    expected=m["expected"],
                    req=m["requests"],
                    conf=m["confirms"],
                    cry=m["crystal_updates"],
                    acc="yes" if m["accepted_by_server"] else "no",
                    ps="PASS" if m["pass"] else "FAIL",
                )
            )
    else:
        lines.append("- No markers provided.")

    attack_surface = summary.get("attack_surface", {})
    lines.append("")
    lines.append("## Auto-pickup / Replay Signals")
    lines.append(f"- Risk score: {attack_surface.get('risk_score', 0)}")
    lines.append(f"- Risk level: {attack_surface.get('risk_level', 'low')}")
    signals = attack_surface.get("signals", {})
    lines.append(f"- Replay clusters: {signals.get('replay_cluster_count', 0)}")
    lines.append(f"- Rapid accepted pickups: {signals.get('rapid_accepted_count', 0)}")
    lines.append(f"- Accepted without recent spawn: {signals.get('accepted_without_spawn_count', 0)}")

    replay_clusters = attack_surface.get("replay_clusters", [])
    lines.append("")
    lines.append("### Replay Cluster Details")
    if replay_clusters:
        lines.append("| payload_fingerprint | count | first_ts | last_ts | window_ms | min_gap_ms |")
        lines.append("|---|---:|---|---|---:|---:|")
        for c in replay_clusters:
            lines.append(
                "| {fp} | {count} | {first} | {last} | {win} | {gap} |".format(
                    fp=c.get("payload_fingerprint", ""),
                    count=c.get("count", 0),
                    first=c.get("first_ts", "-"),
                    last=c.get("last_ts", "-"),
                    win=c.get("window_ms", 0),
                    gap=c.get("min_inter_request_gap_ms", "-"),
                )
            )
    else:
        lines.append("- No replay clusters detected.")

    lines.append("")
    lines.append("## Interpretation")
    lines.append("- accept means server-side confirm/crystal update appeared after request in configured windows.")
    lines.append("- reject/unclear means no confirm and no crystal update were seen in windows.")
    lines.append("- replay cluster means same pickup payload fingerprint was sent repeatedly in a short window.")
    lines.append("- rapid accepted pickup means server accepted request very quickly after nearest observed spawn.")

    with open(path, "w", encoding="utf-8") as f:
        f.write("\n".join(lines) + "\n")


def main() -> int:
    ap = argparse.ArgumentParser(description="Analyze bonus compromise test captures and produce pass/fail report")
    ap.add_argument("--csv", required=True, help="Input CSV from protanki_packet_watch.py")
    ap.add_argument(
        "--output-dir",
        default=r"C:\Users\Oleh\Documents\ProTanki-security\artifacts\reports",
        help="Where to write report files",
    )
    ap.add_argument("--test-name", default="bonus_compromise", help="Name suffix for output files")
    ap.add_argument("--dedup-window-ms", type=int, default=8, help="Drop duplicate frame bursts inside this window")
    ap.add_argument("--max-spawn-back-ms", type=int, default=2000, help="How far back to search nearest spawn for each request")
    ap.add_argument("--confirm-window-ms", type=int, default=700, help="Confirm search window after request")
    ap.add_argument("--crystal-window-ms", type=int, default=1200, help="Crystal update search window after request")
    ap.add_argument("--replay-window-ms", type=int, default=250, help="Window for grouping repeated pickup payload fingerprints")
    ap.add_argument("--rapid-pickup-ms", type=int, default=80, help="Threshold for suspiciously fast accepted pickup after spawn")
    ap.add_argument("--markers-json", help="Optional JSON list of test windows with expected=accept/reject")
    args = ap.parse_args()

    os.makedirs(args.output_dir, exist_ok=True)

    raw_events = parse_csv(args.csv)
    deduped = deduplicate(raw_events, args.dedup_window_ms)
    attempts = correlate_attempts(
        deduped,
        max_spawn_back_ms=args.max_spawn_back_ms,
        confirm_window_ms=args.confirm_window_ms,
        crystal_window_ms=args.crystal_window_ms,
    )

    marker_results: List[Dict[str, object]] = []
    if args.markers_json:
        markers = load_markers(args.markers_json)
        marker_results = evaluate_markers(markers, deduped)

    accepted_attempts = sum(1 for a in attempts if a.accepted)
    attack_surface = analyze_attack_surface(
        deduped,
        attempts,
        replay_window_ms=args.replay_window_ms,
        rapid_pickup_ms=args.rapid_pickup_ms,
    )

    attempt_rows = [
        {
            "req_ts": a.req_ts.isoformat(),
            "nearest_spawn_ts": a.nearest_spawn_ts.isoformat() if a.nearest_spawn_ts else None,
            "spawn_delta_ms": a.spawn_delta_ms,
            "confirm_ts": a.confirm_ts.isoformat() if a.confirm_ts else None,
            "crystal_ts": a.crystal_ts.isoformat() if a.crystal_ts else None,
            "accepted": a.accepted,
        }
        for a in attempts
    ]

    summary: Dict[str, object] = {
        "source_csv": args.csv,
        "generated_at_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "raw_events": len(raw_events),
        "deduped_events": len(deduped),
        "pickup_attempts": len(attempts),
        "accepted_attempts": accepted_attempts,
        "rejected_or_unclear_attempts": max(0, len(attempts) - accepted_attempts),
        "attempts": attempt_rows,
        "marker_results": marker_results,
        "attack_surface": attack_surface,
        "settings": {
            "dedup_window_ms": args.dedup_window_ms,
            "max_spawn_back_ms": args.max_spawn_back_ms,
            "confirm_window_ms": args.confirm_window_ms,
            "crystal_window_ms": args.crystal_window_ms,
            "replay_window_ms": args.replay_window_ms,
            "rapid_pickup_ms": args.rapid_pickup_ms,
        },
    }

    stamp = dt.datetime.now().strftime("%Y%m%d_%H%M%S")
    base = f"{args.test_name}_{stamp}"
    json_path = os.path.join(args.output_dir, base + ".json")
    md_path = os.path.join(args.output_dir, base + ".md")
    dedup_csv_path = os.path.join(args.output_dir, base + "_dedup.csv")

    write_csv(dedup_csv_path, deduped)
    with open(json_path, "w", encoding="utf-8") as f:
        json.dump(summary, f, ensure_ascii=False, indent=2)
    write_report_md(md_path, summary)

    print("[+] Done")
    print(f"[+] Dedup CSV: {dedup_csv_path}")
    print(f"[+] JSON:      {json_path}")
    print(f"[+] Report:    {md_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
