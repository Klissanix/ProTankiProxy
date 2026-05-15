from __future__ import annotations

import os
import shutil
import sys
from pathlib import Path

_LIBRARY_SWF_NAME = "146.59.110.103__library.swf"
_PATCHED_LIBRARY_SWF_NAME = "library_noclip.swf"


def is_frozen() -> bool:
    return bool(getattr(sys, "frozen", False))


def get_runtime_root() -> Path:
    """Directory where runtime artifacts and settings should be stored."""
    if is_frozen():
        return Path(sys.executable).resolve().parent
    return Path(__file__).resolve().parents[1]


def get_repo_root() -> Path:
    return Path(__file__).resolve().parents[2]


def get_bundle_root() -> Path:
    """Directory where bundled data is available (PyInstaller _MEIPASS)."""
    meipass = getattr(sys, "_MEIPASS", None)
    if meipass:
        return Path(meipass)
    return get_runtime_root()


def get_artifacts_dir() -> Path:
    return get_runtime_root() / "artifacts"


def get_traffic_dir() -> Path:
    return get_artifacts_dir() / "traffic"


def get_swf_remote_dir() -> Path:
    return get_artifacts_dir() / "swf" / "remote"


def get_swf_patched_dir() -> Path:
    return get_artifacts_dir() / "swf" / "patched"


def get_decompiled_scripts_dir() -> Path:
    return get_artifacts_dir() / "swf" / "decompiled_library" / "scripts"


def get_remote_library_swf() -> Path:
    return get_swf_remote_dir() / _LIBRARY_SWF_NAME


def get_patched_library_swf_name() -> str:
    raw_name = os.environ.get("PTP_PATCHED_SWF_NAME", "").strip()
    if not raw_name:
        return _PATCHED_LIBRARY_SWF_NAME
    normalized = Path(raw_name).name.strip()
    return normalized or _PATCHED_LIBRARY_SWF_NAME


def get_patched_library_swf() -> Path:
    return get_swf_patched_dir() / get_patched_library_swf_name()


def get_bundled_patched_library_swf() -> Path:
    return _first_existing("swf", "patched", get_patched_library_swf_name())


def _artifact_roots() -> list[Path]:
    roots = [
        get_artifacts_dir(),
        get_repo_root() / "artifacts",
        get_bundle_root() / "artifacts",
    ]
    unique: list[Path] = []
    seen: set[str] = set()
    for root in roots:
        key = str(root.resolve()) if root.exists() else str(root)
        if key not in seen:
            seen.add(key)
            unique.append(root)
    return unique


def _first_existing(*parts: str) -> Path:
    for root in _artifact_roots():
        candidate = root.joinpath(*parts)
        if candidate.exists():
            return candidate
    return get_bundle_root() / "artifacts" / Path(*parts)


def get_bundled_remote_library_swf() -> Path:
    return _first_existing("swf", "remote", _LIBRARY_SWF_NAME)


def get_bundled_decompiled_scripts_dir() -> Path:
    fallback = get_bundle_root() / "artifacts" / "swf" / "decompiled_library" / "scripts"
    for root in _artifact_roots():
        candidate = root / "swf" / "decompiled_library" / "scripts"
        if candidate.is_dir():
            try:
                next(candidate.iterdir())
            except StopIteration:
                continue
            return candidate
    return fallback


def find_bundled_decompiled_script(pkg: str, file_name: str) -> Path:
    for root in _artifact_roots():
        candidate = root / "swf" / "decompiled_library" / "scripts" / pkg / file_name
        if candidate.exists():
            return candidate
    return get_bundle_root() / "artifacts" / "swf" / "decompiled_library" / "scripts" / pkg / file_name


def ensure_runtime_dirs() -> None:
    get_traffic_dir().mkdir(parents=True, exist_ok=True)
    get_swf_remote_dir().mkdir(parents=True, exist_ok=True)
    get_swf_patched_dir().mkdir(parents=True, exist_ok=True)


def copy_bundled_file_if_missing(target: Path, bundled_source: Path) -> bool:
    if target.exists() or not bundled_source.exists():
        return False
    target.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(bundled_source, target)
    return True
