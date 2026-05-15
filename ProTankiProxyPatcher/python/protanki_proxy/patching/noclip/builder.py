from __future__ import annotations

import tempfile
from pathlib import Path

from ...runtime_paths import (
    copy_bundled_file_if_missing,
    ensure_runtime_dirs,
    get_bundled_patched_library_swf,
    is_frozen,
)
from ..autobattle.builder import apply_autobattle_patches
from ..autobattle.tank_registry_model import AB_TANK_MODEL_FILE, AB_TANK_MODEL_PKG
from ..transparency_patch import (
    apply_xray_to_d,
    build_xray_factory_text,
    build_xray_hidable_wrapper_text,
    build_xray_map_loader_text,
    build_xray_static_geometry_text,
    write_xray_files,
)
from .build_meta import build_meta_matches, write_build_meta
from .collision import A_IMPORT_ANCHOR, A_NEW, A_OLD
from .controls import C_NEW, C_OLD, D_NEW, D_OLD, E_NEW, E_OLD, G_NEW, G_OLD
from .bonus_regions import apply_bonus_regions_patch

# Patch DM — suppress menu-only "critical error" popup caused by model ID
# mismatch when the server is updated but the old base library.swf is served.
# DispatcherModel.f270b395 is the only place that shows UnclassifyedError UI;
# the model load still fails (logged), but the game continues to work fine.
_DM_PKG = "platform/loading"
_DM_FILE = "DispatcherModel.as"
_DM_OLD = (
    "      private static function f270b395(param1:String) : void\n"
    "      {\n"
    "         IErrorMessageService(OSGi.getInstance().getService(IErrorMessageService)).showMessage(new UnclassifyedError(param1));\n"
    "      }"
)
_DM_NEW = (
    "      private static function f270b395(param1:String) : void\n"
    "      {\n"
    "      }"
)

# Patch MBS — make MessageBoxService.showMessage a no-op so no error popup
# is ever shown regardless of source (model mismatch, resource error, etc.)
_MBS_PKG = "§dynamic var default§"
_MBS_FILE = "MessageBoxService.as"

# Patch CSN — suppress anti-cheat telemetry + ErrorNotification("ERROR_FATAL")
# popup. §case switch native§.§5214231352231365123423632234§ sends HTTP events
# to 45.12.71.8 and shows the "Произошла критическая ошибка" popup after >23
# calls. Making it a no-op silences both the telemetry and the popup.
_CSN_PKG = "§dynamic catch true§"
_CSN_FILE = "§case switch native§.as"
_CSN_OLD = (
    "      public function §5214231352231365123423632234§(param1:String) : void\n"
    "      {\n"
    "         var _loc2_:URLRequest = null;\n"
    "         var _loc3_:URLLoader = null;\n"
    "         if(Capabilities.language.length > 3)\n"
    "         {\n"
    "            return;\n"
    "         }\n"
    "         if(IBattleInfoService(OSGi.getInstance().getService(IBattleInfoService)).isSpectatorMode())\n"
    "         {\n"
    "            return;\n"
    "         }\n"
    "         if(§5214233617233630123423632234§ < 30)\n"
    "         {\n"
    "            _loc2_ = new URLRequest(this.§52142388923902123423632234§);\n"
    "            _loc2_.method = \"POST\";\n"
    "            _loc2_.data = param1.replace(/=/g,\"~\");\n"
    "            _loc3_ = new URLLoader();\n"
    "            _loc3_.addEventListener(\"ioError\",this.§5214234919234932123423632234§,false,0,true);\n"
    "            _loc3_.addEventListener(\"securityError\",this.§5214234919234932123423632234§,false,0,true);\n"
    "            _loc3_.load(_loc2_);\n"
    "         }\n"
    "         if(++§5214233617233630123423632234§ > 23)\n"
    "         {\n"
    "            INotificationService(OSGi.getInstance().getService(INotificationService)).addNotification(new ErrorNotification());\n"
    "         }\n"
    "      }"
)
_CSN_NEW = (
    "      public function §5214231352231365123423632234§(param1:String) : void\n"
    "      {\n"
    "      }"
)

# Second CSN sub-patch: §switch set package§ sends binary telemetry to clientLog2S
_CSN2_OLD = (
    "      public function §switch set package§(param1:ByteArray) : void\n"
    "      {\n"
    "         if(Capabilities.language.length > 3)\n"
    "         {\n"
    "            return;\n"
    "         }\n"
    "         var _loc2_:URLRequest = new URLRequest(this.§52142388923902123423632234§ + \"S\");\n"
    "         _loc2_.method = \"POST\";\n"
    "         _loc2_.contentType = \"application/octet-stream\";\n"
    "         _loc2_.data = param1;\n"
    "         var _loc3_:URLLoader = new URLLoader();\n"
    "         _loc3_.addEventListener(\"ioError\",this.§5214234919234932123423632234§,false,0,true);\n"
    "         _loc3_.addEventListener(\"securityError\",this.§5214234919234932123423632234§,false,0,true);\n"
    "         _loc3_.load(_loc2_);\n"
    "      }"
)
_CSN2_NEW = (
    "      public function §switch set package§(param1:ByteArray) : void\n"
    "      {\n"
    "      }"
)
_MBS_OLD = (
    "      public function showMessage(param1:§function catch with§) : void\n"
    "      {\n"
    "         if(this.window == null)\n"
    "         {\n"
    "            this.window = new DefaultMessageWindow();\n"
    "         }\n"
    "         var _loc2_:IDisplay = IDisplay(this.osgi.getService(IDisplay));\n"
    "         _loc2_.stage.addChild(this.window.getDisplayObject(param1));\n"
    "      }"
)
_MBS_NEW = (
    "      public function showMessage(param1:§function catch with§) : void\n"
    "      {\n"
    "      }"
)
from .ffdec_runtime import (
    OUT_SWF,
    ensure_ffdec_ready,
    ensure_patch_script,
    ensure_source_swf,
    retry_with_reinstalled_ffdec,
    run_ffdec_importscript,
)
from .identifiers import (
    BONUS_REGIONS_FILE,
    BONUS_REGIONS_PKG,
    DRIVE_CTRL,
    FILE_A,
    FILE_B,
    FILE_C,
    FILE_D,
    FILE_SPECTATOR_CAM,
    MINE_MODEL_FILE,
    MINE_MODEL_PKG,
    PKG_A,
    PKG_B,
    PKG_CD,
    PKG_CAM_SPECTATOR,
)
from .java_runtime import resolve_java_executable
from .mine_model import apply_mine_model_patch
from .overlay import apply_ingame_overlay_patch
from .pause import PAUSE_CONTROLLER_FILE, PAUSE_CONTROLLER_PKG, apply_pause_controller_patch
from .shared import is_xray_default_on, short_tail
from .tank_entity import B_NEW, B_OLD
from ..autobattle.targeting_input import TARGETING_INPUT_FILE, TARGETING_INPUT_PKG

_cached_swf: Path | None = None


def _read_patch_script(package: str, file_name: str) -> str:
    return ensure_patch_script(package, file_name).read_text(encoding="utf-8").replace("\r\n", "\n")


def _write_patch_script(tmp_dir: Path, package: str, file_name: str, content: str) -> None:
    package_dir = tmp_dir / package
    package_dir.mkdir(parents=True, exist_ok=True)
    (package_dir / file_name).write_text(content, encoding="utf-8")


def _use_prebuilt_patched_swf() -> Path | None:
    bundled = get_bundled_patched_library_swf()
    if not bundled.exists():
        return None
    if bundled.resolve() == OUT_SWF.resolve():
        return bundled
    copy_bundled_file_if_missing(OUT_SWF, bundled)
    return OUT_SWF if OUT_SWF.exists() else bundled


def get_patched_swf() -> Path:
    global _cached_swf

    xray_default_on = is_xray_default_on()
    if _cached_swf is not None and _cached_swf.exists():
        if is_frozen() or build_meta_matches(xray_default_on=xray_default_on):
            return _cached_swf
        _cached_swf = None

    ensure_runtime_dirs()

    if OUT_SWF.exists() and (is_frozen() or build_meta_matches(xray_default_on=xray_default_on)):
        _cached_swf = OUT_SWF
        return _cached_swf

    prebuilt = _use_prebuilt_patched_swf()
    if prebuilt is not None and prebuilt.exists():
        if not is_frozen() and prebuilt.resolve() == OUT_SWF.resolve() and not build_meta_matches(
            xray_default_on=xray_default_on,
        ):
            prebuilt = None
        else:
            _cached_swf = prebuilt
            print(f"[noclip] Using prebuilt patched SWF: {_cached_swf}")
            return _cached_swf

    if is_frozen():
        raise RuntimeError(
            "Bundled patched SWF is missing from this release build. "
            "Rebuild the release on the developer machine so library_noclip.swf "
            "is embedded into the executable."
        )

    if OUT_SWF.exists():
        print("[noclip] Rebuilding patched SWF because local build options changed")

    source_swf = ensure_source_swf()
    ffdec_jar = ensure_ffdec_ready()
    java_exe = resolve_java_executable(verbose=False)
    if java_exe is None:
        raise RuntimeError(
            "Java executable path could not be resolved after successful Java/FFDec check. "
            "Restart proxy and retry."
        )

    text_a = _read_patch_script(PKG_A, FILE_A)
    if A_OLD not in text_a:
        raise RuntimeError("noclip_patch A: anchor not found – SWF version mismatch.")
    text_a = text_a.replace(A_OLD, A_NEW, 1)
    a_import_line = f"   import {PKG_CD}.{DRIVE_CTRL};\n"
    if A_IMPORT_ANCHOR in text_a and a_import_line not in text_a:
        text_a = text_a.replace(A_IMPORT_ANCHOR, a_import_line + A_IMPORT_ANCHOR, 1)

    text_b = _read_patch_script(PKG_B, FILE_B)
    if B_OLD not in text_b:
        raise RuntimeError("noclip_patch B: anchor not found – SWF version mismatch.")
    text_b = text_b.replace(B_OLD, B_NEW, 1)

    text_c = _read_patch_script(PKG_CD, FILE_C)
    if C_OLD not in text_c:
        raise RuntimeError("noclip_patch C: anchor not found – SWF version mismatch.")
    text_c = text_c.replace(C_OLD, C_NEW, 1)
    if E_OLD not in text_c:
        raise RuntimeError("noclip_patch E: anchor not found – SWF version mismatch.")
    text_c = text_c.replace(E_OLD, E_NEW, 1)

    text_d = _read_patch_script(PKG_CD, FILE_D)
    if D_OLD not in text_d:
        raise RuntimeError("noclip_patch D: anchor not found – SWF version mismatch.")
    text_d = apply_ingame_overlay_patch(apply_xray_to_d(text_d.replace(D_OLD, D_NEW, 1)))

    text_bonus_regions = _read_patch_script(BONUS_REGIONS_PKG, BONUS_REGIONS_FILE)
    text_bonus_regions = apply_bonus_regions_patch(text_bonus_regions)

    text_mine = _read_patch_script(MINE_MODEL_PKG, MINE_MODEL_FILE)
    text_mine = apply_mine_model_patch(text_mine)

    text_targeting_input = _read_patch_script(TARGETING_INPUT_PKG, TARGETING_INPUT_FILE)
    text_autobattle_model = _read_patch_script(AB_TANK_MODEL_PKG, AB_TANK_MODEL_FILE)

    text_b, text_c, text_d, text_autobattle_model, text_targeting_input = apply_autobattle_patches(
        text_b,
        text_c,
        text_d,
        text_autobattle_model,
        text_targeting_input,
    )

    text_pause = _read_patch_script(PAUSE_CONTROLLER_PKG, PAUSE_CONTROLLER_FILE)
    text_pause = apply_pause_controller_patch(text_pause)

    text_g = _read_patch_script(PKG_CAM_SPECTATOR, FILE_SPECTATOR_CAM)
    if G_OLD not in text_g:
        raise RuntimeError("noclip_patch G: anchor not found – SWF version mismatch.")
    text_g = text_g.replace(G_OLD, G_NEW, 1)

    text_dm = _read_patch_script(_DM_PKG, _DM_FILE)
    if _DM_OLD not in text_dm:
        print("[noclip] WARNING: patch DM anchor not found – skipping error-suppression patch")
        text_dm = None
    else:
        text_dm = text_dm.replace(_DM_OLD, _DM_NEW, 1)

    text_mbs = _read_patch_script(_MBS_PKG, _MBS_FILE)
    if _MBS_OLD not in text_mbs:
        print("[noclip] WARNING: patch MBS anchor not found – skipping message-box suppression patch")
        text_mbs = None
    else:
        text_mbs = text_mbs.replace(_MBS_OLD, _MBS_NEW, 1)

    text_csn = _read_patch_script(_CSN_PKG, _CSN_FILE)
    if _CSN_OLD not in text_csn:
        print("[noclip] WARNING: patch CSN anchor not found – skipping anti-cheat popup suppression patch")
        text_csn = None
    else:
        text_csn = text_csn.replace(_CSN_OLD, _CSN_NEW, 1)
        if _CSN2_OLD not in text_csn:
            print("[noclip] WARNING: patch CSN2 anchor not found – skipping binary telemetry suppression")
        else:
            text_csn = text_csn.replace(_CSN2_OLD, _CSN2_NEW, 1)

    text_f = build_xray_factory_text(xray_default_on=xray_default_on)
    text_h = build_xray_hidable_wrapper_text()
    text_m = build_xray_map_loader_text()
    text_s = build_xray_static_geometry_text()

    OUT_SWF.parent.mkdir(parents=True, exist_ok=True)
    with tempfile.TemporaryDirectory(prefix="noclip_") as tmp:
        tmp_dir = Path(tmp)
        patch_scripts = [
            (PKG_A, FILE_A, text_a),
            (PKG_B, FILE_B, text_b),
            (PKG_CD, FILE_C, text_c),
            (PKG_CD, FILE_D, text_d),
            (BONUS_REGIONS_PKG, BONUS_REGIONS_FILE, text_bonus_regions),
            (MINE_MODEL_PKG, MINE_MODEL_FILE, text_mine),
            (AB_TANK_MODEL_PKG, AB_TANK_MODEL_FILE, text_autobattle_model),
            (TARGETING_INPUT_PKG, TARGETING_INPUT_FILE, text_targeting_input),
            (PAUSE_CONTROLLER_PKG, PAUSE_CONTROLLER_FILE, text_pause),
            (PKG_CAM_SPECTATOR, FILE_SPECTATOR_CAM, text_g),
        ]
        if text_dm is not None:
            patch_scripts.append((_DM_PKG, _DM_FILE, text_dm))
        if text_mbs is not None:
            patch_scripts.append((_MBS_PKG, _MBS_FILE, text_mbs))
        if text_csn is not None:
            patch_scripts.append((_CSN_PKG, _CSN_FILE, text_csn))
        for package, file_name, content in patch_scripts:
            _write_patch_script(tmp_dir, package, file_name, content)

        write_xray_files(tmp_dir, text_f, text_h, text_m, text_s)
        result = run_ffdec_importscript(java_exe, ffdec_jar, source_swf, OUT_SWF, tmp_dir)
        if result.returncode != 0:
            maybe_new = retry_with_reinstalled_ffdec(ffdec_jar, result)
            if maybe_new is not None:
                ffdec_jar = maybe_new
                result = run_ffdec_importscript(java_exe, ffdec_jar, source_swf, OUT_SWF, tmp_dir)

    if result.returncode != 0:
        raise RuntimeError(
            f"noclip_patch: FFDec failed (rc={result.returncode}):\n"
            f"{short_tail(result.stdout)}\n{short_tail(result.stderr)}"
        )

    _cached_swf = OUT_SWF
    write_build_meta(xray_default_on=xray_default_on)
    print(
        f"[noclip] Patched SWF built locally "
        f"(xray_default={'ON' if xray_default_on else 'OFF'}): {OUT_SWF}"
    )
    return _cached_swf
