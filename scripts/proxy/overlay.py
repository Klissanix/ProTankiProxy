"""
ProTanki Proxy Overlay
Маленькое окошко поверх всех окон, показывает статус прокси в реальном времени.

Запуск:
    py -3 overlay.py
    py -3 overlay.py --port 25581      # если изменили --status-port
"""
import argparse
import json
import tkinter as tk
import urllib.request
from urllib.error import URLError

REFRESH_MS  = 300      # интервал обновления (мс)
WIN_WIDTH   = 380
WIN_ALPHA   = 0.88     # прозрачность окна (0.0 – 1.0)

# ─── Цветовая схема ──────────────────────────────────────────────────────────
BG          = "#0d0d14"
FG_TITLE    = "#7ecfff"
FG_LABEL    = "#8899aa"
FG_VALUE    = "#e0e8f0"
FG_OK       = "#44ee88"
FG_WARN     = "#ffcc44"
FG_ERR      = "#ff5555"
FG_TARGET   = "#ffee44"   # бонус в зоне атаки
FG_FAR      = "#556677"   # бонус вдалеке
FONT_TITLE  = ("Consolas", 10, "bold")
FONT_NORM   = ("Consolas", 9)
FONT_SMALL  = ("Consolas", 8)


def _color_dist(dist, near_radius):
    if dist is None:
        return FG_FAR
    return FG_TARGET if dist <= near_radius else FG_FAR


def _type_icon(bonus_id: str) -> str:
    bid = bonus_id.lower()
    if "crystal_100" in bid or "special" in bid:
        return "★"
    if "crystal" in bid:
        return "◆"
    if "nitro" in bid:
        return "⚡"
    if "medkit" in bid or "health" in bid:
        return "♥"
    if "damage" in bid:
        return "⬆"
    if "armor" in bid:
        return "🛡"
    return "•"


class OverlayApp:
    def __init__(self, root: tk.Tk, status_url: str) -> None:
        self._root = root
        self._url  = status_url

        root.title("ProTanki Proxy")
        root.attributes("-topmost", True)
        root.attributes("-alpha", WIN_ALPHA)
        root.overrideredirect(True)   # без рамки
        root.configure(bg=BG)
        root.geometry("+8+8")
        root.minsize(WIN_WIDTH, 1)
        root.maxsize(WIN_WIDTH, 9999)

        # Drag support
        root.bind("<ButtonPress-1>",   self._drag_start)
        root.bind("<B1-Motion>",       self._drag_move)
        root.bind("<Double-Button-1>", lambda e: root.destroy())

        self._drag_x = self._drag_y = 0

        # ── Header ──
        frm_head = tk.Frame(root, bg=BG, pady=2)
        frm_head.pack(fill="x", padx=6)
        self._lbl_title = tk.Label(frm_head, text="◈ ProTanki Proxy",
                                   font=FONT_TITLE, fg=FG_TITLE, bg=BG, anchor="w")
        self._lbl_title.pack(side="left")
        self._lbl_conn = tk.Label(frm_head, text="●", font=FONT_TITLE,
                                  fg=FG_ERR, bg=BG, anchor="e")
        self._lbl_conn.pack(side="right")

        tk.Frame(root, bg="#1a2030", height=1).pack(fill="x", padx=4)

        # ── Status grid ──
        frm_stat = tk.Frame(root, bg=BG)
        frm_stat.pack(fill="x", padx=6, pady=(3, 1))

        def row(label, col=0, row=0):
            tk.Label(frm_stat, text=label, font=FONT_SMALL, fg=FG_LABEL,
                     bg=BG, anchor="w", width=14).grid(
                row=row, column=col*2, sticky="w")
            v = tk.Label(frm_stat, text="—", font=FONT_SMALL, fg=FG_VALUE,
                         bg=BG, anchor="w")
            v.grid(row=row, column=col*2+1, sticky="w")
            return v

        self._v_session  = row("Сессия",       col=0, row=0)
        self._v_cipher   = row("Шифр",         col=1, row=0)
        self._v_pos      = row("Позиция",       col=0, row=1)
        self._v_speed    = row("Скор / Макс",  col=1, row=1)
        self._v_accel    = row("Instant accel", col=0, row=2)
        self._v_corr     = row("Корр/сек",     col=1, row=2)
        self._v_confirm  = row("Подтв",        col=0, row=3)
        self._v_inject   = row("Инъекций",     col=1, row=3)
        self._v_aimbot   = row("Трекинг",      col=0, row=4)
        self._v_aim_tgt  = row("Врагов",       col=1, row=4)
        self._v_body_rot = row("Корпус yaw",   col=0, row=5)
        self._v_turret   = row("Пушка (rel)",  col=1, row=5)
        self._v_hull_spd = row("Нокл. xy",     col=0, row=6)
        self._v_noclip   = row("Нокл. режим",  col=1, row=6)

        tk.Frame(root, bg="#1a2030", height=1).pack(fill="x", padx=4, pady=(3, 1))

        # ── Bonus list ──
        tk.Label(root, text="  Бонусы на поле:", font=FONT_SMALL,
                 fg=FG_LABEL, bg=BG, anchor="w").pack(fill="x", padx=4)
        self._frm_bonuses = tk.Frame(root, bg=BG)
        self._frm_bonuses.pack(fill="x", padx=6, pady=(0, 4))
        self._bonus_labels: list = []

        root.after(100, self._refresh)

    # ── Drag ────────────────────────────────────────────────────────────────
    def _drag_start(self, e):
        self._drag_x = e.x
        self._drag_y = e.y

    def _drag_move(self, e):
        x = self._root.winfo_x() + (e.x - self._drag_x)
        y = self._root.winfo_y() + (e.y - self._drag_y)
        self._root.geometry(f"+{x}+{y}")

    # ── Refresh ─────────────────────────────────────────────────────────────
    def _fetch(self) -> dict | None:
        try:
            with urllib.request.urlopen(self._url, timeout=0.5) as r:
                return json.loads(r.read())
        except (URLError, Exception):
            return None

    def _refresh(self):
        data = self._fetch()
        self._update(data)
        self._root.after(REFRESH_MS, self._refresh)

    def _update(self, data: dict | None):
        if data is None:
            self._lbl_conn.config(fg=FG_ERR, text="●")
            self._v_session.config(text="нет связи", fg=FG_ERR)
            for lbl in self._bonus_labels:
                lbl.destroy()
            self._bonus_labels.clear()
            return

        self._lbl_conn.config(fg=FG_OK if data.get("cipher_active") else FG_WARN, text="●")

        # Session / cipher
        if data.get("session_active"):
            self._v_session.config(text="активна", fg=FG_OK)
        else:
            self._v_session.config(text="ожидание", fg=FG_WARN)

        cipher_ok = data.get("cipher_active", False)
        self._v_cipher.config(text="OK" if cipher_ok else "нет",
                              fg=FG_OK if cipher_ok else FG_WARN)

        # Position
        pos = data.get("tank_pos")
        if pos:
            self._v_pos.config(
                text=f"{pos[0]:.0f},{pos[1]:.0f},{pos[2]:.0f}", fg=FG_VALUE)
        else:
            self._v_pos.config(text="—", fg=FG_LABEL)

        # Speed
        cur = data.get("current_speed", 0.0)
        spd = data.get("hull_max_speed", data.get("observed_max_speed", 0.0))
        cur_txt = f"{cur:.0f}" if cur > 0 else "—"
        max_txt = f"{spd:.0f}" if spd > 0 else "?"
        self._v_speed.config(text=f"{cur_txt} / {max_txt}",
                             fg=FG_OK if cur >= spd * 0.9 and cur > 0 else FG_VALUE)

        # Accel
        accel = data.get("instant_accel", False)
        self._v_accel.config(text="ON" if accel else "off",
                             fg=FG_OK if accel else FG_LABEL)

        # Corrections
        corr = data.get("corrections_per_sec", 0.0)
        corr_color = FG_OK if corr < 8.0 else (FG_WARN if corr < 20.0 else FG_ERR)
        self._v_corr.config(text=f"{corr:.1f}/s", fg=corr_color)

        # Counts
        self._v_confirm.config(text=str(data.get("stat_confirmed", 0)), fg=FG_OK)
        self._v_inject.config(text=str(data.get("stat_injected", 0)), fg=FG_VALUE)

        # Enemy tracking
        tracking = data.get("enemy_tracking_active", False)
        tgts = data.get("enemy_targets", 0)
        if tracking:
            self._v_aimbot.config(text="ON",
                                  fg=FG_OK if tgts > 0 else FG_WARN)
        else:
            self._v_aimbot.config(text="off", fg=FG_LABEL)
        self._v_aim_tgt.config(text=str(tgts) if tracking else "—",
                               fg=FG_VALUE if tgts > 0 else FG_LABEL)

        # Body rotation & raw turret angle (live, from movement packets)
        body_rot = data.get("tank_body_rot_deg")
        turret   = data.get("tank_turret_deg")
        self._v_body_rot.config(
            text=f"{body_rot:.1f}°" if body_rot is not None else "—",
            fg=FG_VALUE)
        self._v_turret.config(
            text=f"{turret:.1f}°" if turret is not None else "—",
            fg=FG_VALUE)

        # Hull speed from packet when available, otherwise observed estimate.
        hull_spd = data.get("hull_max_speed", data.get("hull_speed_estimate", 0.0))
        self._v_hull_spd.config(
            text=f"{hull_spd:.0f} u/s" if hull_spd > 0 else "—",
            fg=FG_OK if hull_spd > 0 else FG_LABEL)

        # Noclip mode indicators
        noclip_on = data.get("noclip", False)
        noclip_mode = data.get("noclip_mode")
        if not noclip_on:
            self._v_noclip.config(text="off", fg=FG_LABEL)
        elif isinstance(noclip_mode, str) and noclip_mode.strip():
            self._v_noclip.config(text=noclip_mode, fg=FG_TARGET)
        else:
            self._v_noclip.config(text="ON", fg=FG_OK)

        # Bonuses
        for lbl in self._bonus_labels:
            lbl.destroy()
        self._bonus_labels.clear()

        bonuses = data.get("bonuses", [])
        nr = data.get("near_radius", 1500.0)

        if not bonuses:
            lbl = tk.Label(self._frm_bonuses, text="  нет бонусов",
                           font=FONT_SMALL, fg=FG_FAR, bg=BG, anchor="w")
            lbl.pack(fill="x")
            self._bonus_labels.append(lbl)
        else:
            for b in bonuses:
                bid   = b["id"]
                dist  = b.get("dist")
                tgt   = b.get("targeting", False)
                icon  = _type_icon(bid)
                color = FG_TARGET if tgt else FG_FAR
                dist_str = f"{dist:.0f}u" if dist is not None else "?u"
                prefix = "▶ " if tgt else "  "
                text = f"{prefix}{icon} {bid}  [{dist_str}]"
                lbl = tk.Label(self._frm_bonuses, text=text,
                               font=FONT_SMALL, fg=color, bg=BG, anchor="w")
                lbl.pack(fill="x")
                self._bonus_labels.append(lbl)


def main():
    p = argparse.ArgumentParser(description="ProTanki proxy overlay")
    p.add_argument("--port", type=int, default=25581,
                   help="Status server port (matches --status-port of the proxy, default: %(default)s)")
    args = p.parse_args()

    url = f"http://127.0.0.1:{args.port}/status"

    root = tk.Tk()
    OverlayApp(root, url)
    root.mainloop()


if __name__ == "__main__":
    main()
