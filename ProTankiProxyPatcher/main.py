from __future__ import annotations

import argparse
import json
import os
import shutil
import subprocess
import sys
from dataclasses import dataclass
from pathlib import Path


VALID_PLATFORMS = ("Win32", "x64")
TOOL_ROOT = Path(__file__).resolve().parent
PYTHON_ROOT = TOOL_ROOT / "python"
CPP_ROOT = TOOL_ROOT / "cpp"
DEFAULT_CONFIG_PATH = TOOL_ROOT / "build_config.json"
OUTPUT_ROOT = TOOL_ROOT / "output"


@dataclass
class PatchConfig:
    patched_swf_name: str
    xray_default_on: bool


@dataclass
class ClientConfig:
    build: bool
    platforms: list[str]


@dataclass
class BuildConfig:
    patch: PatchConfig
    client: ClientConfig


def _coerce_bool(value: object, default: bool) -> bool:
    if value is None:
        return default
    if isinstance(value, bool):
        return value
    if isinstance(value, (int, float)):
        return bool(value)
    if isinstance(value, str):
        normalized = value.strip().lower()
        if not normalized:
            return default
        if normalized in {"1", "true", "yes", "on"}:
            return True
        if normalized in {"0", "false", "no", "off"}:
            return False
    raise ValueError(f"Invalid boolean value: {value!r}")


def _sanitize_swf_name(name: str) -> str:
    normalized = Path(name.strip()).name
    if not normalized:
        raise ValueError("patched_swf_name must not be empty")
    if not normalized.lower().endswith(".swf"):
        normalized += ".swf"
    return normalized


def _normalize_platforms(platforms: list[object] | None) -> list[str]:
    if not platforms:
        return ["Win32"]
    result: list[str] = []
    for value in platforms:
        platform = str(value).strip()
        if platform not in VALID_PLATFORMS:
            raise ValueError(f"Unsupported platform: {platform}")
        if platform not in result:
            result.append(platform)
    return result


def _load_config(path: Path) -> BuildConfig:
    raw = json.loads(path.read_text(encoding="utf-8"))
    patch_raw = raw.get("patch", {}) if isinstance(raw, dict) else {}
    client_raw = raw.get("client", {}) if isinstance(raw, dict) else {}

    patch = PatchConfig(
        patched_swf_name=_sanitize_swf_name(str(patch_raw.get("patched_swf_name", "library_noclip.swf"))),
        xray_default_on=_coerce_bool(patch_raw.get("xray_default_on", False), False),
    )
    client = ClientConfig(
        build=_coerce_bool(client_raw.get("build", True), True),
        platforms=_normalize_platforms(client_raw.get("platforms", ["Win32"])),
    )
    return BuildConfig(patch=patch, client=client)


def _apply_overrides(config: BuildConfig, args: argparse.Namespace) -> BuildConfig:
    if args.swf_name:
        config.patch.patched_swf_name = _sanitize_swf_name(args.swf_name)
    if args.xray_default_on is not None:
        config.patch.xray_default_on = args.xray_default_on
    if args.platform:
        config.client.platforms = _normalize_platforms(args.platform)
    if args.patch_only:
        config.client.build = False
    return config


def _build_env(config: BuildConfig) -> dict[str, str]:
    env = os.environ.copy()
    env["PTP_PATCHED_SWF_NAME"] = config.patch.patched_swf_name
    env["PTP_XRAY_DEFAULT_ON"] = "1" if config.patch.xray_default_on else "0"
    return env


def _run_command(command: list[str], *, env: dict[str, str] | None = None) -> None:
    pretty = " ".join(f'"{part}"' if " " in part else part for part in command)
    print(f"[run] {pretty}")
    subprocess.run(command, cwd=TOOL_ROOT, env=env, check=True)


def _copy_output(source: Path, destination: Path) -> Path:
    destination.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(source, destination)
    return destination


def _prepare_patched_swf(config: BuildConfig, env: dict[str, str]) -> tuple[Path, Path]:
    prepare_script = PYTHON_ROOT / "prepare_release_assets.py"
    _run_command([sys.executable, str(prepare_script)], env=env)

    swf_path = PYTHON_ROOT / "artifacts" / "swf" / "patched" / config.patch.patched_swf_name
    if not swf_path.exists():
        raise FileNotFoundError(f"Patched SWF was not created: {swf_path}")

    copied = _copy_output(swf_path, OUTPUT_ROOT / "swf" / swf_path.name)
    return swf_path, copied


def _build_client(platform: str, config: BuildConfig) -> tuple[Path, Path]:
    powershell = shutil.which("powershell") or shutil.which("pwsh")
    if not powershell:
        raise RuntimeError("PowerShell was not found in PATH")

    build_script = CPP_ROOT / "build_client.ps1"
    command = [
        powershell,
        "-ExecutionPolicy",
        "Bypass",
        "-File",
        str(build_script),
        "-Platform",
        platform,
        "-PatchedSwfName",
        config.patch.patched_swf_name,
        "-XrayDefaultOn",
        "1" if config.patch.xray_default_on else "0",
        "-SkipPrepareSwf",
        "1",
    ]
    _run_command(command)

    exe_path = CPP_ROOT / "dist" / platform / "ProTankiProxyClient.exe"
    if not exe_path.exists():
        raise FileNotFoundError(f"Native client EXE was not created: {exe_path}")

    copied = _copy_output(exe_path, OUTPUT_ROOT / "client" / platform / "ProTankiProxyClient.exe")
    return exe_path, copied


def _write_summary(config: BuildConfig, swf_path: Path, swf_copy: Path, client_outputs: dict[str, Path]) -> Path:
    OUTPUT_ROOT.mkdir(parents=True, exist_ok=True)
    summary_path = OUTPUT_ROOT / "last_build.json"
    summary = {
        "patch": {
            "patched_swf_name": config.patch.patched_swf_name,
            "xray_default_on": config.patch.xray_default_on,
        },
        "swf": {
            "artifact": str(swf_path),
            "copy": str(swf_copy),
        },
        "client": {
            "build": config.client.build,
            "platforms": config.client.platforms,
            "copies": {platform: str(path) for platform, path in client_outputs.items()},
        },
    }
    summary_path.write_text(json.dumps(summary, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    return summary_path


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Prepare patched SWF assets and optionally rebuild the native ProTankiProxyClient.")
    parser.add_argument("--config", default=str(DEFAULT_CONFIG_PATH), help="Path to build_config.json")
    parser.add_argument("--patch-only", action="store_true", help="Only build the patched SWF, do not rebuild the native client")
    parser.add_argument("--platform", action="append", choices=VALID_PLATFORMS, help="Override target platform(s) for the native client build")
    parser.add_argument("--swf-name", help="Override the patched SWF output name")

    xray_group = parser.add_mutually_exclusive_group()
    xray_group.add_argument("--xray-default-on", dest="xray_default_on", action="store_true", help="Start xray enabled by default")
    xray_group.add_argument("--xray-default-off", dest="xray_default_on", action="store_false", help="Start xray disabled by default")
    parser.set_defaults(xray_default_on=None)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    config_path = Path(args.config).resolve()
    if not config_path.exists():
        raise FileNotFoundError(f"Config file was not found: {config_path}")

    config = _apply_overrides(_load_config(config_path), args)
    env = _build_env(config)

    print("[patcher] Starting developer-side patch/build flow")
    print(
        f"[patcher] SWF={config.patch.patched_swf_name} "
        f"xray_default={'ON' if config.patch.xray_default_on else 'OFF'}"
    )

    swf_path, swf_copy = _prepare_patched_swf(config, env)

    client_outputs: dict[str, Path] = {}
    if config.client.build:
        for platform in config.client.platforms:
            _artifact, copied = _build_client(platform, config)
            client_outputs[platform] = copied

    summary_path = _write_summary(config, swf_path, swf_copy, client_outputs)

    print(f"[patcher] SWF ready: {swf_copy}")
    for platform, copied in client_outputs.items():
        print(f"[patcher] Client ready ({platform}): {copied}")
    print(f"[patcher] Summary: {summary_path}")


if __name__ == "__main__":
    main()