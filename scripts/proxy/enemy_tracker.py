from __future__ import annotations

import math
import struct
import threading
import time
from typing import Dict, Optional, Tuple

_State = Tuple[float, float, float, float, float]


class EnemyTracker:
    """Thread-safe store of enemy tank positions."""

    STALE_SEC = 5.0
    SWITCH_THRESHOLD_RAD = 0.52

    def __init__(self) -> None:
        self._lock = threading.Lock()
        self._tanks: Dict[str, _State] = {}
        self._locked_target: Optional[str] = None

    def update(self, tank_id: str,
               x: float, y: float, z: float,
               turret_rad: float = 0.0) -> None:
        with self._lock:
            self._tanks[tank_id] = (x, y, z, turret_rad, time.monotonic())

    def remove(self, tank_id: str) -> None:
        with self._lock:
            self._tanks.pop(tank_id, None)

    def ingest(self, plain: bytes, roster: Dict[int, str]) -> Optional[str]:
        if len(plain) < 6:
            return None
        if plain[0] != 0:
            return None
        slen = struct.unpack_from(">i", plain, 1)[0]
        if slen <= 0 or 5 + slen + 4 > len(plain):
            return None
        try:
            tank_id = plain[5: 5 + slen].decode("utf-8")
        except UnicodeDecodeError:
            return None
        off = 5 + slen
        turret_rad = struct.unpack_from(">f", plain, off)[0]
        with self._lock:
            existing = self._tanks.get(tank_id)
            x, y, z = (existing[0], existing[1], existing[2]) if existing else (0.0, 0.0, 0.0)
            self._tanks[tank_id] = (x, y, z, turret_rad, time.monotonic())
        return tank_id

    def ingest_move(self, plain: bytes) -> Optional[str]:
        if len(plain) < 10:
            return None
        if plain[0] != 0:
            return None
        slen = struct.unpack_from(">i", plain, 1)[0]
        if slen <= 0 or 5 + slen + 57 > len(plain):
            return None
        try:
            tank_id = plain[5: 5 + slen].decode("utf-8")
        except UnicodeDecodeError:
            return None
        off = 5 + slen
        pos_null = plain[off + 40]
        if pos_null == 0 and off + 53 <= len(plain):
            px, py, pz = struct.unpack_from(">fff", plain, off + 41)
        else:
            px = py = pz = 0.0
        turret_rad = struct.unpack_from(">f", plain, off + 53)[0] if off + 57 <= len(plain) else 0.0
        with self._lock:
            self._tanks[tank_id] = (px, py, pz, turret_rad, time.monotonic())
        return tank_id

    def _fresh(self) -> Dict[str, _State]:
        now = time.monotonic()
        with self._lock:
            return {tid: s for tid, s in self._tanks.items() if now - s[4] < self.STALE_SEC}

    def count(self) -> int:
        return len(self._fresh())

    def find_nearest(self, my: Tuple[float, float, float]) -> Optional[Tuple[str, float, float, float]]:
        tanks = self._fresh()
        if not tanks:
            self._locked_target = None
            return None
        mx, my_, _ = my
        tid, s = min(
            tanks.items(),
            key=lambda kv: (kv[1][0] - mx) ** 2 + (kv[1][1] - my_) ** 2,
        )
        self._locked_target = tid
        return tid, s[0], s[1], s[2]

    def find_optimal(self, my: Tuple[float, float, float],
                     cur_turret_rad: float) -> Optional[Tuple[str, float, float, float]]:
        tanks = self._fresh()
        if not tanks:
            self._locked_target = None
            return None
        mx, my_, _ = my

        def rot_cost(kv: Tuple[str, _State]) -> float:
            ex, ey = kv[1][0], kv[1][1]
            need = math.atan2(ey - my_, ex - mx)
            diff = abs(need - cur_turret_rad) % (2 * math.pi)
            return min(diff, 2 * math.pi - diff)

        locked = self._locked_target
        if locked and locked in tanks:
            locked_cost = rot_cost((locked, tanks[locked]))
            best_tid, best_s = min(tanks.items(), key=rot_cost)
            best_cost = rot_cost((best_tid, best_s))
            if locked_cost - best_cost < self.SWITCH_THRESHOLD_RAD:
                s = tanks[locked]
                return locked, s[0], s[1], s[2]
            self._locked_target = best_tid
            return best_tid, best_s[0], best_s[1], best_s[2]

        best_tid, best_s = min(tanks.items(), key=rot_cost)
        self._locked_target = best_tid
        return best_tid, best_s[0], best_s[1], best_s[2]

    def all_targets(self, my: Optional[Tuple[float, float, float]]) -> list:
        tanks = self._fresh()
        out = []
        for tid, s in tanks.items():
            dist = None
            if my:
                dx = s[0] - my[0]
                dy = s[1] - my[1]
                dist = round((dx * dx + dy * dy) ** 0.5)
            out.append({"id": tid, "x": round(s[0]), "y": round(s[1]), "z": round(s[2]), "dist": dist})
        return sorted(out, key=lambda d: (d["dist"] is None, d["dist"] or 0))