from __future__ import annotations

import threading
import time


class AppState:
    def __init__(self) -> None:
        self._lock = threading.Lock()
        self._patch_ready = False
        self._patch_path = ""
        self._swf_served = False
        self._http_requests = 0
        self._config_requests = 0
        self._library_requests = 0
        self._passthrough_requests = 0
        self._last_request_path = ""
        self._last_library_served_at = 0.0
        self._fallback_cdn_ips: list[str] = []
        self._hosts_redirects = 0
        self._cache_removed = 0
        self._config_alias_ready = False
        self._last_error = ""
        self._pickup_enabled = False
        self._freecam_enabled = False
        self._noclip_enabled = False
        self._xray_enabled = False
        self._hold_enabled = False
        self._level_active = False
        self._shift_active = False
        self._ctrl_active = False

    def set_patch_ready(self, path: str) -> None:
        with self._lock:
            self._patch_ready = True
            self._patch_path = path

    def set_startup_state(
        self,
        *,
        config_alias_ready: bool,
        hosts_redirects: int,
        cache_removed: int,
        fallback_cdn_ips: list[str],
    ) -> None:
        with self._lock:
            self._config_alias_ready = config_alias_ready
            self._hosts_redirects = hosts_redirects
            self._cache_removed = cache_removed
            self._fallback_cdn_ips = list(fallback_cdn_ips)

    def set_error(self, message: str) -> None:
        with self._lock:
            self._last_error = message

    def note_http_request(self, path: str) -> None:
        with self._lock:
            self._http_requests += 1
            self._last_request_path = path

    def note_config_served(self) -> None:
        with self._lock:
            self._config_requests += 1

    def note_library_served(self) -> None:
        with self._lock:
            self._swf_served = True
            self._library_requests += 1
            self._last_library_served_at = time.time()

    def note_passthrough(self) -> None:
        with self._lock:
            self._passthrough_requests += 1

    def toggle_feature(self, name: str) -> None:
        with self._lock:
            attr = f"_{name}"
            if not hasattr(self, attr):
                return
            current = bool(getattr(self, attr))
            setattr(self, attr, not current)
            if name == "noclip_enabled" and current:
                self._hold_enabled = False
                self._level_active = False
                self._shift_active = False
                self._ctrl_active = False

    def feature_enabled(self, name: str) -> bool:
        with self._lock:
            return bool(getattr(self, f"_{name}", False))

    def set_noclip_controls(
        self,
        *,
        hold_enabled: bool,
        level_active: bool,
        shift_active: bool,
        ctrl_active: bool,
    ) -> None:
        with self._lock:
            self._hold_enabled = hold_enabled
            self._level_active = level_active
            self._shift_active = shift_active
            self._ctrl_active = ctrl_active

    def snapshot(self) -> dict[str, object]:
        with self._lock:
            return {
                "patch_ready": self._patch_ready,
                "patch_path": self._patch_path,
                "swf_served": self._swf_served,
                "http_requests": self._http_requests,
                "config_requests": self._config_requests,
                "library_requests": self._library_requests,
                "passthrough_requests": self._passthrough_requests,
                "last_request_path": self._last_request_path,
                "last_library_served_at": self._last_library_served_at,
                "fallback_cdn_ips": list(self._fallback_cdn_ips),
                "hosts_redirects": self._hosts_redirects,
                "cache_removed": self._cache_removed,
                "config_alias_ready": self._config_alias_ready,
                "last_error": self._last_error,
                "pickup_enabled": self._pickup_enabled,
                "freecam_enabled": self._freecam_enabled,
                "noclip_enabled": self._noclip_enabled,
                "xray_enabled": self._xray_enabled,
                "hold_enabled": self._hold_enabled,
                "level_active": self._level_active,
                "shift_active": self._shift_active,
                "ctrl_active": self._ctrl_active,
            }
