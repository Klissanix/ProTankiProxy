# Bonus Compromise Test Report

- Source CSV: artifacts\traffic\protanki_watch_146_59_110_146_25565_20260404_180956.csv
- Generated at (UTC): 2026-04-04T16:10:55.805177+00:00

## Event Stats
- Raw tracked events: 238
- Deduped events: 62
- Pickup attempts (C->S -1047185003): 5
- Accepted attempts (confirm/crystal observed): 5
- Rejected/unclear attempts: 0

## Attempt Correlation
| req_ts | spawn_delta_ms | confirm_ts | crystal_ts | accepted |
|---|---:|---|---|---|
| 2026-04-04T16:10:00.328404+00:00 | 165 | 2026-04-04T16:10:00.332697+00:00 | - | yes |
| 2026-04-04T16:10:00.805997+00:00 | 195 | 2026-04-04T16:10:00.808409+00:00 | - | yes |
| 2026-04-04T16:10:03.191477+00:00 | 371 | 2026-04-04T16:10:03.197329+00:00 | 2026-04-04T16:10:03.193999+00:00 | yes |
| 2026-04-04T16:10:03.370128+00:00 | 550 | 2026-04-04T16:10:03.377470+00:00 | 2026-04-04T16:10:03.373732+00:00 | yes |
| 2026-04-04T16:10:03.578798+00:00 | 758 | 2026-04-04T16:10:03.584884+00:00 | 2026-04-04T16:10:03.580890+00:00 | yes |

## Marker Evaluation
- No markers provided.

## Auto-pickup / Replay Signals
- Risk score: 0
- Risk level: low
- Replay clusters: 0
- Rapid accepted pickups: 0
- Accepted without recent spawn: 0

### Replay Cluster Details
- No replay clusters detected.

## Interpretation
- accept means server-side confirm/crystal update appeared after request in configured windows.
- reject/unclear means no confirm and no crystal update were seen in windows.
- replay cluster means same pickup payload fingerprint was sent repeatedly in a short window.
- rapid accepted pickup means server accepted request very quickly after nearest observed spawn.
