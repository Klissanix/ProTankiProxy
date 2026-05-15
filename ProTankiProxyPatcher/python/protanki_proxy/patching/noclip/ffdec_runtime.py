from __future__ import annotations

import io
import json
import os
import shutil
import subprocess
import tempfile
import urllib.request
import zipfile
from pathlib import Path

from ...runtime_paths import (
    copy_bundled_file_if_missing,
    ensure_runtime_dirs,
    find_bundled_decompiled_script,
    get_bundled_remote_library_swf,
    get_bundle_root,
    get_decompiled_scripts_dir,
    get_patched_library_swf,
    get_remote_library_swf,
    get_runtime_root,
)
from .java_runtime import ensure_java_runtime
from .shared import looks_like_ffdec_dependency_error, short_tail


def resolve_ffdec_jar() -> Path:
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


FFDEC_JAR = resolve_ffdec_jar()
SOURCE_SWF = get_remote_library_swf()
SCRIPTS_DIR = get_decompiled_scripts_dir()
OUT_SWF = get_patched_library_swf()


def ensure_source_swf() -> Path:
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


def ensure_patch_script(package: str, file_name: str) -> Path:
    runtime_file = SCRIPTS_DIR / package / file_name
    if runtime_file.exists():
        return runtime_file

    bundled_file = find_bundled_decompiled_script(package, file_name)
    if bundled_file.exists():
        runtime_file.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(bundled_file, runtime_file)
        return runtime_file

    if _try_export_missing_patch_script(package, file_name, runtime_file):
        return runtime_file

    raise FileNotFoundError(
        "Required decompiled ActionScript file was not found. "
        f"Expected: {runtime_file}"
    )


def _try_export_missing_patch_script(package: str, file_name: str, runtime_file: Path) -> bool:
    try:
        source_swf = ensure_source_swf()
        java_exe = ensure_java_runtime()
        ffdec_jar = ensure_ffdec_jar()
    except Exception as exc:
        print(
            "[noclip] WARNING: unable to prepare FFDec export for missing script "
            f"{package}/{file_name}: {exc}"
        )
        return False

    print(f"[noclip] Missing patch script {package}/{file_name}; exporting ActionScript sources from source SWF ...")
    with tempfile.TemporaryDirectory(prefix="ffdec_export_") as tmp:
        export_root = Path(tmp)
        result = subprocess.run(
            [
                str(java_exe),
                "-jar",
                str(ffdec_jar),
                "-export",
                "script",
                str(export_root),
                str(source_swf),
            ],
            capture_output=True,
            text=True,
            timeout=900,
            cwd=str(ffdec_jar.parent),
        )
        if result.returncode != 0:
            raise RuntimeError(
                "FFDec failed to export missing ActionScript sources.\n"
                f"{short_tail(result.stdout)}\n{short_tail(result.stderr)}"
            )

        exported_file = export_root / "scripts" / package / file_name
        if not exported_file.exists():
            return False

        runtime_file.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(exported_file, runtime_file)
        return True


def get_source_swf() -> Path:
    return ensure_source_swf()


def _download_ffdec(dest_dir: Path) -> Path:
    api_url = "https://api.github.com/repos/jindrapetrik/jpexs-decompiler/releases/latest"
    request = urllib.request.Request(api_url, headers={"User-Agent": "ProTanki-proxy/1.0"})
    with urllib.request.urlopen(request, timeout=15) as response:
        release = json.loads(response.read())

    zip_url = None
    zip_name = None
    for asset in release.get("assets", []):
        name = asset.get("name", "")
        lowered = name.lower()
        if lowered.endswith(".zip") and "ffdec" in lowered and "source" not in lowered and "src" not in lowered:
            zip_url = asset["browser_download_url"]
            zip_name = name
            break

    if not zip_url:
        raise RuntimeError("FFDec zip asset not found in latest GitHub release")

    print(f"[noclip][ffdec] Downloading {zip_name} from GitHub releases ...")
    download_request = urllib.request.Request(zip_url, headers={"User-Agent": "ProTanki-proxy/1.0"})
    with urllib.request.urlopen(download_request, timeout=120) as response:
        zip_data = response.read()
    print(f"[noclip][ffdec] Download complete ({len(zip_data) // 1024} KB)")

    if dest_dir.exists():
        shutil.rmtree(dest_dir, ignore_errors=True)
    dest_dir.mkdir(parents=True, exist_ok=True)

    with zipfile.ZipFile(io.BytesIO(zip_data)) as archive:
        for info in archive.infolist():
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
            with archive.open(info) as src, open(target, "wb") as dst:
                shutil.copyfileobj(src, dst)

    jar_candidates = sorted(dest_dir.rglob("ffdec.jar"))
    if not jar_candidates:
        raise RuntimeError("ffdec.jar not found inside downloaded FFDec package")

    jar_dest = min(jar_candidates, key=lambda path: len(path.parts))
    print(f"[noclip][ffdec] FFDec installed: {jar_dest}")
    return jar_dest


def ensure_ffdec_jar(force_reinstall: bool = False) -> Path:
    if not force_reinstall:
        jar = resolve_ffdec_jar()
        if jar.exists():
            print(f"[noclip][ffdec] Found ffdec.jar: {jar}")
            return jar

    install_dir = get_runtime_root() / "ffdec"
    if force_reinstall:
        print("[noclip][ffdec] Reinstalling FFDec package (dependency mismatch detected)")
    else:
        print("[noclip][ffdec] ffdec.jar not found. Installing FFDec package ...")
    return _download_ffdec(install_dir)


def run_ffdec_importscript(
    java_exe: Path,
    ffdec_jar: Path,
    source_swf: Path,
    out_swf: Path,
    script_dir: Path,
) -> subprocess.CompletedProcess:
    return subprocess.run(
        [
            str(java_exe),
            "-jar",
            str(ffdec_jar),
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


def retry_with_reinstalled_ffdec(
    ffdec_jar: Path,
    result: subprocess.CompletedProcess,
) -> Path | None:
    combined = f"{result.stdout or ''}\n{result.stderr or ''}"
    if not looks_like_ffdec_dependency_error(combined):
        return None
    if os.environ.get("FFDEC_JAR", "").strip():
        return None

    print("[noclip][ffdec] FFDec install looks incomplete (missing classes). Reinstalling full package ...")
    return ensure_ffdec_jar(force_reinstall=True)


def ensure_ffdec_ready() -> Path:
    print("[noclip][ffdec] Step 1/2: verifying Java runtime ...")
    java_exe = ensure_java_runtime()
    print("[noclip][ffdec] Step 2/2: verifying FFDec CLI ...")
    jar = ensure_ffdec_jar()
    print(f"[noclip][ffdec] Probing FFDec CLI: java -jar \"{jar}\" -help")

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

    maybe_new = retry_with_reinstalled_ffdec(jar, probe)
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

    details = short_tail(f"{probe.stdout or ''}\n{probe.stderr or ''}")
    raise RuntimeError(
        "FFDec CLI is not usable.\n"
        "What to do next:\n"
        "1) Check Java: run 'java -version'.\n"
        "2) Remove runtime ffdec folder and rerun proxy (auto-download will reinstall).\n"
        "3) If still failing, install official JPEXS FFDec package manually.\n"
        f"{details}"
    )