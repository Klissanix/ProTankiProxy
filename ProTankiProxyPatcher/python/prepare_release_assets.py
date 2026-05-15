from __future__ import annotations

from pathlib import Path

from protanki_proxy.patching.noclip_patch import get_patched_swf


def main() -> None:
    path = get_patched_swf()
    size = path.stat().st_size if path.exists() else 0
    print(f"[prepare] Prebuilt patched SWF ready: {path} ({size} bytes)")


if __name__ == "__main__":
    main()
