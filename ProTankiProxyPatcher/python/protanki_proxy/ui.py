from __future__ import annotations

import datetime as dt
import tkinter as tk

from .constants import APP_TITLE, CONFIG_HTTP_HOST, CONFIG_HTTP_PORT, SERVER_HOST, SERVER_PORT
from .hotkeys import HotkeyMirror
from .settings import AppSettings
from .state import AppState

BG = "#0d0d14"
FG_TITLE = "#7ecfff"
FG_LABEL = "#8899aa"
FG_VALUE = "#e0e8f0"
FG_OK = "#44ee88"
FG_WARN = "#ffcc44"
FG_ERR = "#ff5555"
FG_MUTED = "#556677"
BTN_ON_BG = "#0d2a1a"
BTN_OFF_BG = "#2a0d0d"
BTN_ON_FG = "#44ee88"
BTN_OFF_FG = "#ff5555"
FONT_TITLE = ("Consolas", 10, "bold")
FONT_NORM = ("Consolas", 9)
FONT_SMALL = ("Consolas", 8)
WIN_WIDTH = 420
WIN_ALPHA = 0.92
REFRESH_MS = 250
HOTKEY_POLL_MS = 20


def _fmt_time(timestamp: float) -> str:
    if not timestamp:
        return "—"
    return dt.datetime.fromtimestamp(timestamp).strftime("%H:%M:%S")


class ProxyWindow:
    def __init__(self, root: tk.Tk, state: AppState, settings: AppSettings) -> None:
        self._root = root
        self._state = state
        self._settings = settings
        self._hotkeys = HotkeyMirror(state)

        root.title(f"{APP_TITLE} | SWF-only")
        root.attributes("-topmost", True)
        root.attributes("-alpha", WIN_ALPHA)
        root.configure(bg=BG)
        root.geometry("+8+8")
        root.minsize(WIN_WIDTH, 1)
        root.maxsize(WIN_WIDTH, 9999)

        root.bind("<ButtonPress-1>", self._drag_start)
        root.bind("<B1-Motion>", self._drag_move)

        self._drag_x = 0
        self._drag_y = 0
        self._toggles: dict[str, tk.Label] = {}

        header = tk.Frame(root, bg=BG, pady=4)
        header.pack(fill="x", padx=8)
        self._lbl_title = tk.Label(header, text="◈ ProTankiProxy", font=FONT_TITLE, fg=FG_TITLE, bg=BG, anchor="w")
        self._lbl_title.pack(side="left")
        self._lbl_dot = tk.Label(header, text="●", font=FONT_TITLE, fg=FG_WARN, bg=BG)
        self._lbl_dot.pack(side="right")

        tk.Frame(root, bg="#1a2030", height=1).pack(fill="x", padx=6)

        toggle_frame = tk.Frame(root, bg=BG)
        toggle_frame.pack(fill="x", padx=8, pady=(6, 2))
        self._add_toggle(toggle_frame, "pickup_enabled", "Автоподбор [F6]", 0, 0)
        self._add_toggle(toggle_frame, "freecam_enabled", "Freecam [F7]", 1, 0)
        self._add_toggle(toggle_frame, "noclip_enabled", "Noclip [F8]", 0, 1)
        self._add_toggle(toggle_frame, "xray_enabled", "X-Ray [F9]", 1, 1)

        info = tk.Frame(root, bg=BG)
        info.pack(fill="x", padx=8, pady=(2, 2))
        self._v_mode = self._info_row(info, "Mode", 0)
        self._v_patch = self._info_row(info, "Patch", 1)
        self._v_library = self._info_row(info, "Library", 2)
        self._v_http = self._info_row(info, "HTTP", 3)
        self._v_network = self._info_row(info, "Routing", 4)
        self._v_cache = self._info_row(info, "Cache", 5)
        self._v_keys = self._info_row(info, "Keys", 6)
        self._v_error = self._info_row(info, "Last error", 7)

        notes = tk.Frame(root, bg=BG)
        notes.pack(fill="x", padx=8, pady=(2, 8))
        self._lbl_hint1 = tk.Label(
            notes,
            text="Клиент работает напрямую с сервером; desktop-приложение обслуживает только config.xml и patched library.swf.",
            wraplength=390,
            justify="left",
            font=FONT_SMALL,
            fg=FG_LABEL,
            bg=BG,
            anchor="w",
        )
        self._lbl_hint1.pack(fill="x")
        self._lbl_hint2 = tk.Label(
            notes,
            text="F6/F7/F8/F9 и noclip-клавиши отражаются локально по hotkey mirror, без TCP-пакетов и battle telemetry.",
            wraplength=390,
            justify="left",
            font=FONT_SMALL,
            fg=FG_MUTED,
            bg=BG,
            anchor="w",
        )
        self._lbl_hint2.pack(fill="x", pady=(4, 0))

        self._refresh()
        self._poll_hotkeys()

    def _add_toggle(self, parent: tk.Frame, key: str, text: str, column: int, row: int) -> None:
        label = tk.Label(
            parent,
            text=text,
            width=18,
            padx=6,
            pady=4,
            relief="flat",
            bg=BTN_OFF_BG,
            fg=BTN_OFF_FG,
            font=FONT_NORM,
        )
        label.grid(row=row, column=column, padx=3, pady=3, sticky="ew")
        parent.grid_columnconfigure(column, weight=1)
        self._toggles[key] = label

    def _info_row(self, parent: tk.Frame, label: str, row: int) -> tk.Label:
        tk.Label(parent, text=label, font=FONT_SMALL, fg=FG_LABEL, bg=BG, anchor="w", width=10).grid(
            row=row, column=0, sticky="w"
        )
        value = tk.Label(parent, text="—", font=FONT_SMALL, fg=FG_VALUE, bg=BG, anchor="w", justify="left")
        value.grid(row=row, column=1, sticky="w")
        return value

    def _drag_start(self, event) -> None:
        self._drag_x = event.x
        self._drag_y = event.y

    def _drag_move(self, event) -> None:
        x = self._root.winfo_x() + (event.x - self._drag_x)
        y = self._root.winfo_y() + (event.y - self._drag_y)
        self._root.geometry(f"+{x}+{y}")

    def _poll_hotkeys(self) -> None:
        self._hotkeys.poll()
        self._root.after(HOTKEY_POLL_MS, self._poll_hotkeys)

    def _refresh(self) -> None:
        snap = self._state.snapshot()

        for key, label in self._toggles.items():
            enabled = bool(snap.get(key, False))
            label.config(
                bg=BTN_ON_BG if enabled else BTN_OFF_BG,
                fg=BTN_ON_FG if enabled else BTN_OFF_FG,
            )

        if snap["swf_served"]:
            self._lbl_dot.config(fg=FG_OK)
        elif snap["patch_ready"]:
            self._lbl_dot.config(fg=FG_WARN)
        else:
            self._lbl_dot.config(fg=FG_ERR)

        self._v_mode.config(text="SWF-only (TCP proxy removed)", fg=FG_OK)
        self._v_patch.config(
            text="ready" if snap["patch_ready"] else "building",
            fg=FG_OK if snap["patch_ready"] else FG_WARN,
        )
        library_text = "served at " + _fmt_time(float(snap["last_library_served_at"])) if snap["swf_served"] else "waiting for /library.swf"
        self._v_library.config(text=library_text, fg=FG_OK if snap["swf_served"] else FG_WARN)
        self._v_http.config(
            text=f"{snap['config_requests']} cfg / {snap['library_requests']} lib / {snap['passthrough_requests']} pass",
            fg=FG_VALUE,
        )
        mirrors = ", ".join(snap["fallback_cdn_ips"]) if snap["fallback_cdn_ips"] else "—"
        self._v_network.config(
            text=(
                f"{CONFIG_HTTP_HOST}:{CONFIG_HTTP_PORT} -> {SERVER_HOST}:{SERVER_PORT}\n"
                f"mirrors: {mirrors}\n"
                f"alias={'ok' if snap['config_alias_ready'] else 'pending'}, hosts={snap['hosts_redirects']}"
            ),
            fg=FG_VALUE,
        )
        self._v_cache.config(text=f"WinInet removed: {snap['cache_removed']}", fg=FG_VALUE)
        self._v_keys.config(
            text=(
                f"` hold={'ON' if snap['hold_enabled'] else 'off'}  "
                f"R={'ON' if snap['level_active'] else 'off'}  "
                f"Shift={'ON' if snap['shift_active'] else 'off'}  "
                f"Ctrl={'ON' if snap['ctrl_active'] else 'off'}"
            ),
            fg=FG_OK if snap["noclip_enabled"] else FG_MUTED,
        )

        error_text = str(snap["last_error"] or "—")
        self._v_error.config(text=error_text, fg=FG_ERR if error_text != "—" else FG_LABEL)

        self._root.after(REFRESH_MS, self._refresh)
