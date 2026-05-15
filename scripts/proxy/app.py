"""
ProTanki MITM Proxy single-file launcher with overlay UI.

Defaults:
  server       : 146.59.110.146:25565
  listen       : 0.0.0.0:25565
  config HTTP  : 146.59.110.103:80
  status HTTP  : 127.0.0.1:25581
"""
from __future__ import annotations

import argparse
import contextlib
import ctypes
import datetime as dt
import io
import json
import os
import pathlib
import socket
import sys
import threading
import tkinter as tk
import webbrowser

# Allow running directly: py -3 proxy/app.py
# Add scripts/ to path so "from proxy.xxx import" resolves correctly.
sys.path.insert(0, str(pathlib.Path(__file__).resolve().parent.parent))
if sys.stdout is None:
    sys.stdout = open(os.devnull, "w", encoding="utf-8")
if sys.stderr is None:
    sys.stderr = open(os.devnull, "w", encoding="utf-8")
try:
    sys.stdout.reconfigure(encoding="utf-8")
except Exception:
    pass
try:
    sys.stderr.reconfigure(encoding="utf-8")
except Exception:
    pass

from proxy.logger import EventLog
from proxy.http_servers import _start_config_http_server, _start_status_http_server
from proxy.runtime_paths import ensure_runtime_dirs, get_runtime_root, get_traffic_dir
from proxy.console_tee import install_console_tee
from proxy.session import _handle_session
from proxy.shared import _ProxyShared
from proxy import __version__ as PROXY_VERSION

# Default network/runtime settings.
SERVER_HOST      = "146.59.110.146"
SERVER_PORT      = 25565
LISTEN_HOST      = "0.0.0.0"
LISTEN_PORT      = 25565
CONFIG_HTTP_HOST = "146.59.110.103"
CONFIG_HTTP_PORT = 80
FALLBACK_CDN_HOST = "s.pro-tanki.com"
FALLBACK_CDN_IPS  = ("194.67.196.216",) # known mirrors that are never on loopback
FALLBACK_DOMAINS = ("s.pro-tanki.com", "tankiresources.com")
HOSTS_FILE = pathlib.Path(r"C:\Windows\System32\drivers\etc\hosts")
HOSTS_MARKER = "# protanki-proxy-auto"
INET_CACHE_DIR = pathlib.Path(os.environ.get("LOCALAPPDATA", "")) / "Microsoft" / "Windows" / "INetCache"
STATUS_PORT      = 25581
PICKUP_DELAY     = 0.05
DEFAULT_RADIUS   = 1500.0
OUTPUT_DIR       = str(get_traffic_dir())
TELEGRAM_URL     = "https://t.me/cheatbox0"
YOUTUBE_URL      = "https://www.youtube.com/@DOKERcom"
PROD_ENV_FLAG    = "PROTANKI_MODE"
SERVER_ALIAS_ENV_FLAG = "PROTANKI_ENABLE_SERVER_ALIAS"
SETTINGS_FILE_NAME = "settings.json"
APP_TITLE_BASE   = "ProTanki Proxy"

# Overlay colors and visual style.
BG         = "#0d0d14"
FG_TITLE   = "#7ecfff"
FG_LABEL   = "#8899aa"
FG_VALUE   = "#e0e8f0"
FG_OK      = "#44ee88"
FG_WARN    = "#ffcc44"
FG_ERR     = "#ff5555"
FG_TARGET  = "#ffee44"
FG_GOLD    = "#ffd700"   # Gold bonuses are always highlighted.
FG_FAR     = "#556677"
BONUS_SHOW_LIMIT = 5       # Show N closest non-gold bonuses.
BTN_ON_BG  = "#0d2a1a"
BTN_OFF_BG = "#2a0d0d"
BTN_ON_FG  = "#44ee88"
BTN_OFF_FG = "#ff5555"
BTN_DEF_BG = "#131a24"
BTN_DEF_FG = FG_LABEL
BTN_DIS_BG = "#111418"
BTN_DIS_FG = "#374452"

FONT_TITLE = ("Consolas", 10, "bold")
FONT_NORM  = ("Consolas", 9)
FONT_SMALL = ("Consolas", 8)

WIN_WIDTH  = 400
WIN_ALPHA  = 0.90
REFRESH_MS = 300
HOTKEY_POLL_MS = 20
VK_LSHIFT = 0xA0
VK_LCONTROL = 0xA2
VK_OEM_3 = 0xC0  # ` / Ё on RU layout
VK_R = 0x52
VK_F6 = 0x75    # F6 — auto-pickup toggle
VK_F8 = 0x77    # F8 — noclip toggle in battle
VK_F9 = 0x78    # F9 — xray toggle in battle

UI_TEXT = {
    "ru": {
        "title": "ProTanki Proxy",
        "btn_noclip": "Noclip [F8]",
        "btn_pickup": "Автоподбор [F6]",
        "btn_xray": "Рентген [F9]",
        "radius": "Радиус:",
        "radius_ok": "OK",
        "session": "Сессия",
        "cipher": "Шифр",
        "position": "Позиция",
        "speed": "Скор / Макс",
        "corr": "Корр/сек",
        "enemies": "Врагов",
        "confirm": "Подтв",
        "inject": "Инъекций",
        "key_yo": "`/Ё hold",
        "key_r": "R level",
        "key_shift": "LShift down",
        "key_ctrl": "LCtrl up",
        "bonus_header": "  Бонусы на поле:",
        "status_waiting": "ожидание",
        "status_active": "активна",
        "cipher_init": "init",
        "state_on": "ON",
        "state_off": "off",
        "state_na": "n/a",
        "no_bonuses": "  нет бонусов",
        "more_bonuses": "  ... ещё {count} бонусов",
        "noclip_note_off": "Noclip ВЫКЛ (HotKey: F8 в бою)",
        "noclip_note_on": "Noclip ВКЛ (HotKey: F8 в бою)",
        "xray_note_off": "Рентген ВЫКЛ (HotKey: F9 в бою)",
        "xray_note_on": "Рентген ВКЛ (HotKey: F9 в бою)",
        "tip_noclip": "Режим noclip. Включение/выключение только HotKey F8 в бою.",
        "tip_pickup": "Автоподбор бонусов. В прокси-режиме: отправляет пакеты подбора в радиусе. В SWF-режиме: патч тригерит подбор напрямую через игровой код (F6 в игре).",
        "tip_xray": "Полупрозрачные текстуры домов, кустов и объектов карты. Включение/выключение только HotKey F9 в бою.",
        "mode_swf_only": "SWF-режим: прокси выключен",
        "swf_served": "SWF подменён",
        "swf_pending": "ожидание SWF",
        "tip_radius": "Расстояние для автоподбора обычных бонусов.",
        "tip_key_yo": "Клавиша Ё (`): переключение режима удержания.",
        "tip_key_r": "Клавиша R: временное выравнивание.",
        "tip_key_shift": "Left Shift: движение вниз.",
        "tip_key_ctrl": "Left Ctrl: движение вверх.",
        "powered_by": "Powered by DOKERcom",
        "links": "Ссылки:",
        "link_tg": "Telegram",
        "link_yt": "YouTube",
    },
    "en": {
        "title": "ProTanki Proxy",
        "btn_noclip": "Noclip [F8]",
        "btn_pickup": "Auto-pickup [F6]",
        "btn_xray": "X-Ray [F9]",
        "radius": "Radius:",
        "radius_ok": "OK",
        "session": "Session",
        "cipher": "Cipher",
        "position": "Position",
        "speed": "Speed / Max",
        "corr": "Corr/sec",
        "enemies": "Enemies",
        "confirm": "Confirm",
        "inject": "Injected",
        "key_yo": "`/Yo hold",
        "key_r": "R level",
        "key_shift": "LShift down",
        "key_ctrl": "LCtrl up",
        "bonus_header": "  Bonuses on field:",
        "status_waiting": "waiting",
        "status_active": "active",
        "cipher_init": "init",
        "state_on": "ON",
        "state_off": "off",
        "state_na": "n/a",
        "no_bonuses": "  no bonuses",
        "more_bonuses": "  ... {count} more bonuses",
        "noclip_note_off": "Noclip OFF (HotKey: F8 in battle)",
        "noclip_note_on": "Noclip ON (HotKey: F8 in battle)",
        "xray_note_off": "X-Ray OFF (HotKey: F9 in battle)",
        "xray_note_on": "X-Ray ON (HotKey: F9 in battle)",
        "tip_noclip": "Noclip mode. Toggle only via HotKey F8 in battle.",
        "tip_pickup": "Auto-pickup bonuses. Proxy mode: sends pickup packets within radius. SWF mode: patch triggers pickup via in-game code directly (press F6 in-game).",
        "tip_xray": "Semi-transparent textures for houses, bushes and map objects. Toggle only via HotKey F9 in battle.",
        "mode_swf_only": "SWF mode: proxy disabled",
        "swf_served": "SWF patched",
        "swf_pending": "waiting for SWF",
        "tip_radius": "Distance used for regular auto-pickup.",
        "tip_key_yo": "` key: toggle hold mode.",
        "tip_key_r": "R key: temporary leveling mode.",
        "tip_key_shift": "Left Shift: move down.",
        "tip_key_ctrl": "Left Ctrl: move up.",
        "powered_by": "Powered by DOKERcom",
        "links": "Links:",
        "link_tg": "Telegram",
        "link_yt": "YouTube",
    },
}


def _is_prod_mode() -> bool:
    raw = os.environ.get(PROD_ENV_FLAG, "").strip().lower()
    if raw in {"1", "true", "yes", "prod", "production"}:
        return True
    exe_name = pathlib.Path(sys.executable if getattr(sys, "frozen", False) else sys.argv[0]).stem.lower()
    return exe_name.endswith("prod") or exe_name.endswith("_prod")


def _env_flag(name: str, *, default: bool = False) -> bool:
    raw = os.environ.get(name, "").strip().lower()
    if not raw:
        return default
    if raw in {"1", "true", "yes", "on", "enable", "enabled"}:
        return True
    if raw in {"0", "false", "no", "off", "disable", "disabled"}:
        return False
    return default


def _coerce_bool(value: object, *, default: bool) -> bool:
    if isinstance(value, bool):
        return value
    if isinstance(value, (int, float)):
        return bool(value)
    if isinstance(value, str):
        raw = value.strip().lower()
        if raw in {"1", "true", "yes", "on", "enable", "enabled"}:
            return True
        if raw in {"0", "false", "no", "off", "disable", "disabled"}:
            return False
    return default


def _get_settings_path() -> pathlib.Path:
    return get_runtime_root() / SETTINGS_FILE_NAME


def _write_settings_file(path: pathlib.Path, settings: dict[str, object], *, verbose: bool = True) -> bool:
    try:
        path.parent.mkdir(parents=True, exist_ok=True)
        payload = json.dumps(settings, ensure_ascii=True, indent=2) + "\n"
        path.write_text(payload, encoding="utf-8")
        if verbose:
            print(f"[+] Created default settings file: {path}")
        return True
    except OSError as exc:
        if verbose:
            print(f"[!] Failed to write settings file {path}: {exc}")
        return False


def _load_settings(*, verbose: bool = True) -> dict[str, object]:
    defaults: dict[str, object] = {
        "enable_server_alias": True,
        "enable_proxy": True,
    }
    path = _get_settings_path()
    try:
        text = path.read_text(encoding="utf-8")
    except FileNotFoundError:
        if verbose:
            print(f"[!] Settings file not found: {path}. Creating with defaults.")
        _write_settings_file(path, defaults, verbose=verbose)
        return dict(defaults)
    except OSError as exc:
        if verbose:
            print(f"[!] Failed to read settings file {path}: {exc}. Using defaults.")
        return dict(defaults)

    try:
        data = json.loads(text)
    except json.JSONDecodeError as exc:
        if verbose:
            print(f"[!] Invalid JSON in settings file {path}: {exc}. Resetting to defaults.")
        _write_settings_file(path, defaults, verbose=verbose)
        return dict(defaults)

    if not isinstance(data, dict):
        if verbose:
            print(f"[!] Settings file must contain a JSON object: {path}. Resetting to defaults.")
        _write_settings_file(path, defaults, verbose=verbose)
        return dict(defaults)

    merged = dict(defaults)
    merged.update(data)
    merged["enable_server_alias"] = _coerce_bool(
        merged.get("enable_server_alias"),
        default=bool(defaults["enable_server_alias"]),
    )
    merged["enable_proxy"] = _coerce_bool(
        merged.get("enable_proxy"),
        default=bool(defaults["enable_proxy"]),
    )
    return merged


def _safe_log(logger: "EventLog | None", event: str, **kw) -> None:
    if logger is not None:
        logger.log(event, **kw)


def _is_gold(bonus_id: str) -> bool:
    bid = bonus_id.lower().split("#")[0]
    return bid in ("gold", "crystal_100", "special")


def _type_icon(bonus_id: str) -> str:
    bid = bonus_id.lower()
    if _is_gold(bonus_id):
        return "\u2605"   # Gold
    if "crystal" in bid:
        return "\u25c6"   # Crystal
    if "nitro" in bid:
        return "\u26a1"   # Nitro
    if "medkit" in bid or "health" in bid:
        return "\u2665"   # Health
    if "damage" in bid:
        return "\u2b06"   # Damage
    if "armor" in bid:
        return "\U0001f6e1"  # Armor
    return "\u2022"       # Generic bonus

class HoverTip:
    """Lightweight tooltip for Tk widgets."""

    def __init__(self, widget: tk.Widget, text: str) -> None:
        self._widget = widget
        self._text = text
        self._tip_win: "tk.Toplevel | None" = None
        self._after_id: "str | None" = None
        widget.bind("<Enter>", self._on_enter, add="+")
        widget.bind("<Leave>", self._on_leave, add="+")
        widget.bind("<ButtonPress>", self._on_leave, add="+")

    def set_text(self, text: str) -> None:
        self._text = text
        if self._tip_win is not None:
            self._hide()
            self._show()

    def _on_enter(self, _event=None) -> None:
        self._schedule()

    def _on_leave(self, _event=None) -> None:
        self._cancel_schedule()
        self._hide()

    def _schedule(self) -> None:
        self._cancel_schedule()
        self._after_id = self._widget.after(250, self._show)

    def _cancel_schedule(self) -> None:
        if self._after_id is not None:
            try:
                self._widget.after_cancel(self._after_id)
            except Exception:
                pass
            self._after_id = None

    def _show(self) -> None:
        if self._tip_win is not None:
            return
        x = self._widget.winfo_pointerx() + 12
        y = self._widget.winfo_pointery() + 12
        tip = tk.Toplevel(self._widget)
        tip.wm_overrideredirect(True)
        tip.attributes("-topmost", True)
        tip.geometry(f"+{x}+{y}")
        lbl = tk.Label(
            tip,
            text=self._text,
            justify="left",
            bg="#151d2a",
            fg=FG_VALUE,
            relief="solid",
            bd=1,
            padx=6,
            pady=4,
            font=FONT_SMALL,
        )
        lbl.pack()
        self._tip_win = tip

    def _hide(self) -> None:
        if self._tip_win is not None:
            try:
                self._tip_win.destroy()
            except Exception:
                pass
            self._tip_win = None


class ProxyApp:
    """Overlay window with live proxy status + feature toggles."""

    def __init__(self, root: tk.Tk, shared_ref: list, proxy_enabled: bool = True) -> None:
        self._root = root
        self._shared_ref = shared_ref
        self._proxy_enabled = proxy_enabled
        self._drag_x = self._drag_y = 0
        self._lang = "ru"
        self._tooltips: dict[str, HoverTip] = {}
        self._hotkey_state = {
            "yo_hold": False,
            "r_level": False,
            "shift_down": False,
            "ctrl_up": False,
        }
        self._vk_prev_down = {
            VK_OEM_3: False,
            VK_F6: False,
            VK_F8: False,
            VK_F9: False,
        }
        self._yo_hold_active = False
        self._swf_pickup_enabled = False  # mirrors DriveController._pickup_enabled_ in SWF mode
        try:
            self._get_async_key_state = ctypes.windll.user32.GetAsyncKeyState
        except Exception:
            self._get_async_key_state = None

        title_suffix = " | SWF-mode" if not self._proxy_enabled else ""
        root.title(f"{APP_TITLE_BASE} v{PROXY_VERSION}{title_suffix}")
        root.attributes("-topmost", True)
        root.attributes("-alpha", WIN_ALPHA)
        root.overrideredirect(True)
        root.configure(bg=BG)
        root.geometry("+8+8")
        root.minsize(WIN_WIDTH, 1)
        root.maxsize(WIN_WIDTH, 9999)

        root.bind("<Double-Button-1>", lambda e: root.destroy())
        frm_head = tk.Frame(root, bg=BG, pady=2)
        frm_head.pack(fill="x", padx=6)
        self._lbl_title = tk.Label(frm_head, text=f"\u25c8 {APP_TITLE_BASE} v{PROXY_VERSION}{title_suffix}",
                                   font=FONT_TITLE, fg=FG_TITLE, bg=BG, anchor="w")
        self._lbl_title.pack(side="left")
        self._lbl_conn = tk.Label(
            frm_head,
            text="\u25cf",
            font=("Consolas", 13, "bold"),
            fg=FG_ERR,
            bg=BG,
            anchor="e",
            padx=8,
            pady=1,
            cursor="hand2",
        )
        self._lbl_conn.pack(side="right")
        self._lbl_conn.bind("<Button-1>", lambda _e: self._root.destroy(), add="+")
        self._btn_lang = tk.Button(
            frm_head,
            text="EN",
            font=FONT_SMALL,
            bg=BTN_DEF_BG,
            fg=BTN_DEF_FG,
            relief="flat",
            bd=0,
            padx=6,
            cursor="hand2",
            command=self._toggle_language,
        )
        self._btn_lang.pack(side="right", padx=(0, 6))

        for drag_widget in (frm_head, self._lbl_title):
            drag_widget.bind("<ButtonPress-1>", self._drag_start, add="+")
            drag_widget.bind("<B1-Motion>", self._drag_move, add="+")

        tk.Frame(root, bg="#1a2030", height=1).pack(fill="x", padx=4)
        frm_ctrl = tk.Frame(root, bg=BG, pady=3)
        frm_ctrl.pack(fill="x", padx=6)

        self._btn_noclip = self._make_toggle(frm_ctrl, self._tr("btn_noclip"))
        self._make_info_icon(frm_ctrl, "tip_noclip")
        self._btn_pickup = self._make_toggle(frm_ctrl, self._tr("btn_pickup"))
        self._pickup_info_icon = self._make_info_icon(frm_ctrl, "tip_pickup")
        self._btn_xray = self._make_toggle(frm_ctrl, self._tr("btn_xray"))
        self._make_info_icon(frm_ctrl, "tip_xray")

        # Mode badge — visible only in SWF-only mode (proxy disabled).
        self._lbl_mode = tk.Label(
            root,
            text="",
            font=FONT_SMALL,
            fg="#ffcc44",
            bg=BG,
            anchor="w",
            padx=6,
        )
        if not proxy_enabled:
            self._lbl_mode.pack(fill="x", padx=6)

        frm_rad = tk.Frame(root, bg=BG, pady=0)
        frm_rad.pack(fill="x", padx=6)
        self._lbl_radius = tk.Label(
            frm_rad, text=self._tr("radius"), font=FONT_SMALL, fg=FG_LABEL, bg=BG)
        self._lbl_radius.pack(side="left")
        self._v_radius = tk.StringVar(value=str(int(DEFAULT_RADIUS)))
        self._ent_radius = tk.Entry(
            frm_rad, textvariable=self._v_radius,
            font=FONT_SMALL, bg="#111820", fg=FG_VALUE,
            insertbackground=FG_VALUE, width=8,
            relief="flat", bd=1)
        self._ent_radius.pack(side="left", padx=(4, 4))
        self._ent_radius.bind("<Return>", lambda e: self._apply_radius())
        self._btn_radius_ok = tk.Button(
            frm_rad, text=self._tr("radius_ok"), font=FONT_SMALL,
            bg=BTN_DEF_BG, fg=BTN_DEF_FG, relief="flat", bd=0,
            padx=4, cursor="hand2",
            command=self._apply_radius)
        self._btn_radius_ok.pack(side="left")
        self._make_info_icon(frm_rad, "tip_radius")
        self._lbl_rad_hint = tk.Label(frm_rad, text="", font=FONT_SMALL,
                                      fg=FG_WARN, bg=BG)
        self._lbl_rad_hint.pack(side="left", padx=(4, 0))

        tk.Frame(root, bg="#1a2030", height=1).pack(fill="x", padx=4, pady=(4, 0))
        frm_stat = tk.Frame(root, bg=BG)
        frm_stat.pack(fill="x", padx=6, pady=(3, 1))

        self._row_labels: dict[str, tk.Label] = {}

        def row(key: str, label: str, col: int = 0, row_n: int = 0) -> tk.Label:
            left = tk.Label(frm_stat, text=label, font=FONT_SMALL, fg=FG_LABEL,
                            bg=BG, anchor="w", width=14)
            left.grid(row=row_n, column=col * 2, sticky="w")
            self._row_labels[key] = left
            v = tk.Label(frm_stat, text="\u2014", font=FONT_SMALL,
                         fg=FG_VALUE, bg=BG, anchor="w")
            v.grid(row=row_n, column=col * 2 + 1, sticky="w")
            return v

        self._v_session  = row("session", self._tr("session"), col=0, row_n=0)
        self._v_cipher   = row("cipher", self._tr("cipher"), col=1, row_n=0)
        self._v_pos      = row("position", self._tr("position"), col=0, row_n=1)
        self._v_speed    = row("speed", self._tr("speed"), col=1, row_n=1)
        self._v_corr     = row("corr", self._tr("corr"), col=0, row_n=2)
        self._v_enemies  = row("enemies", self._tr("enemies"), col=1, row_n=2)
        self._v_confirm  = row("confirm", self._tr("confirm"), col=0, row_n=3)
        self._v_inject   = row("inject", self._tr("inject"), col=1, row_n=3)
        self._v_key_yo   = row("key_yo", self._tr("key_yo"), col=0, row_n=4)
        self._v_key_r    = row("key_r", self._tr("key_r"), col=1, row_n=4)
        self._v_key_sh   = row("key_shift", self._tr("key_shift"), col=0, row_n=5)
        self._v_key_ctl  = row("key_ctrl", self._tr("key_ctrl"), col=1, row_n=5)

        tk.Frame(root, bg="#1a2030", height=1).pack(fill="x", padx=4, pady=(3, 1))

        # Bonus list
        self._lbl_bonus_header = tk.Label(
            root, text=self._tr("bonus_header"), font=FONT_SMALL,
            fg=FG_LABEL, bg=BG, anchor="w")
        self._lbl_bonus_header.pack(fill="x", padx=4)
        self._frm_bonuses = tk.Frame(root, bg=BG)
        self._frm_bonuses.pack(fill="x", padx=6, pady=(0, 4))
        self._bonus_labels: list = []

        tk.Frame(root, bg="#1a2030", height=1).pack(fill="x", padx=4, pady=(0, 2))
        frm_footer = tk.Frame(root, bg=BG)
        frm_footer.pack(fill="x", padx=6, pady=(0, 4))
        self._lbl_powered = tk.Label(
            frm_footer,
            text=self._tr("powered_by"),
            font=FONT_SMALL,
            fg=FG_LABEL,
            bg=BG,
            anchor="w",
        )
        self._lbl_powered.pack(fill="x")

        frm_links = tk.Frame(frm_footer, bg=BG)
        frm_links.pack(fill="x")
        self._lbl_links = tk.Label(
            frm_links,
            text=self._tr("links"),
            font=FONT_SMALL,
            fg=FG_LABEL,
            bg=BG,
            anchor="w",
        )
        self._lbl_links.pack(side="left")
        self._lnk_tg = self._make_link(
            frm_links,
            self._tr("link_tg"),
            TELEGRAM_URL,
        )
        self._lnk_yt = self._make_link(
            frm_links,
            self._tr("link_yt"),
            YOUTUBE_URL,
        )

        self._tooltips["tip_key_yo"] = HoverTip(self._row_labels["key_yo"], self._tr("tip_key_yo"))
        self._tooltips["tip_key_r"] = HoverTip(self._row_labels["key_r"], self._tr("tip_key_r"))
        self._tooltips["tip_key_shift"] = HoverTip(self._row_labels["key_shift"], self._tr("tip_key_shift"))
        self._tooltips["tip_key_ctrl"] = HoverTip(self._row_labels["key_ctrl"], self._tr("tip_key_ctrl"))

        self._apply_language()
        self._update_btn_states()
        root.after(HOTKEY_POLL_MS, self._poll_hotkeys_loop)
        root.after(100, self._refresh)

    def _tr(self, key: str, **kwargs) -> str:
        table = UI_TEXT.get(self._lang, UI_TEXT["en"])
        text = table.get(key, key)
        return text.format(**kwargs) if kwargs else text

    def _toggle_language(self) -> None:
        self._lang = "en" if self._lang == "ru" else "ru"
        self._apply_language()

    def _apply_language(self) -> None:
        title_suffix = " | SWF-mode" if not self._proxy_enabled else ""
        self._root.title(f"{self._tr('title')} v{PROXY_VERSION}{title_suffix}")
        self._lbl_title.config(text=f"\u25c8 {self._tr('title')} v{PROXY_VERSION}{title_suffix}")
        self._btn_lang.config(text="EN" if self._lang == "ru" else "RU")
        self._btn_noclip.config(text=self._tr("btn_noclip"))
        self._btn_pickup.config(text=self._tr("btn_pickup"))
        self._btn_xray.config(text=self._tr("btn_xray"))
        self._lbl_mode.config(text="")
        self._lbl_radius.config(text=self._tr("radius"))
        self._btn_radius_ok.config(text=self._tr("radius_ok"))
        self._lbl_bonus_header.config(text=self._tr("bonus_header"))
        self._lbl_powered.config(text=self._tr("powered_by"))
        self._lbl_links.config(text=self._tr("links"))
        self._lnk_tg.config(text=self._tr("link_tg"))
        self._lnk_yt.config(text=self._tr("link_yt"))

        self._row_labels["session"].config(text=self._tr("session"))
        self._row_labels["cipher"].config(text=self._tr("cipher"))
        self._row_labels["position"].config(text=self._tr("position"))
        self._row_labels["speed"].config(text=self._tr("speed"))
        self._row_labels["corr"].config(text=self._tr("corr"))
        self._row_labels["enemies"].config(text=self._tr("enemies"))
        self._row_labels["confirm"].config(text=self._tr("confirm"))
        self._row_labels["inject"].config(text=self._tr("inject"))
        self._row_labels["key_yo"].config(text=self._tr("key_yo"))
        self._row_labels["key_r"].config(text=self._tr("key_r"))
        self._row_labels["key_shift"].config(text=self._tr("key_shift"))
        self._row_labels["key_ctrl"].config(text=self._tr("key_ctrl"))

        for tip_key, tooltip in self._tooltips.items():
            tooltip.set_text(self._tr(tip_key))

        self._update_btn_states()

    def _make_info_icon(self, parent: tk.Frame, tip_key: str) -> tk.Label:
        lbl = tk.Label(
            parent,
            text="i",
            font=("Consolas", 8, "bold"),
            fg=FG_TITLE,
            bg=BG,
            padx=3,
            cursor="question_arrow",
        )
        lbl.pack(side="left", padx=(0, 8))
        self._tooltips[tip_key] = HoverTip(lbl, self._tr(tip_key))
        return lbl

    def _make_link(self, parent: tk.Frame, text: str, url: str) -> tk.Label:
        lbl = tk.Label(
            parent,
            text=text,
            font=FONT_SMALL,
            fg=FG_TITLE,
            bg=BG,
            cursor="hand2",
            anchor="w",
        )
        lbl.pack(side="left", padx=(6, 0))
        lbl.bind("<Button-1>", lambda _e, u=url: self._open_link(u))
        lbl.bind("<Enter>", lambda _e, l=lbl: l.config(fg=FG_OK))
        lbl.bind("<Leave>", lambda _e, l=lbl: l.config(fg=FG_TITLE))
        return lbl

    def _open_link(self, url: str) -> None:
        try:
            webbrowser.open_new_tab(url)
        except Exception as exc:
            print(f"[ui] Failed to open link: {url} ({exc})")

    def _make_toggle(self, parent: tk.Frame, label: str) -> tk.Label:
        badge = tk.Label(
            parent,
            text=label,
            font=FONT_SMALL,
            relief="solid",
            bd=1,
            padx=6,
            pady=3,
            cursor="arrow",
        )
        badge.pack(side="left", padx=(0, 4))
        return badge

    def _update_btn_states(self) -> None:
        sh = self._shared_ref[0]
        noclip = sh.noclip_enabled if sh else False
        pickup = sh.auto_pickup_enabled if sh else False
        xray = sh.xray_enabled if sh else False
        self._btn_noclip.config(
            bg=BTN_ON_BG if noclip else BTN_OFF_BG,
            fg=BTN_ON_FG if noclip else BTN_OFF_FG)
        pickup_active = self._swf_pickup_enabled if not self._proxy_enabled else pickup
        self._btn_pickup.config(
            bg=BTN_ON_BG if pickup_active else BTN_OFF_BG,
            fg=BTN_ON_FG if pickup_active else BTN_OFF_FG)
        self._btn_xray.config(
            bg=BTN_ON_BG if xray else BTN_OFF_BG,
            fg=BTN_ON_FG if xray else BTN_OFF_FG)

    def _apply_radius(self) -> None:
        sh = self._shared_ref[0]
        try:
            val = float(self._v_radius.get())
            if val < 0:
                raise ValueError("negative")
            if sh:
                sh.near_radius = val
            self._lbl_rad_hint.config(text="OK", fg=FG_OK)
            self._root.after(1500, lambda: self._lbl_rad_hint.config(text=""))
        except ValueError:
            self._lbl_rad_hint.config(text="?", fg=FG_ERR)

    def _drag_start(self, e) -> None:
        self._drag_x = e.x
        self._drag_y = e.y

    def _drag_move(self, e) -> None:
        x = self._root.winfo_x() + (e.x - self._drag_x)
        y = self._root.winfo_y() + (e.y - self._drag_y)
        self._root.geometry(f"+{x}+{y}")

    def _refresh(self) -> None:
        self._update(self._shared_ref[0])
        self._root.after(REFRESH_MS, self._refresh)

    def _read_vk(self, vk_code: int) -> tuple[bool, bool]:
        """Return (is_down, pressed_since_last_poll)."""
        getter = self._get_async_key_state
        if getter is None:
            return False, False
        try:
            state = getter(vk_code)
        except Exception:
            return False, False
        return bool(state & 0x8000), bool(state & 0x0001)

    def _poll_module_hotkeys(self, sh: "_ProxyShared | None", *, battle_ready: bool) -> None:  # noqa: F821
        if sh is None:
            return

        for vk in (VK_F6, VK_F8, VK_F9):
            is_down, pressed = self._read_vk(vk)
            prev_down = self._vk_prev_down.get(vk, False)
            self._vk_prev_down[vk] = is_down

            triggered = pressed or (is_down and not prev_down)
            if not triggered:
                continue

            if vk == VK_F6:
                if self._proxy_enabled:
                    sh.auto_pickup_enabled = not sh.auto_pickup_enabled
                else:
                    # SWF mode: game SWF toggles DriveController._pickup_enabled_ on keyCode 117;
                    # overlay mirrors state locally for button color.
                    self._swf_pickup_enabled = not self._swf_pickup_enabled
            elif vk == VK_F8 and battle_ready:
                sh.noclip_enabled = not sh.noclip_enabled
            elif vk == VK_F9 and battle_ready:
                sh.xray_enabled = not sh.xray_enabled

    def _poll_noclip_hotkeys(self, *, allow_toggle: bool) -> None:
        r_down, _ = self._read_vk(VK_R)
        sh_down, _ = self._read_vk(VK_LSHIFT)
        ct_down, _ = self._read_vk(VK_LCONTROL)
        yo_down, yo_pressed = self._read_vk(VK_OEM_3)

        yo_prev = self._vk_prev_down.get(VK_OEM_3, False)
        # Toggle on edge and on short taps that happen between polls.
        if allow_toggle and (yo_pressed or (yo_down and not yo_prev)):
            self._yo_hold_active = not self._yo_hold_active
        if not allow_toggle:
            self._yo_hold_active = False
        self._vk_prev_down[VK_OEM_3] = yo_down

        self._hotkey_state["yo_hold"] = self._yo_hold_active
        self._hotkey_state["r_level"] = r_down if allow_toggle else False
        self._hotkey_state["shift_down"] = sh_down if allow_toggle else False
        self._hotkey_state["ctrl_up"] = ct_down if allow_toggle else False

    def _is_battle_ready(self, sh: object) -> bool:
        """
        True when it makes sense to allow F8/F9 toggles and show key indicators.
        In SWF-only mode (no TCP proxy) we have no session telemetry, so always
        return True — the game is running and the SWF patches are active.
        In full proxy mode, gate on session_active + tank_pos (confirmed in battle).
        """
        if not self._proxy_enabled:
            return True
        return bool(sh and getattr(sh, "session_active", False) and getattr(sh, "tank_pos", None) is not None)

    def _poll_hotkeys_loop(self) -> None:
        sh = self._shared_ref[0]
        battle_ready = self._is_battle_ready(sh)
        self._poll_module_hotkeys(sh, battle_ready=battle_ready)
        noclip_ready = bool(sh and sh.noclip_enabled and battle_ready)
        self._poll_noclip_hotkeys(allow_toggle=noclip_ready)
        self._update_btn_states()
        self._render_hotkeys(sh)
        self._root.after(HOTKEY_POLL_MS, self._poll_hotkeys_loop)

    def _set_hotkey_state(self, label: tk.Label, *, enabled: bool,
                          active: bool, unavailable: bool) -> None:
        if unavailable:
            label.config(text=self._tr("state_na"), fg=FG_FAR)
            return
        if not enabled:
            label.config(text=self._tr("state_off"), fg=FG_LABEL)
            return
        label.config(text=self._tr("state_on") if active else self._tr("state_off"),
                     fg=FG_OK if active else FG_LABEL)

    def _render_hotkeys(self, sh: "_ProxyShared | None") -> None:  # noqa: F821
        key_states = self._hotkey_state
        battle_ready = self._is_battle_ready(sh)
        noclip_ready = bool(sh and sh.noclip_enabled and battle_ready)

        if not battle_ready:
            # Not in battle yet: avoid stale latched state and desync.
            self._yo_hold_active = False
            key_states["yo_hold"] = False
            key_states["r_level"] = False
            key_states["shift_down"] = False
            key_states["ctrl_up"] = False

        unavailable = self._get_async_key_state is None
        self._set_hotkey_state(self._v_key_yo, enabled=noclip_ready,
                               active=key_states["yo_hold"],
                               unavailable=unavailable)
        self._set_hotkey_state(self._v_key_r, enabled=noclip_ready,
                               active=key_states["r_level"],
                               unavailable=unavailable)
        self._set_hotkey_state(self._v_key_sh, enabled=noclip_ready,
                               active=key_states["shift_down"],
                               unavailable=unavailable)
        self._set_hotkey_state(self._v_key_ctl, enabled=noclip_ready,
                               active=key_states["ctrl_up"],
                               unavailable=unavailable)

    def _update(self, sh: "_ProxyShared | None") -> None:  # noqa: F821
        self._update_btn_states()
        self._render_hotkeys(sh)

        # Sync near-radius field if it drifted from shared
        if sh is not None:
            cur_text = self._v_radius.get()
            shared_val = str(int(sh.near_radius))
            if cur_text != shared_val and not self._root.focus_get():
                self._v_radius.set(shared_val)

        if sh is None or not sh.session_active:
            if self._proxy_enabled:
                self._lbl_conn.config(fg=FG_WARN, text="\u25cf")
                self._v_session.config(text=self._tr("status_waiting"), fg=FG_WARN)
            else:
                swf_ok = bool(sh and sh.swf_served)
                if swf_ok:
                    self._lbl_conn.config(fg=FG_OK, text="\u25cf")
                    self._v_session.config(text=self._tr("swf_served"), fg=FG_OK)
                else:
                    self._lbl_conn.config(fg=FG_FAR, text="\u25cf")
                    self._v_session.config(text="\u2014", fg=FG_LABEL)
            self._v_cipher.config(text="\u2014", fg=FG_LABEL)
            for lbl in self._bonus_labels:
                lbl.destroy()
            self._bonus_labels.clear()
            return

        # Connection dot
        self._lbl_conn.config(
            fg=FG_OK if sh.cipher_active else FG_WARN, text="\u25cf")

        # Session / cipher
        self._v_session.config(text=self._tr("status_active"), fg=FG_OK)
        self._v_cipher.config(
            text="OK" if sh.cipher_active else self._tr("cipher_init"),
            fg=FG_OK if sh.cipher_active else FG_WARN)

        # Position
        pos = sh.tank_pos
        self._v_pos.config(
            text=f"{pos[0]:.0f},{pos[1]:.0f},{pos[2]:.0f}" if pos else "\u2014",
            fg=FG_VALUE if pos else FG_LABEL)

        # Speed
        cur = sh.current_speed
        spd = sh.hull_speed_packet if sh.hull_speed_packet > 0 else sh.observed_max_speed()
        self._v_speed.config(
            text=f"{cur:.0f} / {spd:.0f}" if spd > 0 else "\u2014",
            fg=FG_OK if cur >= spd * 0.9 and cur > 0 else FG_VALUE)

        # Corrections / enemies
        corr = sh.corrections_per_sec()
        self._v_corr.config(
            text=f"{corr:.1f}/s",
            fg=(FG_OK if corr < 8 else FG_WARN if corr < 20 else FG_ERR))
        self._v_enemies.config(
            text=str(sh.enemy_tracker.count()), fg=FG_VALUE)

        # Counts
        self._v_confirm.config(text=str(sh.stat_confirmed), fg=FG_OK)
        self._v_inject.config(text=str(sh.stat_injected), fg=FG_VALUE)

        # Bonuses
        for lbl in self._bonus_labels:
            lbl.destroy()
        self._bonus_labels.clear()

        nr = sh.near_radius
        with sh._active_lock:
            active_snap = {
                bid: (sh._active_pos.get(bid), sh.tank_pos)
                for bid in sh._active
            }

        if not active_snap:
            lbl = tk.Label(self._frm_bonuses, text=self._tr("no_bonuses"),
                           font=FONT_SMALL, fg=FG_FAR, bg=BG, anchor="w")
            lbl.pack(fill="x")
            self._bonus_labels.append(lbl)
            return

        gold_items = []
        regular_items = []
        for bid, (bpos, tpos) in active_snap.items():
            dist: "float | None" = None
            if bpos and tpos:
                dx = bpos[0] - tpos[0]
                dy = bpos[1] - tpos[1]
                dist = (dx * dx + dy * dy) ** 0.5
            targeting = dist is not None and nr > 0 and dist <= nr
            if _is_gold(bid):
                gold_items.append((bid, dist, targeting))
            else:
                regular_items.append((bid, dist, targeting))

        # Sort regular bonuses by distance; keep only N closest
        regular_items.sort(key=lambda x: (x[1] is None, x[1] or 0))
        visible = gold_items + regular_items[:BONUS_SHOW_LIMIT]
        hidden  = max(0, len(regular_items) - BONUS_SHOW_LIMIT)

        for bid, dist, tgt in visible:
            gold     = _is_gold(bid)
            icon     = _type_icon(bid)
            if gold:
                color  = FG_GOLD
                prefix = "\u2605 "
            elif tgt:
                color  = FG_TARGET
                prefix = "\u25b6 "
            else:
                color  = FG_FAR
                prefix = "  "
            dist_str = f"{dist:.0f}u" if dist is not None else "?u"
            lbl = tk.Label(self._frm_bonuses,
                           text=f"{prefix}{icon} {bid}  [{dist_str}]",
                           font=FONT_SMALL, fg=color, bg=BG, anchor="w")
            lbl.pack(fill="x")
            self._bonus_labels.append(lbl)

        if hidden:
            lbl = tk.Label(self._frm_bonuses,
                           text=self._tr("more_bonuses", count=hidden),
                           font=FONT_SMALL, fg=FG_FAR, bg=BG, anchor="w")
            lbl.pack(fill="x")
            self._bonus_labels.append(lbl)

def _proxy_accept_loop(
    listen_host: str,
    listen_port: int,
    server_host: str,
    server_port: int,
    args: argparse.Namespace,
    logger: EventLog,
    shared_ref: list,
) -> None:
    listen_sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    listen_sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    listen_sock.bind((listen_host, listen_port))
    listen_sock.listen(5)
    logger.log("proxy_listening",
               listen=f"{listen_host}:{listen_port}",
               upstream=f"{server_host}:{server_port}")

    while True:
        try:
            client_sock, client_addr = listen_sock.accept()
            _safe_log(
                logger,
                "client_accepted",
                client_addr=f"{client_addr[0]}:{client_addr[1]}",
                local_addr=f"{listen_host}:{listen_port}",
            )
        except OSError as exc:
            _safe_log(logger, "accept_loop_stopped", error=str(exc))
            break
        t = threading.Thread(
            target=_handle_session,
            args=(client_sock, client_addr,
                  server_host, server_port,
                  args, logger, shared_ref),
            daemon=True,
            name=f"session-{client_addr[1]}",
        )
        t.start()


def _detect_outgoing_ip(*probes: str, logger: "EventLog | None" = None) -> str:
    """
    UDP-connect trick to find the outgoing NIC IP.
    We probe the game server first so the selected source IP matches the real
    route used for upstream TCP, then fall back to public probes.
    """
    import socket as _socket
    probe_list = [p for p in probes if p] if probes else [SERVER_HOST, "8.8.8.8", "1.1.1.1"]
    for probe in probe_list:
        s = None
        try:
            s = _socket.socket(_socket.AF_INET, _socket.SOCK_DGRAM)
            s.settimeout(2.0)
            s.connect((probe, 80))
            ip = s.getsockname()[0]
            _safe_log(logger, "outgoing_ip_probe", probe=probe, ok=True, local_ip=ip)
            if not ip.startswith("127."):
                return ip
        except Exception as exc:
            _safe_log(
                logger,
                "outgoing_ip_probe",
                probe=probe,
                ok=False,
                error_type=type(exc).__name__,
                error=str(exc),
            )
        finally:
            if s is not None:
                try:
                    s.close()
                except Exception:
                    pass
    _safe_log(logger, "outgoing_ip_probe_failed", probes=",".join(probe_list))
    return ""


def _resolve_ipv4_direct_all(hostname: str, dns_server: str = "8.8.8.8", timeout: float = 4.0) -> list[str]:
    """Resolve all IPv4 answers via direct UDP DNS query, bypassing hosts file and OS cache."""
    import struct
    import random
    sock = None
    seen: set[str] = set()
    result: list[str] = []
    try:
        tx = random.randint(1, 65535)
        hdr = struct.pack("!HHHHHH", tx, 0x0100, 1, 0, 0, 0)
        q = b"".join(bytes([len(p)]) + p for p in hostname.encode().split(b"."))
        q += b"\x00" + struct.pack("!HH", 1, 1)
        sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        sock.settimeout(timeout)
        sock.sendto(hdr + q, (dns_server, 53))
        data, _ = sock.recvfrom(512)
        if len(data) < 12 or struct.unpack("!H", data[0:2])[0] != tx:
            return []
        qdcount = struct.unpack("!H", data[4:6])[0]
        ancount = struct.unpack("!H", data[6:8])[0]
        pos = 12
        for _ in range(qdcount):
            while pos < len(data):
                if data[pos] & 0xC0 == 0xC0:
                    pos += 2
                    break
                if data[pos] == 0:
                    pos += 1
                    break
                pos += data[pos] + 1
            pos += 4  # QTYPE + QCLASS
        for _ in range(ancount):
            if pos >= len(data):
                break
            if data[pos] & 0xC0 == 0xC0:
                pos += 2
            else:
                while pos < len(data) and data[pos]:
                    pos += data[pos] + 1
                pos += 1
            if pos + 10 > len(data):
                break
            rtype, _, _, rdlen = struct.unpack("!HHIH", data[pos:pos + 10])
            pos += 10
            if rtype == 1 and rdlen == 4 and pos + 4 <= len(data):
                ip = socket.inet_ntoa(data[pos:pos + 4])
                if ip and not ip.startswith("127.") and ip not in seen:
                    seen.add(ip)
                    result.append(ip)
            pos += rdlen
    except Exception:
        return []
    finally:
        if sock is not None:
            with contextlib.suppress(Exception):
                sock.close()
    return result


def _resolve_ipv4_direct(hostname: str, dns_server: str = "8.8.8.8", timeout: float = 4.0) -> str:
    """Resolve first IPv4 answer via direct UDP DNS query."""
    ips = _resolve_ipv4_direct_all(hostname, dns_server=dns_server, timeout=timeout)
    return ips[0] if ips else ""


def _build_fallback_cdn_ips(
    base_ips: tuple[str, ...],
    cdn_host: str,
    loopback_ip: str,
    *,
    verbose: bool = True,
    logger: "EventLog | None" = None,
) -> list[str]:
    """
    Build ordered list of CDN IPs for HTTP passthrough.
    Starts with known hardcoded mirrors, then appends all direct DNS A-record IPs
    of cdn_host (bypassing hosts file) excluding loopback/duplicates.
    """
    seen: set[str] = set()
    result: list[str] = []
    for ip in base_ips:
        if ip and ip not in seen and not ip.startswith("127.") and ip != loopback_ip:
            seen.add(ip)
            result.append(ip)

    real_ips = _resolve_ipv4_direct_all(cdn_host)
    for real_ip in real_ips:
        if real_ip and real_ip not in seen and not real_ip.startswith("127.") and real_ip != loopback_ip:
            seen.add(real_ip)
            result.append(real_ip)
            if verbose:
                print(f"[*] CDN extra mirror resolved: {cdn_host} -> {real_ip}")
            _safe_log(logger, "dns_resolve", host=cdn_host, ok=True, ip=real_ip, method="direct_extra")
    if not real_ips:
        _safe_log(
            logger,
            "dns_resolve",
            host=cdn_host,
            ok=False,
            error="no_direct_ipv4_records",
            method="direct_extra_all",
        )

    return result


def _resolve_ipv4(host: str, *, logger: "EventLog | None" = None) -> str:
    """Resolve first IPv4 address for host, empty string on failure."""
    try:
        infos = socket.getaddrinfo(host, 80, socket.AF_INET, socket.SOCK_STREAM)
    except OSError as exc:
        _safe_log(logger, "dns_resolve", host=host, ok=False, error=str(exc))
        return ""
    for info in infos:
        sockaddr = info[4]
        if not sockaddr:
            continue
        ip = sockaddr[0]
        if ip and not ip.startswith("127."):
            _safe_log(logger, "dns_resolve", host=host, ok=True, ip=ip)
            return ip
    _safe_log(logger, "dns_resolve", host=host, ok=False, error="no_non_loopback_ipv4")
    return ""


def _parse_hosts_line(line: str) -> tuple[str, list[str]]:
    """Return (ip, hostnames) for a hosts-file line, ignoring comments."""
    raw = line.split("#", 1)[0].strip()
    if not raw:
        return "", []
    parts = raw.split()
    if len(parts) < 2:
        return "", []
    return parts[0], [h.lower() for h in parts[1:]]


def _ensure_hosts_redirects(
    target_ip: str,
    domains: tuple[str, ...],
    *,
    verbose: bool = True,
    logger: "EventLog | None" = None,
) -> list[str]:
    """
    Ensure fallback domains resolve to our local HTTP IP in hosts file.
    Adds marked lines so cleanup can remove only our entries.
    """
    def _vprint(msg: str) -> None:
        if verbose:
            print(msg)

    if not HOSTS_FILE.exists():
        _vprint(f"[!] hosts file not found: {HOSTS_FILE}")
        return []

    try:
        existing_lines = HOSTS_FILE.read_text(encoding="ascii", errors="ignore").splitlines()
    except OSError as exc:
        _vprint(f"[!] Failed to read hosts file: {exc}")
        return []

    # Remove stale marker entries that point to a different IP (e.g. old CDN-IP-based setup).
    # This handles migration when CONFIG_HTTP_HOST changes between runs.
    domain_set = {d.lower() for d in domains}
    cleaned_lines: list[str] = []
    purged: list[str] = []
    for line in existing_lines:
        if HOSTS_MARKER in line:
            ip, hostnames = _parse_hosts_line(line)
            if ip and ip != target_ip and any(h in domain_set for h in hostnames):
                purged.extend(h for h in hostnames if h in domain_set)
                _vprint(f"[*] hosts: removing stale entry ({ip} → {hostnames}) to update to {target_ip}")
                continue
        cleaned_lines.append(line)

    mapped: dict[str, str] = {}
    for line in cleaned_lines:
        ip, hostnames = _parse_hosts_line(line)
        if not ip:
            continue
        for host in hostnames:
            mapped[host] = ip

    added: list[str] = []
    skipped_same: list[str] = []
    skipped_conflict: list[str] = []

    new_entries: list[str] = []
    for domain in domains:
        key = domain.lower()
        mapped_ip = mapped.get(key)
        if mapped_ip:
            if mapped_ip == target_ip:
                _vprint(f"[+] hosts: {domain} already maps to {target_ip}")
                skipped_same.append(domain)
            else:
                _vprint(f"[!] hosts: {domain} is mapped to {mapped_ip}; keeping existing mapping")
                skipped_conflict.append(f"{domain}:{mapped_ip}")
            continue
        new_entries.append(f"{target_ip} {domain} {HOSTS_MARKER}")
        _vprint(f"[+] hosts: added {target_ip} {domain}")
        added.append(domain)

    if purged or new_entries:
        try:
            payload = "\n".join(cleaned_lines)
            if payload and not payload.endswith("\n"):
                payload += "\n"
            for entry in new_entries:
                payload += entry + "\n"
            HOSTS_FILE.write_text(payload, encoding="ascii", errors="ignore")
        except OSError as exc:
            _vprint(f"[!] Failed to update hosts entries: {exc}")
            _safe_log(logger, "hosts_redirects", ok=False, target_ip=target_ip, error=str(exc))
            return added

    _safe_log(
        logger,
        "hosts_redirects",
        ok=True,
        target_ip=target_ip,
        added=added,
        skipped_same=skipped_same,
        skipped_conflict=skipped_conflict,
    )
    return added


def _cleanup_hosts_redirects(*, verbose: bool = True, logger: "EventLog | None" = None) -> int:
    """Remove only hosts lines previously added by this app."""
    def _vprint(msg: str) -> None:
        if verbose:
            print(msg)

    if not HOSTS_FILE.exists():
        _safe_log(logger, "hosts_cleanup", ok=True, removed=0, reason="hosts_file_missing")
        return 0
    try:
        lines = HOSTS_FILE.read_text(encoding="ascii", errors="ignore").splitlines()
    except OSError as exc:
        _vprint(f"[!] Failed to read hosts file for cleanup: {exc}")
        _safe_log(logger, "hosts_cleanup", ok=False, error=str(exc), stage="read")
        return 0

    keep = [line for line in lines if HOSTS_MARKER not in line]
    removed = len(lines) - len(keep)
    if removed <= 0:
        _safe_log(logger, "hosts_cleanup", ok=True, removed=0)
        return 0

    payload = "\n".join(keep)
    if payload:
        payload += "\n"
    try:
        HOSTS_FILE.write_text(payload, encoding="ascii", errors="ignore")
        _vprint(f"[*] hosts cleanup: removed {removed} auto entry(s)")
    except OSError as exc:
        _vprint(f"[!] Failed to write hosts file during cleanup: {exc}")
        _safe_log(logger, "hosts_cleanup", ok=False, error=str(exc), stage="write")
        return 0
    _safe_log(logger, "hosts_cleanup", ok=True, removed=removed)
    return removed


def _clear_wininet_library_cache(*, verbose: bool = True, logger: "EventLog | None" = None) -> int:
    """Delete cached library.swf/library.tara entries from WinInet cache."""
    if not INET_CACHE_DIR.exists():
        _safe_log(logger, "wininet_cache_cleanup", ok=True, removed=0, cache_dir_missing=True)
        return 0
    removed = 0
    for pattern in ("library*.swf", "library*.tara"):
        for path in INET_CACHE_DIR.rglob(pattern):
            try:
                path.unlink()
                removed += 1
            except OSError:
                pass
    if verbose and removed > 0:
        print(f"[*] Cleared {removed} cached library file(s) from WinInet cache")
    _safe_log(logger, "wininet_cache_cleanup", ok=True, removed=removed, cache_dir=str(INET_CACHE_DIR))
    return removed


def _ensure_loopback_alias(ip: str, *, verbose: bool = True, logger: "EventLog | None" = None) -> bool:
    """
    Add a loopback IP alias via netsh if it is not already present.
    Silently skips if the alias already exists or if netsh is unavailable.
    Requires Administrator privileges.
    """
    import subprocess

    def _vprint(msg: str) -> None:
        if verbose:
            print(msg)

    iface = "Loopback Pseudo-Interface 1"
    try:
        out = subprocess.check_output(
            ["netsh", "interface", "ip", "show", "address", iface],
            text=True,
            stderr=subprocess.DEVNULL,
        )
        if ip in out:
            _vprint(f"[+] Loopback alias {ip} already exists")
            _safe_log(logger, "loopback_alias", ip=ip, iface=iface, action="check", status="exists")
            return False
    except Exception as exc:
        _safe_log(
            logger,
            "loopback_alias",
            ip=ip,
            iface=iface,
            action="check",
            status="check_failed",
            error=str(exc),
        )

    _vprint(f"[*] Adding loopback alias {ip} ...")
    try:
        result = subprocess.run(
            ["netsh", "interface", "ip", "add", "address", iface, ip, "255.255.255.255"],
            capture_output=True,
            text=True,
        )
        if result.returncode == 0:
            _vprint(f"[+] Loopback alias {ip} added")
            _safe_log(logger, "loopback_alias", ip=ip, iface=iface, action="add", status="ok")
            return True
        else:
            stdout = result.stdout.strip()
            stderr = result.stderr.strip()
            _vprint(f"[!] netsh failed to add loopback alias: {stdout} {stderr}")
            _safe_log(
                logger,
                "loopback_alias",
                ip=ip,
                iface=iface,
                action="add",
                status="failed",
                returncode=result.returncode,
                stdout=stdout,
                stderr=stderr,
            )
            return False
    except FileNotFoundError:
        _vprint("[!] netsh not found, skipping loopback alias setup")
        _safe_log(logger, "loopback_alias", ip=ip, iface=iface, action="add", status="netsh_missing")
        return False


def _remove_loopback_alias(ip: str, *, verbose: bool = True, logger: "EventLog | None" = None) -> None:
    """Remove loopback alias added by this app run."""
    import subprocess

    def _vprint(msg: str) -> None:
        if verbose:
            print(msg)

    iface = "Loopback Pseudo-Interface 1"
    try:
        result = subprocess.run(
            ["netsh", "interface", "ip", "delete", "address", iface, ip],
            capture_output=True,
            text=True,
        )
        if result.returncode == 0:
            _vprint(f"[*] Removed loopback alias {ip}")
            _safe_log(logger, "loopback_alias", ip=ip, iface=iface, action="remove", status="ok")
        else:
            stdout = result.stdout.strip()
            stderr = result.stderr.strip()
            _vprint(f"[!] netsh failed to remove loopback alias {ip}: {stdout} {stderr}")
            _safe_log(
                logger,
                "loopback_alias",
                ip=ip,
                iface=iface,
                action="remove",
                status="failed",
                returncode=result.returncode,
                stdout=stdout,
                stderr=stderr,
            )
    except Exception as exc:
        _vprint(f"[!] Failed to remove loopback alias {ip}: {exc}")
        _safe_log(
            logger,
            "loopback_alias",
            ip=ip,
            iface=iface,
            action="remove",
            status="exception",
            error=str(exc),
        )


def _maybe_launch_game(*, verbose: bool = True) -> None:
    """Launch ProTanki Online.exe if found in standard install locations."""
    import subprocess

    candidates = [
        r"C:\Program Files\ProTanki Online\ProTanki Online.exe",
        r"C:\Program Files (x86)\ProTanki Online\ProTanki Online.exe",
    ]
    for path in candidates:
        if pathlib.Path(path).exists():
            try:
                subprocess.Popen([path])
                if verbose:
                    print(f"[+] Launched game executable: {path}")
            except OSError as exc:
                print(f"[!] Failed to launch game executable: {exc}")
            return


def _hide_console_window() -> None:
    """
    Hide console after UI is up.
    Set PROTANKI_KEEP_CONSOLE=1 to keep console visible for debugging.
    """
    keep_console = os.environ.get("PROTANKI_KEEP_CONSOLE", "").strip().lower()
    if keep_console in {"1", "true", "yes"}:
        return

    try:
        hwnd = ctypes.windll.kernel32.GetConsoleWindow()
        if hwnd:
            SW_HIDE = 0
            ctypes.windll.user32.ShowWindow(hwnd, SW_HIDE)
    except Exception as exc:
        print(f"[ui] Failed to hide console window: {exc}")


def main() -> None:
    prod_mode = _is_prod_mode()
    verbose = not prod_mode
    settings = _load_settings(verbose=verbose)
    enable_server_alias = _env_flag(
        SERVER_ALIAS_ENV_FLAG,
        default=bool(settings.get("enable_server_alias", True)),
    )
    enable_proxy = _coerce_bool(settings.get("enable_proxy", True), default=True)

    def _prod_status(message: str) -> None:
        if not verbose:
            print(f"[*] {message}")

    ensure_runtime_dirs()
    stamp = dt.datetime.now().strftime("%Y%m%d_%H%M%S")
    os.makedirs(OUTPUT_DIR, exist_ok=True)
    console_log_file = os.path.join(OUTPUT_DIR, f"proxy_console_{stamp}.log")
    install_console_tee(console_log_file)
    log_file = os.path.join(OUTPUT_DIR, f"proxy_{stamp}.jsonl")
    logger = EventLog(
        log_file,
        file_enabled=not prod_mode,
        console_enabled=not prod_mode,
    )
    logger.log(
        "startup",
        mode="prod" if prod_mode else "dev",
        version=PROXY_VERSION,
        server=f"{SERVER_HOST}:{SERVER_PORT}",
        listen=f"{LISTEN_HOST}:{LISTEN_PORT}",
        config_http=f"{CONFIG_HTTP_HOST}:{CONFIG_HTTP_PORT}",
    )
    added_aliases: list[str] = []

    try:
        # shared_ref[0] starts with a stub _ProxyShared so the HTTP server can check
        # noclip_enabled / auto_pickup_enabled before the first game session connects.
        shared_ref: list = [_ProxyShared()]
        shared_ref[0].session_active = False

        if verbose:
            print("=" * 60)
            print("ProTanki MITM Proxy")
            print("=" * 60)
            print(f"  Settings file  : {_get_settings_path()}")
            print(f"  Mode           : {'MITM proxy' if enable_proxy else 'SWF-only (no TCP proxy)'}")
            print(f"  Upstream       : {SERVER_HOST}:{SERVER_PORT}")
            if enable_proxy:
                print(f"  TCP listen     : {LISTEN_HOST}:{LISTEN_PORT}")
            print(f"  Config HTTP    : {CONFIG_HTTP_HOST}:{CONFIG_HTTP_PORT}")
            print(f"  Status HTTP    : 127.0.0.1:{STATUS_PORT}")
            if enable_proxy:
                print(f"  Server alias   : {'ON' if enable_server_alias else 'OFF'}")
            print(f"  Log            : {log_file}")
            print("=" * 60)
        else:
            print("[*] ProTanki Proxy starting...")
            _prod_status("Initializing startup pipeline...")

        # Build SWF patch (cached after first run).
        try:
            from proxy.noclip_patch import (
                _java_works,
                _resolve_ffdec_jar,
                _resolve_java_executable,
                get_patched_swf,
            )

            if verbose:
                print("[*] Building noclip-patched library.swf (takes ~30s first time)...")
                get_patched_swf()
                print("[+] library.swf patch is ready")
            else:
                _prod_status("Preparing noclip patch...")
                java_candidate = _resolve_java_executable(verbose=False)
                java_ready = bool(java_candidate and _java_works(java_candidate, verbose=False))
                ffdec_ready = _resolve_ffdec_jar().exists()

                if not java_ready:
                    _prod_status("Java runtime not found. Installing Java (this can take a few minutes)...")
                else:
                    _prod_status("Java runtime detected")

                if not ffdec_ready:
                    _prod_status("FFDec not found. Downloading and installing FFDec...")
                else:
                    _prod_status("FFDec detected")

                heartbeat_msg = "Still building patch (first run can take ~30s)..."
                if not java_ready:
                    heartbeat_msg = "Still installing Java / waiting installer..."
                elif not ffdec_ready:
                    heartbeat_msg = "Still downloading/installing FFDec..."

                patch_error: list[Exception] = []

                def _patch_worker() -> None:
                    try:
                        with contextlib.redirect_stdout(io.StringIO()), contextlib.redirect_stderr(io.StringIO()):
                            get_patched_swf()
                    except Exception as exc:
                        patch_error.append(exc)

                t_patch = threading.Thread(target=_patch_worker, daemon=True, name="noclip-build")
                t_patch.start()
                # Heartbeat so prod console is not silent on long first run.
                while t_patch.is_alive():
                    t_patch.join(timeout=4.0)
                    if t_patch.is_alive():
                        _prod_status(heartbeat_msg)
                if patch_error:
                    raise patch_error[0]
                _prod_status("Patch ready")
        except Exception as exc:
            if verbose:
                print(f"[!] noclip patch failed: {exc}")
            else:
                print(f"[!] noclip patch failed: {exc}")
            raise SystemExit(1)

        _prod_status("Configuring local networking...")
        if HOSTS_FILE.exists() and not os.access(HOSTS_FILE, os.W_OK):
            print(f"[!] WARNING: hosts file is not writable: {HOSTS_FILE}")
            print(f"    Right-click the file → Properties → uncheck Read-only")
            print(f"    Or run: attrib -r \"{HOSTS_FILE}\"")

        upstream_bind_ip = _detect_outgoing_ip(SERVER_HOST, "8.8.8.8", "1.1.1.1", logger=logger)
        if verbose and upstream_bind_ip:
            print(f"[*] Real outgoing IP: {upstream_bind_ip}")
        elif verbose:
            print("[!] Could not detect real outgoing IP. Upstream bind will be skipped.")

        # Use the hardcoded second CDN mirror for HTTP passthrough.
        # Build ordered list of CDN IPs for HTTP passthrough.
        # CONFIG_HTTP_HOST is on loopback — never use it for forwarding.
        # Start with hardcoded mirrors, then append real DNS IPs of the CDN host
        # (resolved directly, bypassing hosts file) as an extra fallback.
        fallback_cdn_ips = _build_fallback_cdn_ips(
            FALLBACK_CDN_IPS, FALLBACK_CDN_HOST, CONFIG_HTTP_HOST,
            verbose=verbose, logger=logger,
        )
        fallback_cdn_ip = fallback_cdn_ips[0] if fallback_cdn_ips else ""
        _safe_log(logger, "cdn_mirrors", ips=fallback_cdn_ips)
        if verbose:
            print(f"[*] CDN passthrough mirrors: {', '.join(fallback_cdn_ips)}")

        if _ensure_loopback_alias(CONFIG_HTTP_HOST, verbose=verbose, logger=logger):
            added_aliases.append(CONFIG_HTTP_HOST)
        if enable_proxy and enable_server_alias:
            if _ensure_loopback_alias(SERVER_HOST, verbose=verbose, logger=logger):
                added_aliases.append(SERVER_HOST)
        elif enable_proxy and verbose:
            print(
                f"[*] Skipping loopback alias {SERVER_HOST} "
                f"(set {SERVER_ALIAS_ENV_FLAG}=1 to force)"
            )
        if not enable_proxy:
            logger.log(
                "loopback_alias",
                ip=SERVER_HOST,
                iface="Loopback Pseudo-Interface 1",
                action="skip",
                reason="swf_only_mode",
            )
        elif not enable_server_alias:
            logger.log(
                "loopback_alias",
                ip=SERVER_HOST,
                iface="Loopback Pseudo-Interface 1",
                action="skip",
                reason="disabled_by_default",
            )

        hosts_added = _ensure_hosts_redirects(
            CONFIG_HTTP_HOST,
            FALLBACK_DOMAINS,
            verbose=verbose,
            logger=logger,
        )
        cache_removed = _clear_wininet_library_cache(verbose=verbose, logger=logger)
        logger.log(
            "network_setup",
            upstream_bind_ip=upstream_bind_ip,
            fallback_cdn_ip=fallback_cdn_ip,
            server_alias_enabled=enable_server_alias,
            aliases_added=added_aliases.copy(),
            hosts_added=hosts_added,
            cache_removed=cache_removed,
        )

        # Config HTTP server (fallback endpoint for client config).
        # In SWF-only mode: config.xml points game directly at real server (no TCP proxy).
        # In proxy mode:    config.xml points game at our local TCP proxy (127.0.0.1).
        _prod_status("Starting local HTTP services...")
        if enable_proxy:
            config_xml_host = "127.0.0.1"
            config_xml_port = LISTEN_PORT
        else:
            config_xml_host = SERVER_HOST
            config_xml_port = SERVER_PORT
            if verbose:
                print(f"[*] SWF-only mode: config.xml -> {config_xml_host}:{config_xml_port} (direct)")
        try:
            _start_config_http_server(
                CONFIG_HTTP_HOST,
                CONFIG_HTTP_PORT,
                config_xml_host,
                config_xml_port,
                shared_ref,
                fallback_cdn_ips=fallback_cdn_ips,
                fallback_cdn_host=FALLBACK_CDN_HOST,
                verbose=verbose,
                logger=logger,
            )
        except OSError as exc:
            if verbose:
                print(
                    f"[!] Failed to bind config HTTP server on "
                    f"{CONFIG_HTTP_HOST}:{CONFIG_HTTP_PORT}: {exc}"
                )
                print("    Make sure loopback aliases are configured and run as Administrator.")
            else:
                print("[!] Failed to start local HTTP proxy")
            raise SystemExit(1)

        # Status HTTP server (for legacy overlay.py / external tools).
        _start_status_http_server(shared_ref, "127.0.0.1", STATUS_PORT)
        if verbose:
            print(f"[+] Status endpoint : http://127.0.0.1:{STATUS_PORT}/status")

        # TCP proxy accept loop (background thread) — only in full proxy mode.
        if enable_proxy:
            _prod_status("Starting TCP proxy...")
            args = argparse.Namespace(
                pickup_delay=PICKUP_DELAY,
                upstream_bind_ip=upstream_bind_ip,
                server_alias_enabled=enable_server_alias,
            )
            t_proxy = threading.Thread(
                target=_proxy_accept_loop,
                args=(
                    LISTEN_HOST,
                    LISTEN_PORT,
                    SERVER_HOST,
                    SERVER_PORT,
                    args,
                    logger,
                    shared_ref,
                ),
                daemon=True,
                name="proxy-accept",
            )
            t_proxy.start()
            if verbose:
                print(f"[+] Proxy listening: {LISTEN_HOST}:{LISTEN_PORT} -> {SERVER_HOST}:{SERVER_PORT}")
            else:
                print("[+] Proxy ready")
        else:
            if verbose:
                print(f"[*] SWF-only mode: TCP proxy skipped, game connects directly to {SERVER_HOST}:{SERVER_PORT}")
            else:
                print("[+] SWF-only mode ready")

        # Launch game if installed.
        _prod_status("Launching game and UI...")
        _maybe_launch_game(verbose=verbose)

        # Tkinter overlay runs on the main thread.
        root = tk.Tk()
        ProxyApp(root, shared_ref, proxy_enabled=enable_proxy)
        root.after(500, _hide_console_window)
        root.mainloop()
    finally:
        _cleanup_hosts_redirects(verbose=verbose, logger=logger)
        for ip in reversed(added_aliases):
            _remove_loopback_alias(ip, verbose=verbose, logger=logger)


if __name__ == "__main__":
    main()


