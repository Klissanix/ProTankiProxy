from __future__ import annotations

from .shared import replace_once

AB_TANK_MODEL_PKG = "§5214235774235787123423632234§"
AB_TANK_MODEL_FILE = "§super var dynamic§.as"
AB_TANK_MODEL_CLASS = "§super var dynamic§"
AB_TANK_MODEL_STATIC_FIELD = "_ptpAutobattleModel_"

_STATE_OLD = "      public static var §for continue§:ResourceRegistry;\n"
_STATE_NEW = _STATE_OLD + f"      public static var {AB_TANK_MODEL_STATIC_FIELD}:*;\n"

_CTOR_OLD = "         super();\n"
_CTOR_NEW = _CTOR_OLD + f"         {AB_TANK_MODEL_CLASS}.{AB_TANK_MODEL_STATIC_FIELD} = this;\n"


def apply_autobattle_tank_registry_model_patch(text: str) -> str:
    text = replace_once(text, "autobattle model state", _STATE_OLD, _STATE_NEW)
    text = replace_once(text, "autobattle model ctor", _CTOR_OLD, _CTOR_NEW)
    return text