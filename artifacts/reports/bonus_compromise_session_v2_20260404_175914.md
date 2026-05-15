# Bonus Compromise Test Report

- Source CSV: artifacts\traffic\protanki_watch_146_59_110_146_25565_20260404_173904.csv
- Generated at (UTC): 2026-04-04T15:59:14.282270+00:00

## Event Stats
- Raw tracked events: 254
- Deduped events: 68
- Pickup attempts (C->S -1047185003): 3
- Accepted attempts (confirm/crystal observed): 3
- Rejected/unclear attempts: 0

## Attempt Correlation
| req_ts | spawn_delta_ms | confirm_ts | crystal_ts | accepted |
|---|---:|---|---|---|
| 2026-04-04T15:39:10.764448+00:00 | 12 | 2026-04-04T15:39:10.767110+00:00 | 2026-04-04T15:39:11.126540+00:00 | yes |
| 2026-04-04T15:39:11.122390+00:00 | 63 | 2026-04-04T15:39:11.130188+00:00 | 2026-04-04T15:39:11.126540+00:00 | yes |
| 2026-04-04T15:39:11.249037+00:00 | 190 | 2026-04-04T15:39:11.255065+00:00 | 2026-04-04T15:39:11.251449+00:00 | yes |

## Marker Evaluation
| name | expected | requests | confirms | crystal_updates | accepted_by_server | pass |
|---|---|---:|---:|---:|---|---|
| baseline_legit_pickup | accept | 3 | 3 | 2 | yes | PASS |
| early_pickup_before_spawn | reject | 0 | 0 | 0 | no | PASS |
| replay_same_bonus_id | reject | 0 | 0 | 0 | no | PASS |
| random_or_stale_bonus_id | reject | 0 | 0 | 0 | no | PASS |

## Auto-pickup / Replay Signals
- Risk score: 6
- Risk level: medium
- Replay clusters: 0
- Rapid accepted pickups: 2
- Accepted without recent spawn: 0

### Replay Cluster Details
- No replay clusters detected.

## Interpretation
- accept means server-side confirm/crystal update appeared after request in configured windows.
- reject/unclear means no confirm and no crystal update were seen in windows.
- replay cluster means same pickup payload fingerprint was sent repeatedly in a short window.
- rapid accepted pickup means server accepted request very quickly after nearest observed spawn.
