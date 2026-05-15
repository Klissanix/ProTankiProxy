from __future__ import annotations

from ..xray_texture_rules import (
    XRAY_MATCH_UNKNOWN_NAMES,
    XRAY_TEXTURE_EXACT,
    XRAY_TEXTURE_EXCLUDED_EXACT,
    XRAY_TEXTURE_PREFIX_BLOCKED_SUBSTRINGS,
    XRAY_TEXTURE_PREFIXES,
)
from .constants import XRAY_ALPHA


def _as3_escape(value: str) -> str:
    return value.replace("\\", "\\\\").replace('"', '\\"')


def build_xray_texture_matcher_as3() -> str:
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
        escaped = _as3_escape(name)
        lines.extend(
            [
                f"         if(_loc2_ == \"{escaped}\")\n",
                "         {\n",
                "            return false;\n",
                "         }\n",
            ]
        )

    excluded_set = set(excluded)
    for name in sorted(set(XRAY_TEXTURE_EXACT)):
        if name in excluded_set:
            continue
        escaped = _as3_escape(name)
        lines.extend(
            [
                f"         if(_loc2_ == \"{escaped}\")\n",
                "         {\n",
                "            return true;\n",
                "         }\n",
            ]
        )

    blocked_map = XRAY_TEXTURE_PREFIX_BLOCKED_SUBSTRINGS
    for prefix in sorted(blocked_map):
        conditions = [f'_loc2_.indexOf("{_as3_escape(prefix)}") == 0']
        for blocked in sorted(set(blocked_map[prefix])):
            conditions.append(f'_loc2_.indexOf("{_as3_escape(blocked)}") == -1')
        lines.extend(
            [
                f"         if({' && '.join(conditions)})\n",
                "         {\n",
                "            return true;\n",
                "         }\n",
            ]
        )

    blocked_prefixes = set(blocked_map)
    for prefix in sorted(set(XRAY_TEXTURE_PREFIXES)):
        if prefix in blocked_prefixes:
            continue
        escaped = _as3_escape(prefix)
        lines.extend(
            [
                f"         if(_loc2_.indexOf(\"{escaped}\") == 0)\n",
                "         {\n",
                "            return true;\n",
                "         }\n",
            ]
        )

    tail = "         return _loc2_.length > 0;\n" if XRAY_MATCH_UNKNOWN_NAMES else "         return false;\n"
    lines.extend([tail, "      }"])
    return "".join(lines)


def build_s_throw_for_new() -> str:
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
        + build_xray_texture_matcher_as3()
    )


def build_s_case_new() -> str:
    return (
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


def build_s_bsp_new() -> str:
    return (
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