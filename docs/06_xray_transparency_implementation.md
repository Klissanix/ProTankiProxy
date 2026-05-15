# XRay Static Transparency Implementation

Date: 2026-04-10
Status: WORKING (verified by user)

## Goal
Make not only vegetation transparent, but also static map geometry (houses, walls, terrain, props).

## Symptoms We Had
- Vegetation became transparent.
- Houses/walls/surfaces stayed opaque even with many texture prefixes.
- At one stage, map load failed with `prop texture error`.

## Render Pipeline Reality (Root Cause)
There are two different render paths in battle map assembly.

1. Dynamic path (sprites/some props):
- Uses `HidableObject3DWrapper` and the dynamic attach loop.
- Per-object `Object3D.alpha` is respected.

2. Static path (Mesh/BSP map geometry):
- Built in `§5214237967237980123423632234§`.
- Then passed into `KDContainer.createTree(...)`.
- In batched mode, `KDContainer` groups opaque geometry by material and merges it.
- During this merge, per-object alpha does not survive in final render behavior.

Critical evidence in decompiled hardware engine:
- `KDContainer.createTree` classifies by material transparency and batches opaque geometry.
- `KDContainer.draw` has a dedicated `if(this.batched)` path.

Result: texture-name matching alone was not enough. Static objects still rendered opaque due to batching behavior.

## Implemented Patches

### 1) Centralized texture rules
File: `scripts/proxy/xray_texture_rules.py`
- Added centralized sets:
  - `XRAY_TEXTURE_EXACT`
  - `XRAY_TEXTURE_PREFIXES`
  - `XRAY_TEXTURE_EXCLUDED_EXACT`
  - `XRAY_TEXTURE_PREFIX_BLOCKED_SUBSTRINGS`
- Added switch:
  - `XRAY_MATCH_UNKNOWN_NAMES` (currently `True` for aggressive matching/diagnostics).

### 2) XRay patch pack in transparency patch
File: `scripts/proxy/transparency_patch.py`

Patch F:
- `DefaultTextureMaterialFactory`: adds static `_xray_on_` boolean.

Patch H:
- `HidableObject3DWrapper.setAlphaMultiplier`: multiplies alpha by `XRAY_ALPHA` when xray is on.

Patch M:
- Map loader dynamic attach loop: applies alpha to objects from `§get catch dynamic§()`.
- IMPORTANT FINAL FIX: after `KDContainer.createTree(...)`, when xray is on set:
  - `this.§521423137462313759123423632234§.batched = false;`
- This is what made static geometry transparency start working in practice.

Patch S:
- Static geometry builder (`§5214237967237980123423632234§`):
  - Adds `_xrayMatchTextureName(...)` helper generated from rule sets.
  - Applies alpha to mesh/BSP objects based on texture key and resolved texture mapping.

### 3) Integration in SWF build pipeline
File: `scripts/proxy/noclip_patch.py`
- Includes `build_xray_static_geometry_text()`.
- Writes Patch S output through `write_xray_files(..., text_s)`.

## Important Bug We Hit (`prop texture error`)
Cause:
- We temporarily changed stored texture dictionary key (`§set package function§`) to non-key values (resolved url/object name fallback).
- That dictionary key is later used by texture constructors/loaders to fetch texture byte data.
- Changing it to non-native value broke material lookup and produced `prop texture error`.

Fix:
- Keep original texture key (`_loc4_`) in `§set package function§`.
- Use resolved texture names only for matching decisions, not as replacement texture keys.

## Final Working Logic
1. XRay flag ON via Patch F.
2. Dynamic objects: alpha reduced (Patch H + Patch M).
3. Static objects: alpha marked by Patch S matcher.
4. KDContainer batching disabled when xray is ON (Patch M createTree hook), so static alpha is actually visible.

## Current Runtime Setting
- `XRAY_MATCH_UNKNOWN_NAMES = True`.
- This is aggressive and can make almost all static surfaces transparent.
- Good for diagnostics and obfuscated map packs.
- Later can be tightened by setting it to `False` and refining prefix lists.

## Validation Checklist For Future Agents
1. Rebuild patched SWF.
2. Enter battle and verify static geometry (houses/walls/surfaces) is transparent, not only bushes.
3. If `prop texture error` appears:
- Re-check that `§set package function§[_loc6_]` stores original key `_loc4_`.
- Re-check no fallback/object name is written into texture-key dictionary.
4. If only vegetation is transparent again:
- Verify `KDContainer.batched = false` insertion still exists after `createTree(...)` in Patch M output.

## Notes For Further Improvement
- Current fix prioritizes correctness over potential batching performance.
- A future advanced optimization could preserve selective transparency with batching, but that requires deeper engine patching in `KDContainer` material/merge path.
