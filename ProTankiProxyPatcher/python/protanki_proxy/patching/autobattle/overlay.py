from __future__ import annotations

from ..noclip.identifiers import DRIVE_CTRL
from .shared import AUTOBATTLE_TOGGLE_ID, AUTOBATTLE_TOGGLE_LABEL, replace_once

_CREATE_OLD = "         this._ptpCreateToggle(\"antiafk\",\"Anti-AFK[F10]\");\n"
_CREATE_NEW = _CREATE_OLD + f"         this._ptpCreateToggle(\"{AUTOBATTLE_TOGGLE_ID}\",\"{AUTOBATTLE_TOGGLE_LABEL}\");\n"

_LAYOUT_OLD = (
    "         Sprite(this._ptpToggleButtons_[\"antiafk\"]).x = 110;\n"
    "         Sprite(this._ptpToggleButtons_[\"antiafk\"]).y = 50;\n"
)

_LAYOUT_NEW = (
    _LAYOUT_OLD
    + f"         Sprite(this._ptpToggleButtons_[\"{AUTOBATTLE_TOGGLE_ID}\"]).x = 214;\n"
    + f"         Sprite(this._ptpToggleButtons_[\"{AUTOBATTLE_TOGGLE_ID}\"]).y = 50;\n"
)

_REFRESH_OLD = "         this._ptpUpdateAntiAfk();\n"
_REFRESH_NEW = (
    f"         this._ptpSetToggleState(\"{AUTOBATTLE_TOGGLE_ID}\",{DRIVE_CTRL}._autobattle_enabled_);\n"
    + _REFRESH_OLD
)


def apply_autobattle_overlay_patch(text_d: str) -> str:
    text_d = replace_once(text_d, "overlay create toggle", _CREATE_OLD, _CREATE_NEW)
    text_d = replace_once(text_d, "overlay layout toggle", _LAYOUT_OLD, _LAYOUT_NEW)
    text_d = replace_once(text_d, "overlay refresh toggle", _REFRESH_OLD, _REFRESH_NEW)
    return text_d