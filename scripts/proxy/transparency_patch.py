"""
transparency_patch.py - xray/transparency patches for library.swf.

Rollback target:
    - keep the state where bushes/selected map objects became transparent;
    - disable runtime T-toggle logic (no TankInputController xray injection).

Patch F (DefaultTextureMaterialFactory):
    - Adds _xray_on_ static flag only (default value controlled by UI).

Patch H (HidableObject3DWrapper):
    - Applies object-level alpha multiplier when xray is enabled.

Patch M (Map loader object attach loop):
    - Applies alpha to objects from §get catch dynamic§() path.

Patch S (Static geometry builder):
    - Applies alpha to static mesh/BSP geometry by texture-name families
      (houses, walls, surfaces, map props).
"""
from __future__ import annotations

from pathlib import Path

from .runtime_paths import get_bundled_decompiled_scripts_dir, get_decompiled_scripts_dir
from .xray_texture_rules import (
    XRAY_TEXTURE_EXACT,
    XRAY_TEXTURE_EXCLUDED_EXACT,
    XRAY_MATCH_UNKNOWN_NAMES,
    XRAY_TEXTURE_PREFIX_BLOCKED_SUBSTRINGS,
    XRAY_TEXTURE_PREFIXES,
)

XRAY_ALPHA = 0.35

# Patch F: alternativa/tanks/engine3d/DefaultTextureMaterialFactory.as
_PKG_ENGINE3D = Path("alternativa") / "tanks" / "engine3d"
_FILE_F = "DefaultTextureMaterialFactory.as"
_F_OLD = (
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

# Patch H: §5214234043234056123423632234§/HidableObject3DWrapper.as
_PKG_H = Path("§5214234043234056123423632234§")
_FILE_H = "HidableObject3DWrapper.as"
_H_IMPORT_OLD = "   import alternativa.engine3d.core.Object3D;\n"
_H_IMPORT_NEW = (
    "   import alternativa.engine3d.core.Object3D;\n"
    "   import alternativa.tanks.engine3d.DefaultTextureMaterialFactory;\n"
)
_H_OLD = (
    "      public function setAlphaMultiplier(param1:Number) : void\n"
    "      {\n"
    "         this.object.alpha = param1;\n"
    "      }"
)
_H_NEW = (
    "      public function setAlphaMultiplier(param1:Number) : void\n"
    "      {\n"
    "         var _loc2_:Number = param1;\n"
    "         if(DefaultTextureMaterialFactory._xray_on_)\n"
    "         {\n"
    f"            _loc2_ = _loc2_ * {XRAY_ALPHA};\n"
    "         }\n"
    "         this.object.alpha = _loc2_;\n"
    "      }"
)

# Patch M: §5214236338236351123423632234§/§5214239451239464123423632234§.as
_PKG_M = Path("§5214236338236351123423632234§")
_FILE_M = "§5214239451239464123423632234§.as"
_M_IMPORT_OLD = "   import alternativa.utils.TextureMaterialRegistry;\n"
_M_IMPORT_NEW = (
    "   import alternativa.utils.TextureMaterialRegistry;\n"
    "   import alternativa.tanks.engine3d.DefaultTextureMaterialFactory;\n"
)
_M_LOOP_ANCHOR = "for each(var _loc4_ in this.§for set continue§.§get catch dynamic§())\n         {\n"
_M_ADDCHILD_LINE = "            this.§521423137462313759123423632234§.addChild(_loc4_);\n"
_M_INSERT = (
    "            DefaultTextureMaterialFactory._xray_objects_.push(_loc4_);\n"
    "            DefaultTextureMaterialFactory._xray_base_alphas_.push(_loc4_.alpha);\n"
    "            if(DefaultTextureMaterialFactory._xray_on_)\n"
    "            {\n"
    f"               _loc4_.alpha = _loc4_.alpha * {XRAY_ALPHA};\n"
    "            }\n"
)
_M_STATIC_BUILD_INIT_OLD = (
    "         this.§for set continue§ = new §5214237967237980123423632234§(this.§5214237932237945123423632234§);\n"
)
_M_STATIC_BUILD_INIT_NEW = (
    "         DefaultTextureMaterialFactory._xray_objects_.length = 0;\n"
    "         DefaultTextureMaterialFactory._xray_base_alphas_.length = 0;\n"
    "         this.§for set continue§ = new §5214237967237980123423632234§(this.§5214237932237945123423632234§);\n"
)
_M_CREATE_TREE_OLD = (
    "         this.§521423137462313759123423632234§.createTree(_loc2_,this.§for set continue§.§5214239264239277123423632234§());\n"
)
_M_CREATE_TREE_NEW = (
    "         this.§521423137462313759123423632234§.createTree(_loc2_,this.§for set continue§.§5214239264239277123423632234§());\n"
    "         this.§521423137462313759123423632234§.batched = false;\n"
)

# Patch S: §5214236338236351123423632234§/§5214237967237980123423632234§.as
_PKG_S = Path("§5214236338236351123423632234§")
_FILE_S = "§5214237967237980123423632234§.as"
_S_IMPORT_OLD = "   import alternativa.engine3d.objects.Sprite3D;\n"
_S_IMPORT_NEW = (
    "   import alternativa.engine3d.objects.Sprite3D;\n"
    "   import alternativa.tanks.engine3d.DefaultTextureMaterialFactory;\n"
)
_S_THROW_FOR_OLD = (
    "      private static function §throw for§(param1:XML) : String\n"
    "      {\n"
    "         var _loc3_:String = null;\n"
    "         var _loc2_:XMLList = param1.elements(\"texture-name\");\n"
    "         if(_loc2_.length() > 0)\n"
    "         {\n"
    "            _loc3_ = _loc2_[0];\n"
    "         }\n"
    "         return _loc3_ || \"$$$_DEFAULT_TEXTURE_$$$\";\n"
    "      }"
)


def _as3_escape(value: str) -> str:
    return value.replace("\\", "\\\\").replace('"', '\\"')


def _build_xray_texture_matcher_as3() -> str:
    lines: list[str] = [
        "      private static function _xrayMatchTextureName(param1:String) : Boolean\n",
        "      {\n",
        "         var _loc2_:String = param1 == null ? \"\" : param1.toLowerCase();\n",
        "         var _loc3_:int = 0;\n",
        "         if(_loc2_.indexOf(\"#\") == 0)\n",
        "         {\n",
        "            _loc2_ = _loc2_.substr(1);\n",
        "         }\n",
        "         else\n",
        "         {\n",
        "            _loc3_ = _loc2_.indexOf(\"#\");\n",
        "            if(_loc3_ >= 0 && _loc3_ < _loc2_.length - 1)\n",
        "            {\n",
        "               _loc2_ = _loc2_.substr(_loc3_ + 1);\n",
        "            }\n",
        "         }\n",
    ]

    excluded = sorted(set(XRAY_TEXTURE_EXCLUDED_EXACT))
    for name in excluded:
        q = _as3_escape(name)
        lines.extend(
            [
                f"         if(_loc2_ == \"{q}\")\n",
                "         {\n",
                "            return false;\n",
                "         }\n",
            ]
        )

    exact = sorted(set(XRAY_TEXTURE_EXACT))
    excluded_set = set(excluded)
    for name in exact:
        if name in excluded_set:
            continue
        q = _as3_escape(name)
        lines.extend(
            [
                f"         if(_loc2_ == \"{q}\")\n",
                "         {\n",
                "            return true;\n",
                "         }\n",
            ]
        )

    blocked_map = XRAY_TEXTURE_PREFIX_BLOCKED_SUBSTRINGS
    for prefix in sorted(blocked_map.keys()):
        cond_parts = [f'_loc2_.indexOf("{_as3_escape(prefix)}") == 0']
        for blocked in sorted(set(blocked_map[prefix])):
            cond_parts.append(f'_loc2_.indexOf("{_as3_escape(blocked)}") == -1')
        cond = " && ".join(cond_parts)
        lines.extend(
            [
                f"         if({cond})\n",
                "         {\n",
                "            return true;\n",
                "         }\n",
            ]
        )

    blocked_prefixes = set(blocked_map.keys())
    for prefix in sorted(set(XRAY_TEXTURE_PREFIXES)):
        if prefix in blocked_prefixes:
            continue
        q = _as3_escape(prefix)
        lines.extend(
            [
                f"         if(_loc2_.indexOf(\"{q}\") == 0)\n",
                "         {\n",
                "            return true;\n",
                "         }\n",
            ]
        )

    if XRAY_MATCH_UNKNOWN_NAMES:
        lines.extend(
            [
                "         return _loc2_.length > 0;\n",
                "      }",
            ]
        )
    else:
        lines.extend(
            [
                "         return false;\n",
                "      }",
            ]
        )
    return "".join(lines)


def _build_s_throw_for_new() -> str:
    return (
        "      private static function §throw for§(param1:XML) : String\n"
        "      {\n"
        "         var _loc3_:String = null;\n"
        "         var _loc2_:XMLList = param1.elements(\"texture-name\");\n"
        "         if(_loc2_.length() > 0)\n"
        "         {\n"
        "            _loc3_ = _loc2_[0];\n"
        "         }\n"
        "         return _loc3_ || \"$$$_DEFAULT_TEXTURE_$$$\";\n"
        "      }\n"
        "      \n"
        + _build_xray_texture_matcher_as3()
    )


_S_THROW_FOR_NEW = _build_s_throw_for_new()
_S_CASE_OLD = (
    "         var _loc4_:String = §throw for§(param1);\n"
    "         this.§switch catch package§.§521423113682311381123423632234§(param2,_loc4_,_loc6_,\"display\");\n"
)
_S_CASE_NEW = (
    "         var _loc4_:String = §throw for§(param1);\n"
    "         var _loc7_:String = String(param2.§521423109572310970123423632234§[_loc4_]);\n"
    "         var _loc8_:String = String(param1.@name);\n"
    "         if(_xrayMatchTextureName(_loc4_) || _xrayMatchTextureName(_loc7_) || _xrayMatchTextureName(_loc8_))\n"
    "         {\n"
    "            DefaultTextureMaterialFactory._xray_objects_.push(_loc6_);\n"
    "            DefaultTextureMaterialFactory._xray_base_alphas_.push(_loc6_.alpha);\n"
    "            if(DefaultTextureMaterialFactory._xray_on_)\n"
    "            {\n"
    f"               _loc6_.alpha = _loc6_.alpha * {XRAY_ALPHA};\n"
    "            }\n"
    "         }\n"
    "         this.§switch catch package§.§521423113682311381123423632234§(param2,_loc4_,_loc6_,\"display\");\n"
)
_S_STORE_TEXTURE_OLD = (
    "         this.§5214233278233291123423632234§[_loc6_] = param2;\n"
    "         this.§set package function§[_loc6_] = _loc4_;\n"
)
_S_STORE_TEXTURE_NEW = (
    "         this.§5214233278233291123423632234§[_loc6_] = param2;\n"
    "         this.§set package function§[_loc6_] = _loc4_;\n"
)
_S_BSP_OLD = (
    "            _loc2_.rotationZ = _loc1_.rotationZ;\n"
    "            this.§switch catch package§.§5214236208236221123423632234§(this.§5214233278233291123423632234§[_loc1_],this.§set package function§[_loc1_],_loc2_);\n"
)
_S_BSP_NEW = (
    "            _loc2_.rotationZ = _loc1_.rotationZ;\n"
    "            var _loc4_:String = String(this.§set package function§[_loc1_]);\n"
    "            var _loc5_:String = String(this.§5214233278233291123423632234§[_loc1_].§521423109572310970123423632234§[_loc4_]);\n"
    "            if(_xrayMatchTextureName(_loc4_) || _xrayMatchTextureName(_loc5_))\n"
    "            {\n"
    "               DefaultTextureMaterialFactory._xray_objects_.push(_loc2_);\n"
    "               DefaultTextureMaterialFactory._xray_base_alphas_.push(_loc2_.alpha);\n"
    "               if(DefaultTextureMaterialFactory._xray_on_)\n"
    "               {\n"
    f"                  _loc2_.alpha = _loc2_.alpha * {XRAY_ALPHA};\n"
    "               }\n"
    "            }\n"
    "            this.§switch catch package§.§5214236208236221123423632234§(this.§5214233278233291123423632234§[_loc1_],this.§set package function§[_loc1_],_loc2_);\n"
)


def _f_new(xray_default_on: bool) -> str:
    """Return replacement AS3 text for Patch F."""
    default_val = "true" if xray_default_on else "false"
    return (
        "      // -- xray patch F begin --\n"
        f"      public static var _xray_on_:Boolean = {default_val};\n"
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
    """Add F9 real-time xray toggle key (keyCode 120) to TankInputController."""
    # 1) Inject import for DefaultTextureMaterialFactory after KeysBindingService import.
    _import_anchor = "   import alternativa.tanks.service.settings.keybinding.KeysBindingService;\n"
    _import_with_dtmf = (
        "   import alternativa.tanks.service.settings.keybinding.KeysBindingService;\n"
        "   import alternativa.tanks.engine3d.DefaultTextureMaterialFactory;\n"
    )
    if _import_anchor in text_d and _import_with_dtmf not in text_d:
        text_d = text_d.replace(_import_anchor, _import_with_dtmf, 1)

    # 2) Insert F9 handler before the !_loc5_ early-return guard (already present from _D_NEW).
    _early_return = "         if(!_loc5_)\n         {\n            return;\n         }\n"
    _f9_handler = (
        "         if(param1.keyCode == 120 && param1.type == \"keyDown\")\n"
        "         {\n"
        "            DefaultTextureMaterialFactory._xray_toggle_();\n"
        "         }\n"
    )
    if _early_return in text_d and _f9_handler not in text_d:
        text_d = text_d.replace(_early_return, _f9_handler + _early_return, 1)

    return text_d


def _get_src(pkg: Path, file_name: str) -> Path:
    runtime_file = get_decompiled_scripts_dir() / pkg / file_name
    if runtime_file.exists():
        return runtime_file

    bundled_file = get_bundled_decompiled_scripts_dir() / pkg / file_name
    if bundled_file.exists():
        runtime_file.parent.mkdir(parents=True, exist_ok=True)
        import shutil
        shutil.copy2(bundled_file, runtime_file)
        return runtime_file

    raise FileNotFoundError(f"transparency_patch: source file not found: {runtime_file}")


def build_xray_factory_text(xray_default_on: bool) -> str:
    src = _get_src(_PKG_ENGINE3D, _FILE_F)
    text = src.read_text(encoding="utf-8").replace("\r\n", "\n")
    if _F_OLD not in text:
        raise RuntimeError(
            "transparency_patch F: anchor (createTextureMaterial body) not found "
            "in DefaultTextureMaterialFactory.as - SWF version mismatch."
        )
    return text.replace(_F_OLD, _f_new(xray_default_on), 1)


def build_xray_hidable_wrapper_text() -> str:
    src = _get_src(_PKG_H, _FILE_H)
    text = src.read_text(encoding="utf-8").replace("\r\n", "\n")

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
    src = _get_src(_PKG_M, _FILE_M)
    text = src.read_text(encoding="utf-8").replace("\r\n", "\n")

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
    src = _get_src(_PKG_S, _FILE_S)
    text = src.read_text(encoding="utf-8").replace("\r\n", "\n")

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
    text = text.replace(_S_THROW_FOR_OLD, _S_THROW_FOR_NEW, 1)

    if _S_CASE_OLD not in text:
        raise RuntimeError(
            "transparency_patch S-mesh: anchor (mesh texture assignment) not found "
            "in static geometry source - SWF version mismatch."
        )
    text = text.replace(_S_CASE_OLD, _S_CASE_NEW, 1)

    if _S_STORE_TEXTURE_OLD not in text:
        raise RuntimeError(
            "transparency_patch S-store: anchor (mesh->texture dictionary fill) not found "
            "in static geometry source - SWF version mismatch."
        )
    text = text.replace(_S_STORE_TEXTURE_OLD, _S_STORE_TEXTURE_NEW, 1)

    if _S_BSP_OLD not in text:
        raise RuntimeError(
            "transparency_patch S-bsp: anchor (BSP conversion loop) not found "
            "in static geometry source - SWF version mismatch."
        )
    return text.replace(_S_BSP_OLD, _S_BSP_NEW, 1)


def write_xray_files(
    tmp_dir: Path,
    text_f: str,
    text_h: str,
    text_m: str,
    text_s: str,
) -> None:
    pkg_dir_f = tmp_dir / _PKG_ENGINE3D
    pkg_dir_f.mkdir(parents=True, exist_ok=True)
    (pkg_dir_f / _FILE_F).write_text(text_f, encoding="utf-8")

    pkg_dir_h = tmp_dir / _PKG_H
    pkg_dir_h.mkdir(parents=True, exist_ok=True)
    (pkg_dir_h / _FILE_H).write_text(text_h, encoding="utf-8")

    pkg_dir_m = tmp_dir / _PKG_M
    pkg_dir_m.mkdir(parents=True, exist_ok=True)
    (pkg_dir_m / _FILE_M).write_text(text_m, encoding="utf-8")

    pkg_dir_s = tmp_dir / _PKG_S
    pkg_dir_s.mkdir(parents=True, exist_ok=True)
    (pkg_dir_s / _FILE_S).write_text(text_s, encoding="utf-8")
