from __future__ import annotations

import os


def looks_like_ffdec_dependency_error(text: str) -> bool:
    lowered = (text or "").lower()
    return (
        "noclassdeffounderror" in lowered
        or "classnotfoundexception" in lowered
        or "could not find or load main class" in lowered
    )


def short_tail(text: str, limit: int = 2500) -> str:
    if not text or len(text) <= limit:
        return text
    return text[-limit:]


def read_env_flag(name: str, default: bool = False) -> bool:
    value = os.environ.get(name, "").strip().lower()
    if not value:
        return default
    return value in {"1", "true", "yes", "on"}


def is_xray_default_on() -> bool:
    return read_env_flag("PTP_XRAY_DEFAULT_ON", default=False)