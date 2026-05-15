# ProTanki Technical Facts

Date: 2026-04-05

Note (2026-04-05): Noclip controls and constants evolved during live tuning.
For the current authoritative behavior (Ctrl/Shift/`/R, dynamic hull speed,
height-hold memory), use section 0 in `docs/AGENT_HANDOFF.md`.

## Bootstrap chain
1. Local AIR app starts StandaloneLoader.swf.
2. StandaloneLoader downloads Prelauncher.swf from mirror list.
3. Prelauncher downloads config.xml and reads server address/port.
4. Prelauncher loads Loader.swf and passes runtime params.
5. Loader loads library.swf and engine modules (hardware/software), then starts Game.

## Local artifacts and hashes
- StandaloneLoader.swf: D7E42BAA9BBE98BBCD3B5913A9D5F10928E6C6CA5A379E2BF7684A50F05A2C78
- ProTanki.exe: AAFF6F51F7D3C108875F2872C02E242BCEDC0BC6527C77512F47D135A7624F66
- Prelauncher.swf (mirrors): 52D93701990E2B463BC408094631C6B9C20D9EB713096033F963A5DB81274316
- Loader.swf (mirrors): D7986DCE0AAAFE2CFE6554CD03522D8DE62A1AB06E2A8BFB60660F198F1CE19C
- library.swf (mirrors): 3D9B62D7C7C337857B4CEDECB58523CFF352C1F4BEAF8579D6034CC04F760164

## Runtime endpoint
- Active TCP endpoint observed: 146.59.110.146:25565

## Mirrors found in loader code
- http://146.59.110.103
- http://194.67.196.216
- http://s.pro-tanki.com
- https://s.pro-tanki.com
- http://tankiresources.com
- https://tankiresources.com

## Observed client behavior
- Bootstrap resources are loaded from remote endpoints.
- Prelauncher and Loader use URLLoader/Loader.loadBytes with allowCodeImport=true.
- Server address and port are provided by remotely loaded config.xml.

## Battle movement and Z-state
- Client and server exchange full 3D tank state, not only X/Y: position, orientation, linear velocity and angular velocity all include Z.
- Incoming S→C packet `-64696933` applies correction state to a tank: carries `String(tank_id) + Codect348a32(state)` (4 nullable Vector3 + 1 byte control field) → position/orientation/linear_vel/angular_vel.
- Before applying incoming correction state, client blends current and incoming with factor `0.5` (code-confirmed). This is the source of visible jitter on remote tanks.
- Local post-physics watchdog forces resync on divergence: XY drift > ~500, Z drift > 200, timeout ~2 s, or contact/movement state change.
- `StateCorrectionEvent` in client code is a local trigger to send/refresh full state around important game events — NOT a server-originated correction packet.

## Collision system and noclip (verified 2026-04-05, final state)

### Collision groups
- All map geometry (floor, walls, obstacles): **collisionGroup = 255** (all bits set).
- Live tank: **collisionGroup = 11** (1|2|8). Dead tank = 1.
- Contact check: `(groupA & groupB) != 0`. Setting tank group to 0 disables all collisions.

### Physics authority
- Physics runs **client-side only**. Server accepts any position unless XY drift > ~500, Z drift > 200.

### SWF hot-patch system — `scripts/proxy/noclip_patch.py`
Five AS3 text patches applied at proxy startup via `FFDec -importscript`. Speed constants editable at top of file.

| Patch | File | What it does |
|---|---|---|
| **A** | `§package package false§/§static set true§.as` | After `getContacts()`, drops contacts with static body AND `\|normalZ\| < 0.7` (walls). Keeps floor contacts. If any contact dropped: clamp `linearVelocity.z >= 0` (no fall). |
| **B** | `§5214238361238374§/§5214239411239424§.as` | `runAfterPhysicsUpdate` — guarded by `this.local` (no effect on remote tanks): zeros `angularVelocity.x/y`; Ctrl → `linearVelocity.z = 300`; computes forward vector from quaternion, applies 800 u/s on W/S and 1.5 rad/s on A/D regardless of grounding. |
| **C** | `§5214232446232459§/§if for switch§.as` | Adds 5 static flags to DriveController: `_noclip_boost_`, `_noclip_fwd_`, `_noclip_bwd_`, `_noclip_lft_`, `_noclip_rgt_`. |
| **D** | `§5214232446232459§/§5214234677234690§.as` | In `§each const break§` before `!_loc5_ return`: `keyCode==17` → `_noclip_boost_`; reads `GameActionEnum.CHASSIS_*` → direction flags. |
| **E** | (same file as C) | DriveController movement update: `if(isGrounded \|\| _noclip_boost_)` — forces applied even without ground contact. |

### Key identifiers
| Symbol | Meaning |
|---|---|
| `§var switch include§` | CollisionDetector dispatch method (Patch A insertion point) |
| `§5214233761233774§` | ContactPoint.normal (Vector3) |
| `§5214238823101§` | ContactPoint.recycle() |
| `§5214232783232796§` | CollisionShape.body → RigidBody ref |
| `§set for implements§` | RigidBody.isDynamic (bool) |
| `§implements for break§` | TankEntity.bodyWrapper |
| `§implements catch catch§` | RigidBody.bodyState (`§catch for in§`) |
| `§get var dynamic§` | BodyState.angularVelocity (Vector3) |
| `§native use function§` | BodyState.linearVelocity (Vector3) |
| `§try switch true§` | BodyState.quaternion (orientation) |
| `§if for switch§` | DriveController class (shared flag host) |
| `§each const break§` | TankInputController keyDown/keyUp handler |
| `§5214232330232343§` | Ground-check object in DriveController |
| `§use catch get§` | isGrounded() on ground-check object |
| `§continue set super§` | DriveController movement update (Patch E target) |

### Result (confirmed in-game)
- Tank passes through walls and obstacles freely.
- Tank-vs-tank collisions unaffected (both bodies dynamic → filter skipped).
- Tank cannot flip (angular velocity X/Y zeroed every physics tick, local only).
- **WASD** — movement and turning work at all times (ground and air), no Ctrl required.
- **Left Ctrl** held → tank rises at 300 u/s (speedhack upward).
- **W/S in air** → 800 u/s in tank's facing direction (speedhack, server accepts client physics).
- Remote tanks not affected (all velocity overrides gated on `this.local`).

## SWF hot-patching via HTTP proxy (verified 2026-04-05)
- `146.59.110.103` is on loopback during MITM → HTTP proxy cannot forward to it (deadlock). Solution: forward all non-intercepted requests to `194.67.196.216` (same CDN, not on loopback).
- StandaloneLoader tries mirrors in order: `146.59.110.103`, `194.67.196.216`, `s.pro-tanki.com`... A 502 on Prelauncher causes fallback to next mirror → library.swf fetched from uncontrolled host → patch not applied.
- Correct flow: proxy serves ALL SWFs from config-HTTP server. `/library.swf` → patched; everything else → proxied to `194.67.196.216:80`.
- `scripts/proxy/noclip_patch.py`: patches `§static set true§.as`, runs FFDec `importscript`, caches result in-process. Must be called at proxy **startup** (before game launch) — not lazily on first HTTP request — because FFDec takes ~30 s and the game would time out.
- Turret independence: separate packet `-1749108178` (`int tick + short flags + byte control`) exists for turret-only state. No separate world-position field for turret in any packet — turret world position = hull position + Z-rotation only.
