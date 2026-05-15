from __future__ import annotations

from .controls import apply_autobattle_controls_patch
from .overlay import apply_autobattle_overlay_patch
from .tank_registry_model import apply_autobattle_tank_registry_model_patch
from .tank_runtime import apply_autobattle_tank_patch
from .targeting_input import apply_autobattle_targeting_input_patch


def apply_autobattle_patches(
    text_b: str,
    text_c: str,
    text_d: str,
    text_tank_model: str,
    text_targeting_input: str,
) -> tuple[str, str, str, str, str]:
    text_b = apply_autobattle_tank_patch(text_b)
    text_c, text_d = apply_autobattle_controls_patch(text_c, text_d)
    text_d = apply_autobattle_overlay_patch(text_d)
    text_tank_model = apply_autobattle_tank_registry_model_patch(text_tank_model)
    text_targeting_input = apply_autobattle_targeting_input_patch(text_targeting_input)
    return text_b, text_c, text_d, text_tank_model, text_targeting_input