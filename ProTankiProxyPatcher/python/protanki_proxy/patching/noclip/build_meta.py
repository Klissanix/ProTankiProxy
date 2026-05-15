from __future__ import annotations

import hashlib
import json
from pathlib import Path

from .ffdec_runtime import OUT_SWF

PATCH_BUILD_VERSION = 5
OUT_SWF_META = OUT_SWF.with_suffix(".build.json")


def patch_sources_signature() -> str:
    hasher = hashlib.sha256()
    patching_dir = Path(__file__).resolve().parents[1]
    source_paths = [
        path
        for path in sorted(patching_dir.rglob("*.py"))
        if "__pycache__" not in path.parts
    ]
    for source_path in source_paths:
        hasher.update(str(source_path.relative_to(patching_dir)).encode("utf-8"))
        hasher.update(source_path.read_bytes())
    return hasher.hexdigest()[:16]


def expected_build_meta(*, xray_default_on: bool) -> dict[str, object]:
    return {
        "patch_build_version": PATCH_BUILD_VERSION,
        "patch_sources_signature": patch_sources_signature(),
        "xray_default_on": xray_default_on,
    }


def read_build_meta() -> dict[str, object] | None:
    if not OUT_SWF_META.exists():
        return None
    try:
        data = json.loads(OUT_SWF_META.read_text(encoding="utf-8"))
    except Exception:
        return None
    return data if isinstance(data, dict) else None


def build_meta_matches(*, xray_default_on: bool) -> bool:
    return read_build_meta() == expected_build_meta(xray_default_on=xray_default_on)


def write_build_meta(*, xray_default_on: bool) -> None:
    OUT_SWF_META.parent.mkdir(parents=True, exist_ok=True)
    OUT_SWF_META.write_text(
        json.dumps(
            expected_build_meta(xray_default_on=xray_default_on),
            indent=2,
            sort_keys=True,
        )
        + "\n",
        encoding="utf-8",
    )