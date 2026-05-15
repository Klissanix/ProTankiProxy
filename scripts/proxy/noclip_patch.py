"""
noclip_patch.py – builds patched library.swf (wall noclip + air controls + freecam) via FFDec.
Applies patches (A-G) and recompiles with FFDec -importscript.

Patch A (CollisionDetector):
    - removes static wall contacts with |normal.z| < 0.7;
    - keeps floor contacts so gravity still works;
    - clamps dynamic body lv.z >= 0 when contacts were dropped.

Patch B (TankEntity.runAfterPhysicsUpdate, local tank only):
    - selective anti-flip: blocks angular X/Y only if rotation worsens tilt;
    - R held: proportional leveling + velocity damping;
    - Ctrl/Shift: vertical movement ±BOOST_SPEED;
    - ` (backquote) toggles height hold; hold remembers new height while Ctrl/Shift
        are pressed and keeps that height after release;
    - W/S air movement uses forward vector and dynamic hull speed from
        TankSpecification.speed (converted with BattleUtils.toClientScale);
    - A/D controls yaw angular velocity.

Patch C (DriveController):
    - adds shared static flags: boost/down/hold/level and W/S/A/D states.
    - adds freecam state: _freecam_active_, _freecam_ctrl_.

Patch D (TankInputController):
    - F7 (keyCode 118) toggles spectator camera mode (free-roam with mouse+WASD);
    - WASD input blocked when freecam is active (tank movement frozen);
    - key handlers before !_loc5_ return:
            Ctrl (17), Shift (16), ` (192), R (82);
    - mirrors GameActionEnum CHASSIS_* to movement/turn flags.

Patch E (DriveController movement gate):
    - bypasses ground-only gate for _noclip_boost_ OR _noclip_hold_active_.

Patch G (SpectatorCameraController):
    - increases camera flight speed from 1300 to 3500 units/frame.

Patch P (TankEntity.runAfterPhysicsUpdate, pickup loop — inserted before freecam block):
    - F6 (keyCode 117) toggles DriveController._pickup_enabled_ (added by Patch C/D);
    - each physics tick iterates BonusCommonModel.BattleService.§native catch try§.bonuses;
    - calls onTankCollision(bonus) for bonuses within PICKUP_RADIUS (XY plane);
    - does not force local pickup/remove; visuals update only after server confirmation.
    Works in both proxy and SWF-only modes.

Key identifiers below remain version-specific to the current library.swf build.
"""
from __future__ import annotations

import os
import shutil
import subprocess
import tempfile
from pathlib import Path

from .runtime_paths import (
    copy_bundled_file_if_missing,
    ensure_runtime_dirs,
    get_bundled_decompiled_scripts_dir,
    get_bundled_remote_library_swf,
    get_decompiled_scripts_dir,
    get_patched_library_swf,
    get_remote_library_swf,
    get_runtime_root,
    get_bundle_root,
)

# ── Tool / file locations ───────────────────────────────────────────────────


def _looks_like_ffdec_dependency_error(text: str) -> bool:
    t = (text or "").lower()
    return (
        "noclassdeffounderror" in t
        or "classnotfoundexception" in t
        or "could not find or load main class" in t
    )


def _short_tail(text: str, limit: int = 2500) -> str:
    if not text:
        return ""
    if len(text) <= limit:
        return text
    return text[-limit:]


def _resolve_java_executable(verbose: bool = False) -> Path | None:
    # Explicit JAVA_HOME first.
    java_home = os.environ.get("JAVA_HOME", "").strip()
    if verbose:
        if java_home:
            print(f"[noclip][java] JAVA_HOME is set: {java_home}")
        else:
            print("[noclip][java] JAVA_HOME is not set")
    if java_home:
        candidate = Path(java_home).expanduser() / "bin" / "java.exe"
        if candidate.exists():
            if verbose:
                print(f"[noclip][java] Found java via JAVA_HOME: {candidate}")
            return candidate
        if verbose:
            print(f"[noclip][java] JAVA_HOME/bin/java.exe not found: {candidate}")

    # PATH lookup.
    java_on_path = shutil.which("java")
    if java_on_path:
        if verbose:
            print(f"[noclip][java] Found java via PATH: {java_on_path}")
        return Path(java_on_path)
    if verbose:
        print("[noclip][java] java.exe is not available in PATH")

    # Common Windows install locations (helps after fresh install in same process).
    patterns = [
        Path(r"C:\Program Files\Eclipse Adoptium"),
        Path(r"C:\Program Files\Java"),
        Path(r"C:\Program Files\Microsoft"),
        Path(r"C:\Program Files\Zulu"),
    ]
    candidates: list[Path] = []
    for root in patterns:
        if root.exists():
            candidates.extend(root.rglob("java.exe"))
    if not candidates:
        if verbose:
            print("[noclip][java] No java.exe found in common install folders")
        return None
    # Prefer shortest path (usually top-level JDK bin).
    winner = min(candidates, key=lambda p: len(str(p)))
    if verbose:
        print(f"[noclip][java] Found java via folder scan: {winner}")
    return winner


def _java_works(java_exe: Path, verbose: bool = False) -> bool:
    try:
        probe = subprocess.run(
            [str(java_exe), "-version"],
            capture_output=True,
            text=True,
            timeout=20,
        )
    except Exception as exc:
        if verbose:
            print(f"[noclip][java] Failed to run '{java_exe} -version': {exc}")
        return False
    if probe.returncode != 0:
        if verbose:
            details = _short_tail(f"{probe.stdout or ''}\n{probe.stderr or ''}")
            print(f"[noclip][java] java -version failed (rc={probe.returncode})")
            if details.strip():
                print(details)
        return False
    if verbose:
        version_text = (probe.stderr or probe.stdout or "").strip().splitlines()
        version_line = version_text[0] if version_text else "version output is empty"
        print(f"[noclip][java] java -version OK: {version_line}")
    return True


def _install_java_with_winget() -> bool:
    def _bootstrap_winget() -> bool:
        powershell = shutil.which("powershell") or shutil.which("pwsh")
        if not powershell:
            print("[noclip][java] Cannot bootstrap winget: PowerShell executable was not found")
            return False
        script = (
            "$ProgressPreference='SilentlyContinue'; "
            "Install-PackageProvider -Name NuGet -Force | Out-Null; "
            "Install-Module -Name Microsoft.WinGet.Client -Force -Repository PSGallery | Out-Null; "
            "Repair-WinGetPackageManager -Force -Latest | Out-Null"
        )
        print("[noclip][java] winget not found. Trying to bootstrap winget (NuGet + Microsoft.WinGet.Client) ...")
        print("[noclip][java] This step needs admin rights and can take a few minutes")
        try:
            result = subprocess.run(
                [powershell, "-NoProfile", "-ExecutionPolicy", "Bypass", "-Command", script],
                capture_output=True,
                text=True,
                timeout=900,
            )
        except subprocess.TimeoutExpired:
            print("[noclip][java] winget bootstrap timed out")
            return False
        except Exception as exc:
            print(f"[noclip][java] winget bootstrap failed to start: {exc}")
            return False
        if result.returncode != 0:
            out = _short_tail(result.stdout or "")
            err = _short_tail(result.stderr or "")
            print(f"[noclip][java] winget bootstrap failed (rc={result.returncode})")
            if out:
                print(out)
            if err:
                print(err)
            return False
        print("[noclip][java] winget bootstrap finished")
        return True

    winget = shutil.which("winget")
    if not winget:
        if _bootstrap_winget():
            winget = shutil.which("winget")
        if not winget:
            print("[noclip][java] winget still not available after bootstrap")
            print("[noclip][java] Manual fallback: install Microsoft App Installer and rerun proxy")
            return False
    print(f"[noclip][java] Using winget: {winget}")

    package_ids = [
        "EclipseAdoptium.Temurin.21.JDK",
        "Microsoft.OpenJDK.21",
    ]
    for pkg in package_ids:
        print(f"[noclip][java] Installing Java via winget: {pkg}")
        try:
            result = subprocess.run(
                [
                    winget,
                    "install",
                    "--id", pkg,
                    "-e",
                    "--accept-source-agreements",
                    "--accept-package-agreements",
                    "--silent",
                ],
                capture_output=True,
                text=True,
                timeout=900,
            )
        except subprocess.TimeoutExpired:
            print(f"[noclip][java] winget install timed out for {pkg}")
            continue
        except Exception as exc:
            print(f"[noclip][java] winget install failed to start for {pkg}: {exc}")
            continue
        if result.returncode == 0:
            print(f"[noclip][java] Java installation succeeded via {pkg}")
            return True

        out = _short_tail(result.stdout or "")
        err = _short_tail(result.stderr or "")
        print(f"[noclip][java] winget install failed for {pkg} (rc={result.returncode})")
        if out:
            print(out)
        if err:
            print(err)
        print("[noclip][java] Trying next Java package candidate ...")
    return False


def ensure_java_runtime() -> Path:
    """
    Ensure Java runtime exists and is runnable.
    Attempts automatic install via winget if missing.
    """
    print("[noclip][java] Step 1/3: detecting Java runtime ...")
    java_exe = _resolve_java_executable(verbose=True)
    if java_exe and _java_works(java_exe, verbose=True):
        print(f"[noclip][java] Java runtime is ready: {java_exe}")
        return java_exe

    if java_exe:
        print(f"[noclip][java] Found Java candidate but it is not runnable: {java_exe}")
    print("[noclip][java] Step 2/3: Java runtime not ready. Starting automatic install ...")
    installed = _install_java_with_winget()
    if installed:
        print("[noclip][java] Step 3/3: re-checking Java after install ...")
        java_exe = _resolve_java_executable(verbose=True)
        if java_exe and _java_works(java_exe, verbose=True):
            print(f"[noclip][java] Java ready: {java_exe}")
            return java_exe

    raise RuntimeError(
        "Java runtime is missing and auto-install failed.\n"
        "What to do next:\n"
        "1) Install Microsoft App Installer (winget provider), then rerun proxy.\n"
        "2) Or install Java manually: Temurin JDK 21 x64.\n"
        "3) After install, restart proxy and verify 'java -version' works."
    )

def _resolve_ffdec_jar() -> Path:
    env_jar = os.environ.get("FFDEC_JAR", "").strip()
    candidates: list[Path] = []
    if env_jar:
        candidates.append(Path(env_jar).expanduser())

    runtime_root = get_runtime_root()
    bundle_root = get_bundle_root()
    runtime_ffdec_dir = runtime_root / "ffdec"
    bundle_ffdec_dir = bundle_root / "ffdec"
    if runtime_ffdec_dir.exists():
        candidates.extend(sorted(runtime_ffdec_dir.rglob("ffdec.jar")))
    if bundle_ffdec_dir.exists():
        candidates.extend(sorted(bundle_ffdec_dir.rglob("ffdec.jar")))
    candidates.extend(
        [
            runtime_root / "ffdec" / "ffdec.jar",
            runtime_root / "ffdec.jar",
            bundle_root / "ffdec.jar",
            bundle_root / "ffdec" / "ffdec.jar",
            Path(r"C:\Program Files (x86)\FFDec\ffdec.jar"),
            Path(r"C:\Program Files\FFDec\ffdec.jar"),
        ]
    )

    for candidate in candidates:
        if candidate.exists():
            return candidate
    return candidates[0]


FFDEC_JAR = _resolve_ffdec_jar()

SOURCE_SWF = get_remote_library_swf()
SCRIPTS_DIR = get_decompiled_scripts_dir()
OUT_SWF = get_patched_library_swf()


def _ensure_source_swf() -> Path:
    ensure_runtime_dirs()
    bundled = get_bundled_remote_library_swf()
    if copy_bundled_file_if_missing(SOURCE_SWF, bundled):
        print(f"[noclip] Copied source SWF to runtime folder: {SOURCE_SWF}")
    if not SOURCE_SWF.exists():
        raise FileNotFoundError(
            "Source library.swf was not found. "
            f"Expected: {SOURCE_SWF}"
        )
    return SOURCE_SWF


def _ensure_patch_script(pkg: str, file_name: str) -> Path:
    runtime_file = SCRIPTS_DIR / pkg / file_name
    if runtime_file.exists():
        return runtime_file

    bundled_file = get_bundled_decompiled_scripts_dir() / pkg / file_name
    if bundled_file.exists():
        runtime_file.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(bundled_file, runtime_file)
        return runtime_file

    raise FileNotFoundError(
        "Required decompiled ActionScript file was not found. "
        f"Expected: {runtime_file}"
    )


def get_source_swf() -> Path:
    """Return original library.swf path, ensuring runtime copy exists."""
    return _ensure_source_swf()


def _download_ffdec(dest_dir: Path) -> Path:
    """
    Download full official FFDec package from latest JPEXS release into dest_dir.
    Returns path to extracted ffdec.jar.
    """
    import io
    import json
    import urllib.request
    import zipfile

    api_url = "https://api.github.com/repos/jindrapetrik/jpexs-decompiler/releases/latest"
    req = urllib.request.Request(api_url, headers={"User-Agent": "ProTanki-proxy/1.0"})
    with urllib.request.urlopen(req, timeout=15) as resp:
        release = json.loads(resp.read())

    zip_url = None
    zip_name = None
    for asset in release.get("assets", []):
        name = asset.get("name", "")
        lname = name.lower()
        if (
            lname.endswith(".zip")
            and "ffdec" in lname
            and "source" not in lname
            and "src" not in lname
        ):
            zip_url = asset["browser_download_url"]
            zip_name = name
            break

    if not zip_url:
        raise RuntimeError("FFDec zip asset not found in latest GitHub release")

    print(f"[noclip][ffdec] Downloading {zip_name} from GitHub releases ...")
    req2 = urllib.request.Request(zip_url, headers={"User-Agent": "ProTanki-proxy/1.0"})
    with urllib.request.urlopen(req2, timeout=120) as resp:
        zip_data = resp.read()
    print(f"[noclip][ffdec] Download complete ({len(zip_data) // 1024} KB)")

    if dest_dir.exists():
        shutil.rmtree(dest_dir, ignore_errors=True)
    dest_dir.mkdir(parents=True, exist_ok=True)

    with zipfile.ZipFile(io.BytesIO(zip_data)) as zf:
        for info in zf.infolist():
            entry = info.filename.replace("\\", "/")
            if not entry:
                continue
            target = (dest_dir / entry).resolve()
            if not str(target).startswith(str(dest_dir.resolve())):
                raise RuntimeError(f"Unsafe path in FFDec zip: {entry}")
            if info.is_dir():
                target.mkdir(parents=True, exist_ok=True)
                continue
            target.parent.mkdir(parents=True, exist_ok=True)
            with zf.open(info) as src, open(target, "wb") as dst:
                shutil.copyfileobj(src, dst)

    jar_candidates = sorted(dest_dir.rglob("ffdec.jar"))
    if not jar_candidates:
        raise RuntimeError("ffdec.jar not found inside downloaded FFDec package")

    jar_dest = min(jar_candidates, key=lambda p: len(p.parts))
    print(f"[noclip][ffdec] FFDec installed: {jar_dest}")
    return jar_dest


def ensure_ffdec_jar(force_reinstall: bool = False) -> Path:
    """
    Return path to ffdec.jar, installing official package if needed.
    Saves to <runtime_root>/ffdec on first run.
    """
    if not force_reinstall:
        jar = _resolve_ffdec_jar()
        if jar.exists():
            print(f"[noclip][ffdec] Found ffdec.jar: {jar}")
            return jar

    # Keep FFDec package in a dedicated folder with all dependencies.
    install_dir = get_runtime_root() / "ffdec"
    if force_reinstall:
        print("[noclip][ffdec] Reinstalling FFDec package (dependency mismatch detected)")
    else:
        print("[noclip][ffdec] ffdec.jar not found. Installing FFDec package ...")
    return _download_ffdec(install_dir)


def _run_ffdec_importscript(
    java_exe: Path,
    ffdec_jar: Path,
    source_swf: Path,
    out_swf: Path,
    script_dir: Path,
) -> subprocess.CompletedProcess:
    return subprocess.run(
        [
            str(java_exe), "-jar", str(ffdec_jar),
            "-importscript",
            str(source_swf),
            str(out_swf),
            str(script_dir),
        ],
        capture_output=True,
        text=True,
        timeout=180,
        cwd=str(ffdec_jar.parent),
    )


def _retry_with_reinstalled_ffdec(ffdec_jar: Path, result: subprocess.CompletedProcess) -> Path | None:
    """Return new jar path if reinstall+retry should be attempted, else None."""
    combined = f"{result.stdout or ''}\n{result.stderr or ''}"
    if not _looks_like_ffdec_dependency_error(combined):
        return None

    if os.environ.get("FFDEC_JAR", "").strip():
        # User explicitly pinned jar path; do not override silently.
        return None

    print("[noclip][ffdec] FFDec install looks incomplete (missing classes). Reinstalling full package ...")
    return ensure_ffdec_jar(force_reinstall=True)


def ensure_ffdec_ready() -> Path:
    """
    Ensure FFDec jar exists and is usable for CLI.
    If old/broken standalone jar is present, reinstall full official package.
    """
    print("[noclip][ffdec] Step 1/2: verifying Java runtime ...")
    java_exe = ensure_java_runtime()
    print("[noclip][ffdec] Step 2/2: verifying FFDec CLI ...")
    jar = ensure_ffdec_jar()
    print(f"[noclip][ffdec] Probing FFDec CLI: java -jar \"{jar}\" -help")
    # Cheap smoke test without touching SWF files.
    try:
        probe = subprocess.run(
            [str(java_exe), "-jar", str(jar), "-help"],
            capture_output=True,
            text=True,
            timeout=25,
            cwd=str(jar.parent),
        )
    except subprocess.TimeoutExpired as exc:
        raise RuntimeError(
            "FFDec CLI check timed out.\n"
            "Possible reasons: antivirus blocked process start, corrupted Java install, or broken FFDec package."
        ) from exc

    if probe.returncode == 0:
        print("[noclip][ffdec] FFDec CLI check passed")
        return jar

    maybe_new = _retry_with_reinstalled_ffdec(jar, probe)
    if maybe_new is not None:
        jar = maybe_new
        probe = subprocess.run(
            [str(java_exe), "-jar", str(jar), "-help"],
            capture_output=True,
            text=True,
            timeout=25,
            cwd=str(jar.parent),
        )
        if probe.returncode == 0:
            return jar

    details = _short_tail(f"{probe.stdout or ''}\n{probe.stderr or ''}")
    raise RuntimeError(
        "FFDec CLI is not usable.\n"
        "What to do next:\n"
        "1) Check Java: run 'java -version'.\n"
        "2) Remove runtime ffdec folder and rerun proxy (auto-download will reinstall).\n"
        "3) If still failing, install official JPEXS FFDec package manually.\n"
        f"{details}"
    )

# ── Obfuscated identifiers ──────────────────────────────────────────────────

# Patch A — CollisionDetector
_PKG_A   = "\u00a7package package false\u00a7"
_FILE_A  = "\u00a7static set true\u00a7.as"

_NORMAL_FIELD   = "\u00a75214233761233774123423632234\u00a7"  # Vector3 normal on ContactPoint
_CP_RECYCLE     = "\u00a75214238823101123423632234\u00a7"     # ContactPoint.recycle()
_BODY_FIELD     = "\u00a75214232783232796123423632234\u00a7"  # CollisionShape → RigidBody ref
_DYNAMIC_FLAG   = "\u00a7set for implements\u00a7"            # RigidBody.isDynamic (bool)
_COLLIDER_TYPE  = "\u00a7final set null\u00a7"
_CASE_FIELD     = "\u00a7with set case\u00a7"

# Patch B — TankEntity
_PKG_B   = "\u00a75214238361238374123423632234\u00a7"
_FILE_B  = "\u00a75214239411239424123423632234\u00a7.as"

_BODY_WRAPPER   = "\u00a7implements for break\u00a7"          # TankEntity.bodyWrapper
_BODY_STATE     = "\u00a7implements catch catch\u00a7"        # RigidBody.state (§catch for in§)
_ANGULAR_VEL    = "\u00a7get var dynamic\u00a7"               # BodyState.angularVelocity (Vector3)
_LINEAR_VEL     = "\u00a7native use function\u00a7"           # BodyState.linearVelocity (Vector3)
_QUAT_FIELD     = "\u00a7try switch true\u00a7"             # BodyState.quaternion (rotation)
_POS_FIELD      = "\u00a7dynamic final\u00a7"               # BodyState.position (Vector3)


# Patch C/D — shared package (DriveController + TankInputController)
_PKG_CD  = "\u00a75214232446232459123423632234\u00a7"
_FILE_C  = "\u00a7if for switch\u00a7.as"            # DriveController — gets static flag
_FILE_D  = "\u00a75214234677234690123423632234\u00a7.as"  # TankInputController — sets flag on Ctrl
_DRIVE_CTRL = "\u00a7if for switch\u00a7"            # class name, already imported by TankEntity
_CLIENT_TANK_FIELD  = "\u00a7do for final\u00a7"                          # TankEntity.clientTank (\u00a75214236557236570\u00a7)
_TANK_SPEC_FIELD    = "\u00a7package switch package\u00a7"               # ClientTank.tankSpecification (TankSpecification)
# TankSpecification.speed = raw server max speed (server units);
# BattleUtils.toClientScale converts to physics units \u2014 same factor used at spawn.
# Updated by server on hull/module change and when a speed booster (nitro pad) is active.

BOOST_SPEED     = 300  # upward velocity (units/s) while Left Ctrl (keyCode 17) held
AIR_TURN_SPEED = 1.5  # angular Z velocity (rad/s) while A/D held in air
LEVEL_SPEED    = 8.0  # proportional gain (rad/s per rad of tilt) while R held
LEVEL_DAMP     = 0.75 # linear velocity multiplier per tick while R held (~14 ticks to stop at 60Hz)
HOLD_DAMP      = 0.88 # XY velocity multiplier per tick when Ё height-hold is active (~20 ticks to stop)
ANTI_FLIP_THRESHOLD = 0.05  # sin(~3°) — ignore tiny wobbles, only block tilt-worsening rotation
PICKUP_RADIUS = 1500  # auto-pickup trigger radius (XY plane, game units); matches shared.near_radius default
PICKUP_RETRY_MS = 250  # resend onTankCollision at most once per bonus every N ms while inside radius

# Patch F — FreeCam (F7 key toggle)
_PKG_CAM_SPECTATOR = "\u00a7var const get\u00a7"
_CLASS_SPECTATOR_CAM = "\u00a7each const set\u00a7"
_FILE_SPECTATOR_CAM = "\u00a7each const set\u00a7.as"
_PKG_CAM_BASE = "\u00a7var set var\u00a7"
_CLASS_CAM_BASE = "\u00a75214235669235682123423632234\u00a7"
_FREECAM_ACTIVATE = "\u00a7extends for include\u00a7"      # activate() method
_FREECAM_DEACTIVATE = "\u00a75214234355234368123423632234\u00a7"  # deactivate() method
_BATTLE_SERVICE_STATIC = "\u00a752142380523818123423632234\u00a7"  # static BattleService reference
_PKG_BONUS_COMMON      = "\u00a7use switch use\u00a7"             # BonusCommonModel package
_BONUS_REGISTRY_FIELD  = "\u00a7native catch try\u00a7"           # BattlefieldModel.bonuses registry

# Patch G — Camera speed boost
_CAM_SPD_CONST = "\u00a7true const get\u00a7"
_CAM_SPD_DEFAULT_OLD = 1300
_CAM_SPD_DEFAULT_NEW = 3500

# ── Patch A text ────────────────────────────────────────────────────────────
# Threshold: only contacts where |normalZ| >= 0.7 are kept (nearly flat floor).
# Static-only guard: skip filter when both bodies are dynamic (tank-vs-tank).
# _noclip_enabled_ gate: wall filter only runs while noclip is active.
# CollisionDetector does not import DriveController by default — we inject the import.

WALL_THRESHOLD = 0.7

# Import injected into CollisionDetector (§static set true§) so it can read _noclip_enabled_.
# Anchor: first alternativa.math import (unique in that file).
_A_IMPORT_ANCHOR = "   import alternativa.math.Matrix3;\n"

_A_OLD = (
    f"         var _loc4_:{_COLLIDER_TYPE} = this.{_CASE_FIELD}[param1.type | param2.type];\n"
    "         _loc4_.getContacts(param1,param2,param3);\n"
    "      }"
)

_A_NEW = (
    f"         var _loc4_:{_COLLIDER_TYPE} = this.{_CASE_FIELD}[param1.type | param2.type];\n"
    "         var _loc5_:int = param3.length;\n"
    "         _loc4_.getContacts(param1,param2,param3);\n"
    f"         var _nb1_:* = param1.{_BODY_FIELD};\n"
    f"         var _nb2_:* = param2.{_BODY_FIELD};\n"
    f"         var _isDyn1_:Boolean = _nb1_ != null && _nb1_.{_DYNAMIC_FLAG};\n"
    f"         var _isDyn2_:Boolean = _nb2_ != null && _nb2_.{_DYNAMIC_FLAG};\n"
    "         var _isStaticContact_:Boolean = _isDyn1_ != _isDyn2_;\n"
    f"         if(_isStaticContact_ && {_DRIVE_CTRL}._noclip_enabled_)\n"
    "         {\n"
    "            var _loc6_:int = param3.length - 1;\n"
    "            var _droppedAny_:Boolean = false;\n"
    "            while(_loc6_ >= _loc5_)\n"
    "            {\n"
    f"               if(Math.abs(param3[_loc6_].{_NORMAL_FIELD}.z) < {WALL_THRESHOLD})\n"
    "               {\n"
    f"                  param3[_loc6_].{_CP_RECYCLE}();\n"
    "                  param3.splice(_loc6_,1);\n"
    "                  _droppedAny_ = true;\n"
    "               }\n"
    "               _loc6_--;\n"
    "            }\n"
    "            if(_droppedAny_)\n"
    "            {\n"
    "               var _dynBody_:* = _isDyn1_ ? _nb1_ : _nb2_;\n"
    f"               var _lv_:Vector3 = _dynBody_.{_BODY_STATE}.{_LINEAR_VEL};\n"
    "               if(_lv_.z < 0)\n"
    "               {\n"
    "                  _lv_.z = 0;\n"
    "               }\n"
    "            }\n"
    "         }\n"
    "      }"
)

# ── Patch B text ────────────────────────────────────────────────────────────────────────────────────────

_B_OLD = (
    "      public function runAfterPhysicsUpdate(param1:Number) : void\n"
    "      {\n"
    "         this.\u00a7dynamic for var\u00a7();\n"
    "         this.\u00a7break finally function\u00a7.\u00a75214234287234300123423632234\u00a7();\n"
    "         this.\u00a7finally continue\u00a7.\u00a7package catch class\u00a7(this.\u00a7break switch catch\u00a7());\n"
    "      }"
)

_B_NEW = (
    "      public function runAfterPhysicsUpdate(param1:Number) : void\n"
    "      {\n"
    "         this.\u00a7dynamic for var\u00a7();\n"
    "         this.\u00a7break finally function\u00a7.\u00a75214234287234300123423632234\u00a7();\n"
    "         this.\u00a7finally continue\u00a7.\u00a7package catch class\u00a7(this.\u00a7break switch catch\u00a7());\n"
    "         if(this.local)\n"
    "         {\n"
    f"            var _bs_:* = this.{_BODY_WRAPPER}.{_BODY_FIELD}.{_BODY_STATE};\n"
    f"            if({_DRIVE_CTRL}._pickup_enabled_)\n"
    "            {\n"
    f"               var _bsvc2_:* = {_PKG_BONUS_COMMON}.BonusCommonModel.{_BATTLE_SERVICE_STATIC};\n"
    "               if(_bsvc2_ != null)\n"
    "               {\n"
    f"                  var _reg_:* = _bsvc2_.{_BONUS_REGISTRY_FIELD};\n"
    "                  if(_reg_ != null)\n"
    "                  {\n"
    f"                     var _myX_:Number = _bs_.{_POS_FIELD}.x;\n"
    f"                     var _myY_:Number = _bs_.{_POS_FIELD}.y;\n"
    "                     var _nowPhys_:int = _bsvc2_.getPhysicsTime();\n"
    "                     for(var _bk_:* in _reg_.bonuses)\n"
    "                     {\n"
    "                        var _bo_:* = _reg_.bonuses[_bk_];\n"
    "                        if(_bo_ == null) continue;\n"
    "                        var _bmesh_:* = _bo_.getBonusMesh();\n"
    "                        if(_bmesh_ == null) continue;\n"
    "                        var _dx_:Number = _bmesh_.object.x - _myX_;\n"
    "                        var _dy_:Number = _bmesh_.object.y - _myY_;\n"
    f"                        if(_dx_*_dx_ + _dy_*_dy_ < {PICKUP_RADIUS * PICKUP_RADIUS})\n"
    "                        {\n"
    f"                           var _nextTry_:* = {_DRIVE_CTRL}._pickup_retry_until_[_bk_];\n"
    "                           if(_nextTry_ == null || _nowPhys_ >= int(_nextTry_))\n"
    "                           {\n"
    "                              _bsvc2_.onTankCollision(_bo_);\n"
    f"                              {_DRIVE_CTRL}._pickup_retry_until_[_bk_] = _nowPhys_ + {PICKUP_RETRY_MS};\n"
    "                           }\n"
    "                        }\n"
    "                        else\n"
    "                        {\n"
    f"                           delete {_DRIVE_CTRL}._pickup_retry_until_[_bk_];\n"
    "                        }\n"
    "                     }\n"
    "                  }\n"
    "               }\n"
    "            }\n"
    f"            if({_DRIVE_CTRL}._freecam_active_)\n"
    "            {\n"
    f"               _bs_.{_LINEAR_VEL}.x = 0;\n"
    f"               _bs_.{_LINEAR_VEL}.y = 0;\n"
    f"               _bs_.{_LINEAR_VEL}.z = 0;\n"
    f"               _bs_.{_ANGULAR_VEL}.x = 0;\n"
    f"               _bs_.{_ANGULAR_VEL}.y = 0;\n"
    f"               _bs_.{_ANGULAR_VEL}.z = 0;\n"
    "               return;\n"
    "            }\n"
    f"            if(!{_DRIVE_CTRL}._noclip_enabled_)\n"
    "            {\n"
    "               return;\n"
    "            }\n"
    f"            var _aflq_:* = _bs_.{_QUAT_FIELD};\n"
    "            var _afpe_:Number = 2.0 * (_aflq_.w * _aflq_.x - _aflq_.y * _aflq_.z);\n"
    "            var _afre_:Number = 2.0 * (_aflq_.w * _aflq_.y + _aflq_.x * _aflq_.z);\n"
    f"            if(Math.abs(_afpe_) > {ANTI_FLIP_THRESHOLD} && _afpe_ * _bs_.{_ANGULAR_VEL}.x > 0)\n"
    "            {\n"
    f"               _bs_.{_ANGULAR_VEL}.x = 0;\n"
    "            }\n"
    f"            if(Math.abs(_afre_) > {ANTI_FLIP_THRESHOLD} && _afre_ * _bs_.{_ANGULAR_VEL}.y > 0)\n"
    "            {\n"
    f"               _bs_.{_ANGULAR_VEL}.y = 0;\n"
    "            }\n"
    f"            if({_DRIVE_CTRL}._noclip_levelup_)\n"
    "            {\n"
    f"               var _lq_:* = _bs_.{_QUAT_FIELD};\n"
    "               var _pe_:Number = 2 * (_lq_.w * _lq_.x - _lq_.y * _lq_.z);\n"
    "               var _re_:Number = 2 * (_lq_.w * _lq_.y + _lq_.x * _lq_.z);\n"
    f"               _bs_.{_ANGULAR_VEL}.x = -_pe_ * {LEVEL_SPEED};\n"
    f"               _bs_.{_ANGULAR_VEL}.y = -_re_ * {LEVEL_SPEED};\n"
    f"               _bs_.{_LINEAR_VEL}.x = _bs_.{_LINEAR_VEL}.x * {LEVEL_DAMP};\n"
    f"               _bs_.{_LINEAR_VEL}.y = _bs_.{_LINEAR_VEL}.y * {LEVEL_DAMP};\n"
    f"               _bs_.{_LINEAR_VEL}.z = _bs_.{_LINEAR_VEL}.z * {LEVEL_DAMP};\n"
    "            }\n"
    f"            if({_DRIVE_CTRL}._noclip_boost_)\n"
    "            {\n"
    f"               _bs_.{_LINEAR_VEL}.z = {BOOST_SPEED};\n"
    f"               if({_DRIVE_CTRL}._noclip_hold_active_)\n"
    "               {\n"
    f"                  {_DRIVE_CTRL}._noclip_hold_z_ = _bs_.{_POS_FIELD}.z;\n"
    "               }\n"
    "            }\n"
    f"            else if({_DRIVE_CTRL}._noclip_down_)\n"
    "            {\n"
    f"               _bs_.{_LINEAR_VEL}.z = -{BOOST_SPEED};\n"
    f"               if({_DRIVE_CTRL}._noclip_hold_active_)\n"
    "               {\n"
    f"                  {_DRIVE_CTRL}._noclip_hold_z_ = _bs_.{_POS_FIELD}.z;\n"
    "               }\n"
    "            }\n"
    f"            else if({_DRIVE_CTRL}._noclip_hold_active_)\n"
    "            {\n"
    f"               if({_DRIVE_CTRL}._noclip_hold_snap_)\n"
    "               {\n"
    f"                  {_DRIVE_CTRL}._noclip_hold_z_ = _bs_.{_POS_FIELD}.z;\n"
    f"                  {_DRIVE_CTRL}._noclip_hold_snap_ = false;\n"
    "               }\n"
    f"               if(_bs_.{_POS_FIELD}.z < {_DRIVE_CTRL}._noclip_hold_z_ && _bs_.{_LINEAR_VEL}.z <= 0)\n"
    "               {\n"
    f"                  _bs_.{_LINEAR_VEL}.z = 50;\n"
    "               }\n"
    f"               if(!{_DRIVE_CTRL}._noclip_fwd_ && !{_DRIVE_CTRL}._noclip_bwd_)\n"
    "               {\n"
    f"                  _bs_.{_LINEAR_VEL}.x = _bs_.{_LINEAR_VEL}.x * {HOLD_DAMP};\n"
    f"                  _bs_.{_LINEAR_VEL}.y = _bs_.{_LINEAR_VEL}.y * {HOLD_DAMP};\n"
    "               }\n"
    "            }\n"
    f"            var _q_:* = _bs_.{_QUAT_FIELD};\n"
    "            var _fwdX_:Number = 2 * (_q_.x * _q_.y - _q_.w * _q_.z);\n"
    "            var _fwdY_:Number = 1 - 2 * (_q_.x * _q_.x + _q_.z * _q_.z);\n"
    f"            var _maxSpd_:Number = BattleUtils.toClientScale(this.{_CLIENT_TANK_FIELD}.{_TANK_SPEC_FIELD}.speed);\n"
    f"            if({_DRIVE_CTRL}._noclip_fwd_)\n"
    "            {\n"
    f"               _bs_.{_LINEAR_VEL}.x = _fwdX_ * _maxSpd_;\n"
    f"               _bs_.{_LINEAR_VEL}.y = _fwdY_ * _maxSpd_;\n"
    "            }\n"
    f"            else if({_DRIVE_CTRL}._noclip_bwd_)\n"
    "            {\n"
    f"               _bs_.{_LINEAR_VEL}.x = -_fwdX_ * _maxSpd_;\n"
    f"               _bs_.{_LINEAR_VEL}.y = -_fwdY_ * _maxSpd_;\n"
    "            }\n"
    f"            if({_DRIVE_CTRL}._noclip_lft_)\n"
    "            {\n"
    f"               _bs_.{_ANGULAR_VEL}.z = {AIR_TURN_SPEED};\n"
    "            }\n"
    f"            else if({_DRIVE_CTRL}._noclip_rgt_)\n"
    "            {\n"
    f"               _bs_.{_ANGULAR_VEL}.z = -{AIR_TURN_SPEED};\n"
    "            }\n"
    "            else\n"
    "            {\n"
    f"               _bs_.{_ANGULAR_VEL}.z = 0;\n"
    "            }\n"
    "         }\n"
    "      }\n"
)

# \u2500\u2500 Patch C text \u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500
# Add shared static noclip flags to §if for switch§ (DriveController).
# TankEntity already imports this class -> Patch B can read flags without imports.

_C_OLD = (
    "      public static const \u00a7else catch if\u00a7:int = 5;\n"
)
_C_NEW = (
    "      public static var _noclip_enabled_:Boolean = false;\n"
    "      public static var _noclip_boost_:Boolean = false;\n"
    "      public static var _noclip_down_:Boolean = false;\n"
    "      public static var _noclip_hold_z_:Number = 0;\n"
    "      public static var _noclip_hold_active_:Boolean = false;\n"
    "      public static var _noclip_hold_snap_:Boolean = false;\n"
    "      public static var _noclip_fwd_:Boolean = false;\n"
    "      public static var _noclip_bwd_:Boolean = false;\n"
    "      public static var _noclip_lft_:Boolean = false;\n"
    "      public static var _noclip_rgt_:Boolean = false;\n"
    "      public static var _noclip_levelup_:Boolean = false;\n"
    "      public static var _freecam_active_:Boolean = false;\n"
    "      public static var _freecam_ctrl_:Object = null;\n"
    "      public static var _pickup_enabled_:Boolean = false;\n"
    "      public static var _pickup_retry_until_:Object = {};\n"
    "\n"
    "      public static const \u00a7else catch if\u00a7:int = 5;\n"
)

# \u2500\u2500 Patch E text \u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500
# In DriveController.\u00a7for use function\u00a7: bypass the \u00a7use catch get\u00a7() ground-contact
# guard when _noclip_boost_ OR _noclip_hold_active_ is enabled, so movement
# logic remains available in air during boost/height-hold.
# Same file as Patch C (same tmp dir already used).

_GROUND_CHK = "\u00a75214232330232343123423632234\u00a7"
_GROUND_CHK_METHOD = "\u00a7use catch get\u00a7"

_E_OLD = (
    f"         this.\u00a75214237094237107123423632234\u00a7 = this.\u00a7521423111082311121123423632234\u00a7.\u00a7521423120402312053123423632234\u00a7(param1);\n"
    f"         if(this.{_GROUND_CHK}.{_GROUND_CHK_METHOD}())\n"
)
_E_NEW = (
    f"         this.\u00a75214237094237107123423632234\u00a7 = this.\u00a7521423111082311121123423632234\u00a7.\u00a7521423120402312053123423632234\u00a7(param1);\n"
    f"         if(this.{_GROUND_CHK}.{_GROUND_CHK_METHOD}() || (_noclip_enabled_ && (_noclip_boost_ || _noclip_hold_active_)))\n"
)

# ── Patch G text ────────────────────────────────────────────────────────────
# In §var const get§.§each const set§ (SpectatorCameraController):
# Increase camera flight speed from 1300 to 3500.

_G_OLD = (
    f"      private static const {_CAM_SPD_CONST}:ConsoleVarFloat = new ConsoleVarFloat(\"cam_spd\",{_CAM_SPD_DEFAULT_OLD},0,10000);\n"
)
_G_NEW = (
    f"      private static const {_CAM_SPD_CONST}:ConsoleVarFloat = new ConsoleVarFloat(\"cam_spd\",{_CAM_SPD_DEFAULT_NEW},0,10000);\n"
)

# \u2500\u2500 Patch D text \u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500
# In TankInputController.§each const break§:
# - handle Ctrl/Shift/`/R before !_loc5_ early return;
# - mirror CHASSIS_* GameActionEnum states to shared W/S/A/D flags.

_D_OLD = (
    "         var _loc2_:int = 0;\n"
    "         var _loc5_:GameActionEnum = \u00a7extends package override\u00a7.getBindingAction(param1.keyCode,false);\n"
    "         if(!_loc5_)\n"
    "         {\n"
    "            return;\n"
    "         }\n"
    "         var _loc4_:int = \u00a7const var import\u00a7;\n"
    "         var _loc3_:Boolean = param1.type == \"keyDown\";\n"
    "         switch(_loc5_)\n"
)
_D_NEW = (
    "         var _loc2_:int = 0;\n"
    "         var _loc5_:GameActionEnum = \u00a7extends package override\u00a7.getBindingAction(param1.keyCode,false);\n"
    "         if(param1.keyCode == 118 && param1.type == \"keyDown\")\n"
    "         {\n"
    f"            {_DRIVE_CTRL}._freecam_active_ = !{_DRIVE_CTRL}._freecam_active_;\n"
    f"            if({_DRIVE_CTRL}._freecam_active_)\n"
    "            {\n"
    f"               var _spectator_:* = new {_PKG_CAM_SPECTATOR}.{_CLASS_SPECTATOR_CAM}();\n"
    f"               {_DRIVE_CTRL}._freecam_ctrl_ = _spectator_;\n"
    f"               _spectator_.{_FREECAM_ACTIVATE}();\n"
    f"               {_DRIVE_CTRL}._noclip_fwd_ = false;\n"
    f"               {_DRIVE_CTRL}._noclip_bwd_ = false;\n"
    f"               {_DRIVE_CTRL}._noclip_lft_ = false;\n"
    f"               {_DRIVE_CTRL}._noclip_rgt_ = false;\n"
    "               \u00a7521423127992312812123423632234\u00a7(this.\u00a7set use super\u00a7);\n"
    "            }\n"
    "            else\n"
    "            {\n"
    f"               if({_DRIVE_CTRL}._freecam_ctrl_ != null)\n"
    "               {\n"
    f"                  {_DRIVE_CTRL}._freecam_ctrl_.{_FREECAM_DEACTIVATE}();\n"
    f"                  {_PKG_CAM_BASE}.{_CLASS_CAM_BASE}.{_BATTLE_SERVICE_STATIC}.setFollowCamera();\n"
    "               }\n"
    f"               {_DRIVE_CTRL}._freecam_ctrl_ = null;\n"
    f"               {_DRIVE_CTRL}._noclip_fwd_ = false;\n"
    f"               {_DRIVE_CTRL}._noclip_bwd_ = false;\n"
    f"               {_DRIVE_CTRL}._noclip_lft_ = false;\n"
    f"               {_DRIVE_CTRL}._noclip_rgt_ = false;\n"
    "               \u00a7521423127992312812123423632234\u00a7(this.\u00a7set use super\u00a7);\n"
    "            }\n"
    "            return;\n"
    "         }\n"
    "         if(param1.keyCode == 119 && param1.type == \"keyDown\")\n"
    "         {\n"
    f"            {_DRIVE_CTRL}._noclip_enabled_ = !{_DRIVE_CTRL}._noclip_enabled_;\n"
    f"            if(!{_DRIVE_CTRL}._noclip_enabled_)\n"
    "            {\n"
    f"               {_DRIVE_CTRL}._noclip_hold_active_ = false;\n"
    f"               {_DRIVE_CTRL}._noclip_hold_snap_ = false;\n"
    f"               {_DRIVE_CTRL}._noclip_boost_ = false;\n"
    f"               {_DRIVE_CTRL}._noclip_down_ = false;\n"
    "            }\n"
    "         }\n"
    "         if(param1.keyCode == 117 && param1.type == \"keyDown\")\n"
    "         {\n"
    f"            {_DRIVE_CTRL}._pickup_enabled_ = !{_DRIVE_CTRL}._pickup_enabled_;\n"
    "         }\n"
    "         if(param1.keyCode == 17)\n"
    "         {\n"
    f"            {_DRIVE_CTRL}._noclip_boost_ = param1.type == \"keyDown\";\n"
    "         }\n"
    "         if(param1.keyCode == 16)\n"
    "         {\n"
    f"            {_DRIVE_CTRL}._noclip_down_ = param1.type == \"keyDown\";\n"
    "         }\n"
    "         if(param1.keyCode == 192 && param1.type == \"keyDown\")\n"
    "         {\n"
    f"            {_DRIVE_CTRL}._noclip_hold_active_ = !{_DRIVE_CTRL}._noclip_hold_active_;\n"
    f"            if({_DRIVE_CTRL}._noclip_hold_active_)\n"
    "            {\n"
    f"               {_DRIVE_CTRL}._noclip_hold_snap_ = true;\n"
    "            }\n"
    "         }\n"
    "         if(param1.keyCode == 82)\n"
    "         {\n"
    f"            {_DRIVE_CTRL}._noclip_levelup_ = param1.type == \"keyDown\";\n"
    "         }\n"
    "         if(!_loc5_)\n"
    "         {\n"
    "            return;\n"
    "         }\n"
    "         var _loc4_:int = \u00a7const var import\u00a7;\n"
    "         var _loc3_:Boolean = param1.type == \"keyDown\";\n"
    f"         if({_DRIVE_CTRL}._freecam_active_ && (_loc5_ == GameActionEnum.CHASSIS_FORWARD_MOVEMENT || _loc5_ == GameActionEnum.CHASSIS_BACKWARD_MOVEMENT || _loc5_ == GameActionEnum.CHASSIS_LEFT_MOVEMENT || _loc5_ == GameActionEnum.CHASSIS_RIGHT_MOVEMENT))\n"
    "         {\n"
    "            if(\u00a7const var import\u00a7 != this.\u00a7set use super\u00a7)\n"
    "            {\n"
    "               \u00a7521423127992312812123423632234\u00a7(this.\u00a7set use super\u00a7);\n"
    "            }\n"
    "            return;\n"
    "         }\n"
    "         if(_loc5_ == GameActionEnum.CHASSIS_FORWARD_MOVEMENT)\n"
    "         {\n"
    f"            {_DRIVE_CTRL}._noclip_fwd_ = _loc3_;\n"
    "         }\n"
    "         if(_loc5_ == GameActionEnum.CHASSIS_BACKWARD_MOVEMENT)\n"
    "         {\n"
    f"            {_DRIVE_CTRL}._noclip_bwd_ = _loc3_;\n"
    "         }\n"
    "         if(_loc5_ == GameActionEnum.CHASSIS_LEFT_MOVEMENT)\n"
    "         {\n"
    f"            {_DRIVE_CTRL}._noclip_lft_ = _loc3_;\n"
    "         }\n"
    "         if(_loc5_ == GameActionEnum.CHASSIS_RIGHT_MOVEMENT)\n"
    "         {\n"
    f"            {_DRIVE_CTRL}._noclip_rgt_ = _loc3_;\n"
    "         }\n"
    "         switch(_loc5_)\n"
)

# ── Cache ───────────────────────────────────────────────────────────────────

_cached_swf: Path | None = None


def get_patched_swf() -> Path:
    """Return path to patched SWF, building it on first use."""
    global _cached_swf

    if _cached_swf is not None and _cached_swf.exists():
        return _cached_swf

    from .transparency_patch import (
        apply_xray_to_d,
        build_xray_factory_text,
        build_xray_hidable_wrapper_text,
        build_xray_map_loader_text,
        build_xray_static_geometry_text,
        write_xray_files,
    )

    source_swf = _ensure_source_swf()
    ffdec_jar = ensure_ffdec_ready()
    # Java was validated inside ensure_ffdec_ready(); resolve executable path once
    # without rerunning java -version probe/log sequence.
    java_exe = _resolve_java_executable(verbose=False)
    if java_exe is None:
        raise RuntimeError(
            "Java executable path could not be resolved after successful Java/FFDec check. "
            "Restart proxy and retry."
        )

    # --- Patch A ---
    src_a = _ensure_patch_script(_PKG_A, _FILE_A)
    text_a = src_a.read_text(encoding="utf-8").replace("\r\n", "\n")
    if _A_OLD not in text_a:
        raise RuntimeError("noclip_patch A: anchor not found \u2013 SWF version mismatch.")
    text_a = text_a.replace(_A_OLD, _A_NEW, 1)
    # Inject DriveController import so CollisionDetector can read _noclip_enabled_.
    _a_import_line = f"   import {_PKG_CD}.{_DRIVE_CTRL};\n"
    if _A_IMPORT_ANCHOR in text_a and _a_import_line not in text_a:
        text_a = text_a.replace(_A_IMPORT_ANCHOR, _a_import_line + _A_IMPORT_ANCHOR, 1)

    # --- Patch B ---
    src_b = _ensure_patch_script(_PKG_B, _FILE_B)
    text_b = src_b.read_text(encoding="utf-8").replace("\r\n", "\n")
    if _B_OLD not in text_b:
        raise RuntimeError("noclip_patch B: anchor not found \u2013 SWF version mismatch.")
    text_b = text_b.replace(_B_OLD, _B_NEW, 1)
    # --- Patch C ---
    src_c = _ensure_patch_script(_PKG_CD, _FILE_C)
    text_c = src_c.read_text(encoding="utf-8").replace("\r\n", "\n")
    if _C_OLD not in text_c:
        raise RuntimeError("noclip_patch C: anchor not found \u2013 SWF version mismatch.")
    text_c = text_c.replace(_C_OLD, _C_NEW, 1)
    # Patch E is in the same file as C
    if _E_OLD not in text_c:
        raise RuntimeError("noclip_patch E: anchor not found \u2013 SWF version mismatch.")
    text_c = text_c.replace(_E_OLD, _E_NEW, 1)

    # --- Patch D (noclip) then D-ext ---
    src_d = _ensure_patch_script(_PKG_CD, _FILE_D)
    text_d = src_d.read_text(encoding="utf-8").replace("\r\n", "\n")
    if _D_OLD not in text_d:
        raise RuntimeError("noclip_patch D: anchor not found \u2013 SWF version mismatch.")
    text_d = text_d.replace(_D_OLD, _D_NEW, 1)
    text_d = apply_xray_to_d(text_d)   # currently no-op (T toggle disabled)

    # --- Patch G (SpectatorCameraController camera speed boost) ---
    src_g = _ensure_patch_script(_PKG_CAM_SPECTATOR, _FILE_SPECTATOR_CAM)
    text_g = src_g.read_text(encoding="utf-8").replace("\r\n", "\n")
    if _G_OLD not in text_g:
        raise RuntimeError("noclip_patch G: anchor not found – SWF version mismatch.")
    text_g = text_g.replace(_G_OLD, _G_NEW, 1)

    # --- Patch F (xray DefaultTextureMaterialFactory) ---
    text_f = build_xray_factory_text(xray_default_on=False)
    # --- Patch H (xray object alpha in HidableObject3DWrapper) ---
    text_h = build_xray_hidable_wrapper_text()
    # --- Patch M (xray map objects at scene attach loop) ---
    text_m = build_xray_map_loader_text()
    # --- Patch S (xray static mesh/BSP geometry by texture-name) ---
    text_s = build_xray_static_geometry_text()

    OUT_SWF.parent.mkdir(parents=True, exist_ok=True)

    with tempfile.TemporaryDirectory(prefix="noclip_") as tmp:
        tmp_dir = Path(tmp)

        pkg_dir_a = tmp_dir / _PKG_A
        pkg_dir_a.mkdir(parents=True)
        (pkg_dir_a / _FILE_A).write_text(text_a, encoding="utf-8")

        pkg_dir_b = tmp_dir / _PKG_B
        pkg_dir_b.mkdir(parents=True)
        (pkg_dir_b / _FILE_B).write_text(text_b, encoding="utf-8")

        pkg_dir_cd = tmp_dir / _PKG_CD
        pkg_dir_cd.mkdir(parents=True)
        (pkg_dir_cd / _FILE_C).write_text(text_c, encoding="utf-8")
        (pkg_dir_cd / _FILE_D).write_text(text_d, encoding="utf-8")

        pkg_dir_g = tmp_dir / _PKG_CAM_SPECTATOR
        pkg_dir_g.mkdir(parents=True)
        (pkg_dir_g / _FILE_SPECTATOR_CAM).write_text(text_g, encoding="utf-8")

        write_xray_files(tmp_dir, text_f, text_h, text_m, text_s)   # Patch F + H + M + S

        result = _run_ffdec_importscript(java_exe, ffdec_jar, source_swf, OUT_SWF, tmp_dir)
        if result.returncode != 0:
            maybe_new = _retry_with_reinstalled_ffdec(ffdec_jar, result)
            if maybe_new is not None:
                ffdec_jar = maybe_new
                result = _run_ffdec_importscript(java_exe, ffdec_jar, source_swf, OUT_SWF, tmp_dir)

    if result.returncode != 0:
        raise RuntimeError(
            f"noclip_patch: FFDec failed (rc={result.returncode}):\n"
            f"{_short_tail(result.stdout)}\n{_short_tail(result.stderr)}"
        )

    _cached_swf = OUT_SWF
    print(f"[noclip] Patched SWF ready (xray=OFF by default): {OUT_SWF}")
    return _cached_swf
