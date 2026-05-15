from __future__ import annotations

import ctypes

from .state import AppState

VK_F6 = 0x75
VK_F7 = 0x76
VK_F8 = 0x77
VK_F9 = 0x78
VK_LSHIFT = 0xA0
VK_LCONTROL = 0xA2
VK_OEM_3 = 0xC0
VK_R = 0x52


class HotkeyMirror:
    def __init__(self, state: AppState) -> None:
        self._state = state
        self._hold_active = False
        self._vk_prev_down: dict[int, bool] = {}
        try:
            self._get_async_key_state = ctypes.windll.user32.GetAsyncKeyState
        except Exception:
            self._get_async_key_state = None

    def _read_vk(self, vk_code: int) -> tuple[bool, bool]:
        getter = self._get_async_key_state
        if getter is None:
            return False, False
        try:
            state = getter(vk_code)
        except Exception:
            return False, False
        return bool(state & 0x8000), bool(state & 0x0001)

    def _edge_triggered(self, vk_code: int) -> bool:
        is_down, pressed = self._read_vk(vk_code)
        prev_down = self._vk_prev_down.get(vk_code, False)
        self._vk_prev_down[vk_code] = is_down
        return pressed or (is_down and not prev_down)

    def poll(self) -> None:
        if self._get_async_key_state is None:
            return

        mapping = {
            VK_F6: "pickup_enabled",
            VK_F7: "freecam_enabled",
            VK_F8: "noclip_enabled",
            VK_F9: "xray_enabled",
        }
        for vk_code, feature_name in mapping.items():
            if self._edge_triggered(vk_code):
                self._state.toggle_feature(feature_name)

        noclip_enabled = self._state.feature_enabled("noclip_enabled")
        r_down, _ = self._read_vk(VK_R)
        shift_down, _ = self._read_vk(VK_LSHIFT)
        ctrl_down, _ = self._read_vk(VK_LCONTROL)
        yo_down, yo_pressed = self._read_vk(VK_OEM_3)
        yo_prev = self._vk_prev_down.get(VK_OEM_3, False)

        if noclip_enabled and (yo_pressed or (yo_down and not yo_prev)):
            self._hold_active = not self._hold_active
        if not noclip_enabled:
            self._hold_active = False

        self._vk_prev_down[VK_OEM_3] = yo_down
        self._state.set_noclip_controls(
            hold_enabled=self._hold_active if noclip_enabled else False,
            level_active=r_down if noclip_enabled else False,
            shift_active=shift_down if noclip_enabled else False,
            ctrl_active=ctrl_down if noclip_enabled else False,
        )
