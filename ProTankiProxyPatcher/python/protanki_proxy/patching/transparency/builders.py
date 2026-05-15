from __future__ import annotations

import shutil
from pathlib import Path

from ...runtime_paths import find_bundled_decompiled_script, get_decompiled_scripts_dir
from .constants import (
    XRAY_ALPHA,
    _F_OLD,
    _FILE_F,
    _FILE_H,
    _FILE_M,
    _FILE_S,
    _H_IMPORT_NEW,
    _H_IMPORT_OLD,
    _H_NEW,
    _H_OLD,
    _M_ADDCHILD_LINE,
    _M_CREATE_TREE_NEW,
    _M_CREATE_TREE_OLD,
    _M_IMPORT_NEW,
    _M_IMPORT_OLD,
    _M_INSERT,
    _M_LOOP_ANCHOR,
    _M_STATIC_BUILD_INIT_NEW,
    _M_STATIC_BUILD_INIT_OLD,
    _PKG_ENGINE3D,
    _PKG_H,
    _PKG_M,
    _PKG_S,
    _S_BSP_OLD,
    _S_CASE_OLD,
    _S_IMPORT_NEW,
    _S_IMPORT_OLD,
    _S_STORE_TEXTURE_OLD,
    _S_THROW_FOR_OLD,
)
from .matcher import build_s_bsp_new, build_s_case_new, build_s_throw_for_new


def _build_factory_replacement(xray_default_on: bool) -> str:
    default_value = "true" if xray_default_on else "false"
    return (
        "      // -- xray patch F begin --\n"
        f"      public static var _xray_on_:Boolean = {default_value};\n"
        "      public static var _xray_objects_:Array = [];\n"
        "      public static var _xray_base_alphas_:Array = [];\n"
        "      public static function _xray_toggle_():void\n"
        "      {\n"
        "         _xray_on_ = !_xray_on_;\n"
        "         var _i_:int = 0;\n"
        "         while(_i_ < _xray_objects_.length)\n"
        "         {\n"
        "            var _obj_:* = _xray_objects_[_i_];\n"
        "            if(_obj_ == null)\n"
        "            {\n"
        "               _i_++;\n"
        "               continue;\n"
        "            }\n"
        "            if(_xray_on_)\n"
        "            {\n"
        f"               _obj_.alpha = Number(_xray_base_alphas_[_i_]) * {XRAY_ALPHA};\n"
        "            }\n"
        "            else\n"
        "            {\n"
        "               _obj_.alpha = Number(_xray_base_alphas_[_i_]);\n"
        "            }\n"
        "            _i_++;\n"
        "         }\n"
        "      }\n"
        "      // -- xray patch F end --\n"
        "\n"
        "      public function DefaultTextureMaterialFactory()\n"
        "      {\n"
        "         super();\n"
        "      }\n"
        "      \n"
        "      public function createTextureMaterial(param1:BitmapData, param2:Boolean) : TextureMaterial\n"
        "      {\n"
        "         return new TextureMaterial(param1,false,true,param2 ? 2 : 0);\n"
        "      }"
    )


def apply_xray_to_d(text_d: str) -> str:
    import_anchor = "   import alternativa.tanks.service.settings.keybinding.KeysBindingService;\n"
    import_with_dtmf = (
        "   import alternativa.tanks.service.settings.keybinding.KeysBindingService;\n"
        "   import alternativa.tanks.engine3d.DefaultTextureMaterialFactory;\n"
    )
    if import_anchor in text_d and import_with_dtmf not in text_d:
        text_d = text_d.replace(import_anchor, import_with_dtmf, 1)

    early_return = "         if(!_loc5_)\n         {\n            return;\n         }\n"
    f9_handler = (
        "         if(param1.keyCode == 120 && param1.type == \"keyDown\")\n"
        "         {\n"
        "            DefaultTextureMaterialFactory._xray_toggle_();\n"
        "         }\n"
    )
    if early_return in text_d and f9_handler not in text_d:
        text_d = text_d.replace(early_return, f9_handler + early_return, 1)

    return text_d


def _get_src(pkg: Path, file_name: str) -> Path:
    runtime_file = get_decompiled_scripts_dir() / pkg / file_name
    if runtime_file.exists():
        return runtime_file

    bundled_file = find_bundled_decompiled_script(str(pkg), file_name)
    if bundled_file.exists():
        runtime_file.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(bundled_file, runtime_file)
        return runtime_file

    raise FileNotFoundError(f"transparency_patch: source file not found: {runtime_file}")


def build_xray_factory_text(xray_default_on: bool) -> str:
    text = _get_src(_PKG_ENGINE3D, _FILE_F).read_text(encoding="utf-8").replace("\r\n", "\n")
    if _F_OLD not in text:
        raise RuntimeError(
            "transparency_patch F: anchor (createTextureMaterial body) not found "
            "in DefaultTextureMaterialFactory.as - SWF version mismatch."
        )
    return text.replace(_F_OLD, _build_factory_replacement(xray_default_on), 1)


def build_xray_hidable_wrapper_text() -> str:
    text = _get_src(_PKG_H, _FILE_H).read_text(encoding="utf-8").replace("\r\n", "\n")
    if _H_IMPORT_OLD not in text:
        raise RuntimeError(
            "transparency_patch H-import: anchor not found in HidableObject3DWrapper.as "
            "- SWF version mismatch."
        )
    text = text.replace(_H_IMPORT_OLD, _H_IMPORT_NEW, 1)
    if _H_OLD not in text:
        raise RuntimeError(
            "transparency_patch H-body: anchor (setAlphaMultiplier) not found "
            "in HidableObject3DWrapper.as - SWF version mismatch."
        )
    return text.replace(_H_OLD, _H_NEW, 1)


def build_xray_map_loader_text() -> str:
    text = _get_src(_PKG_M, _FILE_M).read_text(encoding="utf-8").replace("\r\n", "\n")
    if _M_IMPORT_OLD not in text:
        raise RuntimeError(
            "transparency_patch M-import: anchor not found in map loader source "
            "- SWF version mismatch."
        )
    text = text.replace(_M_IMPORT_OLD, _M_IMPORT_NEW, 1)
    if _M_LOOP_ANCHOR not in text or _M_ADDCHILD_LINE not in text:
        raise RuntimeError(
            "transparency_patch M-body: anchor (map object attach loop) not found "
            "in map loader source - SWF version mismatch."
        )
    text = text.replace(_M_ADDCHILD_LINE, _M_INSERT + _M_ADDCHILD_LINE, 1)
    if _M_STATIC_BUILD_INIT_OLD not in text:
        raise RuntimeError(
            "transparency_patch M-reset: anchor (static build init) not found "
            "in map loader source - SWF version mismatch."
        )
    text = text.replace(_M_STATIC_BUILD_INIT_OLD, _M_STATIC_BUILD_INIT_NEW, 1)
    if _M_CREATE_TREE_OLD not in text:
        raise RuntimeError(
            "transparency_patch M-tree: anchor (KDContainer.createTree call) not found "
            "in map loader source - SWF version mismatch."
        )
    return text.replace(_M_CREATE_TREE_OLD, _M_CREATE_TREE_NEW, 1)


def build_xray_static_geometry_text() -> str:
    text = _get_src(_PKG_S, _FILE_S).read_text(encoding="utf-8").replace("\r\n", "\n")
    if _S_IMPORT_OLD not in text:
        raise RuntimeError(
            "transparency_patch S-import: anchor not found in static geometry source "
            "- SWF version mismatch."
        )
    text = text.replace(_S_IMPORT_OLD, _S_IMPORT_NEW, 1)
    if _S_THROW_FOR_OLD not in text:
        raise RuntimeError(
            "transparency_patch S-helper: anchor (texture-name function) not found "
            "in static geometry source - SWF version mismatch."
        )
    text = text.replace(_S_THROW_FOR_OLD, build_s_throw_for_new(), 1)
    if _S_CASE_OLD not in text:
        raise RuntimeError(
            "transparency_patch S-mesh: anchor (mesh texture assignment) not found "
            "in static geometry source - SWF version mismatch."
        )
    text = text.replace(_S_CASE_OLD, build_s_case_new(), 1)
    if _S_STORE_TEXTURE_OLD not in text:
        raise RuntimeError(
            "transparency_patch S-store: anchor (mesh->texture dictionary fill) not found "
            "in static geometry source - SWF version mismatch."
        )
    if _S_BSP_OLD not in text:
        raise RuntimeError(
            "transparency_patch S-bsp: anchor (BSP conversion loop) not found "
            "in static geometry source - SWF version mismatch."
        )
    return text.replace(_S_BSP_OLD, build_s_bsp_new(), 1)


def write_xray_files(tmp_dir: Path, text_f: str, text_h: str, text_m: str, text_s: str) -> None:
    for pkg, file_name, content in (
        (_PKG_ENGINE3D, _FILE_F, text_f),
        (_PKG_H, _FILE_H, text_h),
        (_PKG_M, _FILE_M, text_m),
        (_PKG_S, _FILE_S, text_s),
    ):
        pkg_dir = tmp_dir / pkg
        pkg_dir.mkdir(parents=True, exist_ok=True)
        (pkg_dir / file_name).write_text(content, encoding="utf-8")