from __future__ import annotations

AUTOBATTLE_TOGGLE_ID = "autobattle"
AUTOBATTLE_TOGGLE_LABEL = "AutoBattle[F4]"
AUTOBATTLE_KEYCODE = 115
AUTOBATTLE_NEAREST_METHOD = "_ptpGetAutobattleNearestTank"


def replace_once(text: str, label: str, old: str, new: str) -> str:
    if old not in text:
        raise RuntimeError(f"autobattle_patch {label}: anchor not found - SWF version mismatch.")
    return text.replace(old, new, 1)