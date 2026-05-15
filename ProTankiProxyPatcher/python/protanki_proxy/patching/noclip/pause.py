from __future__ import annotations

from .identifiers import DRIVE_CTRL, PKG_CD

PAUSE_CONTROLLER_PKG = "§static var set§"
PAUSE_CONTROLLER_FILE = "§case§.as"

PAUSE_CONTROLLER_IMPORT_ANCHOR = "   import alternativa.tanks.services.battleinput.BattleInputService;\n"

PAUSE_CONTROLLER_DEACTIVATE_OLD = (
    "      private function §else set package§(param1:Event) : void\n"
    "      {\n"
    "         if(!§521423422355123423632234§.isFullscreen())\n"
    "         {\n"
    "            this.§true const set§();\n"
    "         }\n"
    "      }\n"
)

PAUSE_CONTROLLER_DEACTIVATE_NEW = (
    "      private function §else set package§(param1:Event) : void\n"
    "      {\n"
    f"         if({DRIVE_CTRL}._anti_afk_enabled_)\n"
    "         {\n"
    "            return;\n"
    "         }\n"
    "         if(!§521423422355123423632234§.isFullscreen())\n"
    "         {\n"
    "            this.§true const set§();\n"
    "         }\n"
    "      }\n"
)


def apply_pause_controller_patch(text: str) -> str:
    import_line = f"   import {PKG_CD}.{DRIVE_CTRL};\n"
    if import_line not in text:
        if PAUSE_CONTROLLER_IMPORT_ANCHOR not in text:
            raise RuntimeError("pause controller import anchor not found - SWF version mismatch.")
        text = text.replace(PAUSE_CONTROLLER_IMPORT_ANCHOR, import_line + PAUSE_CONTROLLER_IMPORT_ANCHOR, 1)

    if PAUSE_CONTROLLER_DEACTIVATE_OLD not in text:
        raise RuntimeError("pause controller deactivate anchor not found - SWF version mismatch.")

    return text.replace(PAUSE_CONTROLLER_DEACTIVATE_OLD, PAUSE_CONTROLLER_DEACTIVATE_NEW, 1)