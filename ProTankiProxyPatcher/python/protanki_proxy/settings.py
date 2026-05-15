from __future__ import annotations

import json
from dataclasses import dataclass
from pathlib import Path

from .constants import SETTINGS_FILE_NAME
from .runtime_paths import get_runtime_root


def _coerce_bool(value: object, *, default: bool) -> bool:
    if isinstance(value, bool):
        return value
    if isinstance(value, (int, float)):
        return bool(value)
    if isinstance(value, str):
        raw = value.strip().lower()
        if raw in {"1", "true", "yes", "on"}:
            return True
        if raw in {"0", "false", "no", "off"}:
            return False
    return default


@dataclass(frozen=True)
class AppSettings:
    auto_launch_game: bool = True
    hide_console: bool = True
    game_path: str = ""


def get_settings_path() -> Path:
    return get_runtime_root() / SETTINGS_FILE_NAME


def _write_default_settings(path: Path, settings: AppSettings, *, verbose: bool = True) -> None:
    payload = {
        "auto_launch_game": settings.auto_launch_game,
        "hide_console": settings.hide_console,
        "game_path": settings.game_path,
    }
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, ensure_ascii=True, indent=2) + "\n", encoding="utf-8")
    if verbose:
        print(f"[+] Created default settings file: {path}")


def load_settings(*, verbose: bool = True) -> AppSettings:
    defaults = AppSettings()
    path = get_settings_path()
    try:
        text = path.read_text(encoding="utf-8")
    except FileNotFoundError:
        if verbose:
            print(f"[!] Settings file not found: {path}. Creating with defaults.")
        _write_default_settings(path, defaults, verbose=verbose)
        return defaults
    except OSError as exc:
        if verbose:
            print(f"[!] Failed to read settings file {path}: {exc}. Using defaults.")
        return defaults

    try:
        data = json.loads(text)
    except json.JSONDecodeError as exc:
        if verbose:
            print(f"[!] Invalid JSON in settings file {path}: {exc}. Resetting to defaults.")
        _write_default_settings(path, defaults, verbose=verbose)
        return defaults

    if not isinstance(data, dict):
        if verbose:
            print(f"[!] Settings file must contain a JSON object: {path}. Resetting to defaults.")
        _write_default_settings(path, defaults, verbose=verbose)
        return defaults

    return AppSettings(
        auto_launch_game=_coerce_bool(data.get("auto_launch_game"), default=defaults.auto_launch_game),
        hide_console=_coerce_bool(data.get("hide_console"), default=defaults.hide_console),
        game_path=str(data.get("game_path", defaults.game_path) or "").strip(),
    )
