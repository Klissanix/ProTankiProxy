# Runtime Bonus Packet Facts (2026-04-04)

## Capture artifacts
- ETL: artifacts/traffic/pktmon_146.59.110.146_25565_20260404_173323.etl
- PCAPNG: artifacts/traffic/pktmon_146.59.110.146_25565_20260404_173323.pcapng
- Parsed CSV: artifacts/traffic/protanki_watch_146_59_110_146_25565_20260404_173904.csv
- Parsed JSONL: artifacts/traffic/protanki_watch_146_59_110_146_25565_20260404_173904.jsonl

## Packet IDs in bonus flow
- 1831462385: bonus spawn (S->C)
- -1047185003: bonus pickup request (C->S)
- -1291499147: bonus taken confirm (S->C)
- -2026749922: bonus remove (S->C)
- -593513288: crystal balance update (S->C)
- 1149211509: battle fund change (S->C)

## Raw parsed counts (not deduplicated)
- -1047185003 C->S: 6
- -1291499147 S->C: 36
- 1831462385 S->C: 56
- -2026749922 S->C: 16
- 1149211509 S->C: 120
- -593513288 S->C: 20

## Observed timeline fragments
- 15:39:10.751Z: spawn (1831462385)
- 15:39:10.764Z: pickup request (-1047185003)
- 15:39:10.767Z: taken confirm (-1291499147)
- 15:39:11.058Z: spawn (1831462385)
- 15:39:11.122Z: pickup request (-1047185003)
- 15:39:11.130Z: taken confirm (-1291499147)

## Deduplication note
- PktMon output contains repeated frames for the same logical event.
- Event counting should use deduplicated timelines.
