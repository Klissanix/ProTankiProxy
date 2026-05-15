from __future__ import annotations

import os
import shutil
import subprocess
from pathlib import Path

from .shared import short_tail


def resolve_java_executable(verbose: bool = False) -> Path | None:
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

    java_on_path = shutil.which("java")
    if java_on_path:
        if verbose:
            print(f"[noclip][java] Found java via PATH: {java_on_path}")
        return Path(java_on_path)
    if verbose:
        print("[noclip][java] java.exe is not available in PATH")

    candidates: list[Path] = []
    for root in (
        Path(r"C:\Program Files\Eclipse Adoptium"),
        Path(r"C:\Program Files\Java"),
        Path(r"C:\Program Files\Microsoft"),
        Path(r"C:\Program Files\Zulu"),
    ):
        if root.exists():
            candidates.extend(root.rglob("java.exe"))

    if not candidates:
        if verbose:
            print("[noclip][java] No java.exe found in common install folders")
        return None

    winner = min(candidates, key=lambda path: len(str(path)))
    if verbose:
        print(f"[noclip][java] Found java via folder scan: {winner}")
    return winner


def java_works(java_exe: Path, verbose: bool = False) -> bool:
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
            details = short_tail(f"{probe.stdout or ''}\n{probe.stderr or ''}")
            print(f"[noclip][java] java -version failed (rc={probe.returncode})")
            if details.strip():
                print(details)
        return False

    if verbose:
        version_text = (probe.stderr or probe.stdout or "").strip().splitlines()
        version_line = version_text[0] if version_text else "version output is empty"
        print(f"[noclip][java] java -version OK: {version_line}")
    return True


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
        out = short_tail(result.stdout or "")
        err = short_tail(result.stderr or "")
        print(f"[noclip][java] winget bootstrap failed (rc={result.returncode})")
        if out:
            print(out)
        if err:
            print(err)
        return False

    print("[noclip][java] winget bootstrap finished")
    return True


def install_java_with_winget() -> bool:
    winget = shutil.which("winget")
    if not winget:
        if _bootstrap_winget():
            winget = shutil.which("winget")
        if not winget:
            print("[noclip][java] winget still not available after bootstrap")
            print("[noclip][java] Manual fallback: install Microsoft App Installer and rerun proxy")
            return False
    print(f"[noclip][java] Using winget: {winget}")

    for package_id in (
        "EclipseAdoptium.Temurin.21.JDK",
        "Microsoft.OpenJDK.21",
    ):
        print(f"[noclip][java] Installing Java via winget: {package_id}")
        try:
            result = subprocess.run(
                [
                    winget,
                    "install",
                    "--id",
                    package_id,
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
            print(f"[noclip][java] winget install timed out for {package_id}")
            continue
        except Exception as exc:
            print(f"[noclip][java] winget install failed to start for {package_id}: {exc}")
            continue

        if result.returncode == 0:
            print(f"[noclip][java] Java installation succeeded via {package_id}")
            return True

        out = short_tail(result.stdout or "")
        err = short_tail(result.stderr or "")
        print(f"[noclip][java] winget install failed for {package_id} (rc={result.returncode})")
        if out:
            print(out)
        if err:
            print(err)
        print("[noclip][java] Trying next Java package candidate ...")

    return False


def ensure_java_runtime() -> Path:
    print("[noclip][java] Step 1/3: detecting Java runtime ...")
    java_exe = resolve_java_executable(verbose=True)
    if java_exe and java_works(java_exe, verbose=True):
        print(f"[noclip][java] Java runtime is ready: {java_exe}")
        return java_exe

    if java_exe:
        print(f"[noclip][java] Found Java candidate but it is not runnable: {java_exe}")
    print("[noclip][java] Step 2/3: Java runtime not ready. Starting automatic install ...")
    if install_java_with_winget():
        print("[noclip][java] Step 3/3: re-checking Java after install ...")
        java_exe = resolve_java_executable(verbose=True)
        if java_exe and java_works(java_exe, verbose=True):
            print(f"[noclip][java] Java ready: {java_exe}")
            return java_exe

    raise RuntimeError(
        "Java runtime is missing and auto-install failed.\n"
        "What to do next:\n"
        "1) Install Microsoft App Installer (winget provider), then rerun proxy.\n"
        "2) Or install Java manually: Temurin JDK 21 x64.\n"
        "3) After install, restart proxy and verify 'java -version' works."
    )