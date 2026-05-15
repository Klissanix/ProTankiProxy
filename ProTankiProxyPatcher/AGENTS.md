# ProTankiProxyPatcher Agents Notes

## Scope

This folder is the isolated umbrella workspace for the current ProTanki patch/build flow.

- `python/` contains the developer-side Python patch pipeline.
- `cpp/` contains the native launcher that embeds the prepared SWF.
- `main.py` at the root orchestrates both.

## Preferred Entry Points

- Use `main.py` in this folder for end-to-end patch/build work.
- Default to a full rebuild via `main.py`; do not stop at `--patch-only` unless the user explicitly asks for SWF-only work.
- Use `python/prepare_release_assets.py` only for SWF-only preparation.
- Use `cpp/build_client.ps1` only when you explicitly want to rebuild the native client directly.

## Build Assumptions

- Java + FFDec are developer-machine dependencies for SWF patching.
- CMake + MSVC toolchain are developer-machine dependencies for C++ builds.
- Player-facing runtime stays C++ only.

## Current Build-Time Selectors

- `PTP_PATCHED_SWF_NAME`
- `PTP_XRAY_DEFAULT_ON`

These are already wired through the umbrella patcher and local copied projects.

## Non-Goals For Now

- Do not assume noclip/freecam/auto-pickup are independently toggleable at build time yet.

## Output Paths

- `output/swf/`
- `output/client/`
- `output/last_build.json`