from __future__ import annotations

import shutil
import sys
from pathlib import Path

_LIBRARY_SWF_NAME = "146.59.110.103__library.swf"


def is_frozen() -> bool:
    return bool(getattr(sys, "frozen", False))


def get_runtime_root() -> Path:
    """Directory where runtime artifacts should be stored."""
    if is_frozen():
        return Path(sys.executable).resolve().parent
    return Path(__file__).resolve().parents[2]


def get_bundle_root() -> Path:
    """Directory where bundled data is available (PyInstaller _MEIPASS)."""
    meipass = getattr(sys, "_MEIPASS", None)
    if meipass:
        return Path(meipass)
    return Path(__file__).resolve().parents[2]


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


def get_patched_library_swf() -> Path:
    return get_swf_patched_dir() / "library_noclip.swf"


def get_bundled_remote_library_swf() -> Path:
    return get_bundle_root() / "artifacts" / "swf" / "remote" / _LIBRARY_SWF_NAME


def get_bundled_decompiled_scripts_dir() -> Path:
    return get_bundle_root() / "artifacts" / "swf" / "decompiled_library" / "scripts"


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
