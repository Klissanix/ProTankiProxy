# -*- mode: python ; coding: utf-8 -*-

import os
from pathlib import Path

from PyInstaller.utils.hooks import collect_submodules

ROOT = Path(SPECPATH)
PROJECT = ROOT
PACKAGE = PROJECT / "protanki_proxy"
ARTIFACTS = PROJECT / "artifacts" / "swf"
ICON_PATH = ROOT.parent / "icon.ico"
VERSION_FILE = ROOT.parent / "version_info.txt"

datas = []
patching_hiddenimports = collect_submodules("protanki_proxy.patching")
patched_library_name = (os.environ.get("PTP_PATCHED_SWF_NAME", "").strip() or "library_noclip.swf")
prebuilt_patched_library = ARTIFACTS / "patched" / patched_library_name

if not prebuilt_patched_library.exists():
    raise SystemExit(
        "Missing prebuilt patched SWF: "
    f"{prebuilt_patched_library}. Run .\\prepare_release_assets.py first."
    )

datas.append((str(prebuilt_patched_library), "artifacts/swf/patched"))

a = Analysis(
    [str(PROJECT / "main.py")],
    pathex=[str(PROJECT)],
    binaries=[],
    datas=datas,
    hiddenimports=[
        "protanki_proxy",
        "protanki_proxy.launcher",
        "protanki_proxy.http_server",
        "protanki_proxy.hotkeys",
        "protanki_proxy.logger",
        "protanki_proxy.runtime_paths",
        "protanki_proxy.settings",
        "protanki_proxy.state",
        "protanki_proxy.system",
        "protanki_proxy.ui",
        *patching_hiddenimports,
        "tkinter",
        "tkinter.ttk",
        "tkinter.font",
        "http.server",
        "http.client",
        "json",
    ],
    hookspath=[],
    hooksconfig={},
    runtime_hooks=[],
    excludes=[
        "matplotlib",
        "numpy",
        "PIL",
        "scipy",
        "pandas",
        "IPython",
        "jupyter",
    ],
    noarchive=False,
    optimize=0,
)

pyz = PYZ(a.pure)

exe = EXE(
    pyz,
    a.scripts,
    a.binaries,
    a.datas,
    [],
    name="ProTankiProxy",
    debug=False,
    bootloader_ignore_signals=False,
    strip=False,
    upx=False,
    console=True,
    uac_admin=True,
    manifest="""<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<assembly xmlns="urn:schemas-microsoft-com:asm.v1" manifestVersion="1.0">
  <trustInfo xmlns="urn:schemas-microsoft-com:asm.v3">
    <security>
      <requestedPrivileges>
        <requestedExecutionLevel level="requireAdministrator" uiAccess="false"/>
      </requestedPrivileges>
    </security>
  </trustInfo>
  <compatibility xmlns="urn:schemas-microsoft-com:compatibility.v1">
    <application>
      <supportedOS Id="{8e0f7a12-bfb3-4fe8-b9a5-48fd50a15a9a}"/>
    </application>
  </compatibility>
</assembly>""",
    disable_windowed_traceback=False,
    icon=str(ICON_PATH) if ICON_PATH.exists() else None,
    version=str(VERSION_FILE) if VERSION_FILE.exists() else None,
    argv_emulation=False,
    target_arch=None,
    codesign_identity=None,
    entitlements_file=None,
    onefile=True,
)
