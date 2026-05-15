from __future__ import annotations
import collections
import math
import socket
import struct
import threading
import time
import zlib
from typing import Dict, List, Optional, Tuple

from .cipher import ProTankiCipher, _NOP
from .packets import (
    MOVEMENT_ID, MOVEMENT_EXT_ID, PICKUP_REQ_ID, MAX_FRAME,
    _pull_frames, _build_frame, _encode_string,
)
from .logger import EventLog
from .enemy_tracker import EnemyTracker


class _ProxyShared:
    """Mutable state shared between the forwarding threads of one session."""

    def __init__(self) -> None:
        # Single lock: _cs_server cipher + all server sendall() must be atomic.
        self._srv_lock = threading.Lock()
        # Separate lock for _sc_cipher / _cs_client (S→C / client-side).
        self._sc_lock = threading.Lock()
        # Session/cipher flags are toggled from multiple threads.
        self._state_lock = threading.Lock()
        # Telemetry fields are written in forwarding thread and read by UI/status threads.
        self._telemetry_lock = threading.Lock()

        self._sc_cipher: object = _NOP
        self._cs_client: object = _NOP
        self._cs_server: object = _NOP

        self._cipher_active: bool = False
        self._seen: Dict[str, float] = {}
        self.server_sock: Optional[socket.socket] = None
        self._tank_pos: Optional[Tuple[float, float, float]] = None
        self._tank_body_rot: float = 0.0   # yaw of tank hull (rz from rotation_euler)
        self._last_turret_rad: float = 0.0
        self._session_active: bool = True
        self._current_speed: float = 0.0
        self.local_tank_id: Optional[str] = None
        self.hull_speed_packet: float = 0.0
        self.hull_speed_raw: float = 0.0
        self._tank_spec_speed_by_id: Dict[str, float] = {}

        # Feature toggles (runtime, controlled from hotkeys)
        self.auto_pickup_enabled: bool = False
        self.noclip_enabled: bool = False
        self.xray_enabled: bool = False
        self.near_radius: float = 1500.0

        # Set to True by HTTP server after patched library.swf is successfully served.
        self.swf_served: bool = False

        self.enemy_tracker: EnemyTracker = EnemyTracker()
        self._enemy_roster: Dict[int, str] = {}   # slot -> tank_id

        # Rolling window of speed_xy (300 frames ≈ 15 s at 20 fps)
        self._speed_window: collections.deque = collections.deque(maxlen=300)

        # Active bonuses: id -> spawn time
        self._active: Dict[str, float] = {}
        self._active_pos: Dict[str, Optional[Tuple[float, float, float]]] = {}
        self._active_lock = threading.Lock()

        # Stats for overlay
        self.stat_confirmed: int = 0
        self.stat_injected:  int = 0
        self.stat_corrections: int = 0
        self._corr_times: collections.deque = collections.deque(maxlen=60)

    @property
    def cipher_active(self) -> bool:
        with self._state_lock:
            return self._cipher_active

    @cipher_active.setter
    def cipher_active(self, value: bool) -> None:
        with self._state_lock:
            self._cipher_active = bool(value)

    @property
    def session_active(self) -> bool:
        with self._state_lock:
            return self._session_active

    @session_active.setter
    def session_active(self, value: bool) -> None:
        with self._state_lock:
            self._session_active = bool(value)

    @property
    def tank_pos(self) -> Optional[Tuple[float, float, float]]:
        with self._telemetry_lock:
            return self._tank_pos

    @tank_pos.setter
    def tank_pos(self, value: Optional[Tuple[float, float, float]]) -> None:
        with self._telemetry_lock:
            self._tank_pos = value

    @property
    def tank_body_rot(self) -> float:
        with self._telemetry_lock:
            return self._tank_body_rot

    @tank_body_rot.setter
    def tank_body_rot(self, value: float) -> None:
        with self._telemetry_lock:
            self._tank_body_rot = float(value)

    @property
    def current_speed(self) -> float:
        with self._telemetry_lock:
            return self._current_speed

    @current_speed.setter
    def current_speed(self, value: float) -> None:
        with self._telemetry_lock:
            self._current_speed = float(value)

    def motion_snapshot(self) -> Tuple[
        Optional[Tuple[float, float, float]],
        float,
        float,
        float,
        float,
    ]:
        """Thread-safe snapshot of motion fields used by logs and UI."""
        with self._telemetry_lock:
            tpos = self._tank_pos
            body_rot = self._tank_body_rot
            turret_rad = self._last_turret_rad
            current_speed = self._current_speed
            speeds = list(self._speed_window)

        if len(speeds) < 10:
            observed_max = 0.0
        else:
            speeds.sort()
            idx = int(len(speeds) * 0.90)
            observed_max = speeds[min(idx, len(speeds) - 1)]
        return tpos, body_rot, turret_rad, current_speed, observed_max

    # ── Speed tracking ────────────────────────────────────────────────────────

    def observed_max_speed(self) -> float:
        """90th-percentile speed_xy over the last ~15 s. 0.0 if < 10 samples."""
        return self.motion_snapshot()[4]

    def corrections_per_sec(self) -> float:
        now = time.monotonic()
        recent = [t for t in self._corr_times if now - t <= 10.0]
        return round(len(recent) / 10.0, 2)

    def _is_enemy_tank_id(self, tank_id: str) -> bool:
        if tank_id in self._enemy_roster.values():
            return True
        with self.enemy_tracker._lock:
            return tank_id in self.enemy_tracker._tanks

    def maybe_set_local_tank_id(self, tank_id: Optional[str]) -> bool:
        """
        Infer local tank id from S->C ids by excluding known enemy ids.
        Returns True when *tank_id* is considered local.
        """
        if not tank_id:
            return False
        with self._telemetry_lock:
            if self.local_tank_id is not None:
                return self.local_tank_id == tank_id
            has_tank_pos = self._tank_pos is not None
        if not has_tank_pos:
            return False
        if self._is_enemy_tank_id(tank_id):
            return False
        with self._telemetry_lock:
            if self.local_tank_id is None:
                self.local_tank_id = tank_id
            return self.local_tank_id == tank_id

    def ingest_tank_spec_speed(self, tank_id: str,
                               speed_raw: float,
                               speed_client: float) -> bool:
        """
        Update speed cache from packet -1672577397.

        Returns True when update belongs to inferred local tank.
        """
        with self._telemetry_lock:
            self._tank_spec_speed_by_id[tank_id] = speed_client
        is_local = self.local_tank_id == tank_id or self.maybe_set_local_tank_id(tank_id)
        if is_local:
            with self._telemetry_lock:
                self.hull_speed_raw = speed_raw
                self.hull_speed_packet = speed_client
            return True

        # Fallback while local id is still unknown: use first seen source.
        with self._telemetry_lock:
            if self.hull_speed_packet <= 0 and len(self._tank_spec_speed_by_id) == 1:
                self.hull_speed_raw = speed_raw
                self.hull_speed_packet = speed_client
        return False

    # ── Overlay status ────────────────────────────────────────────────────────

    @staticmethod
    def _is_gold(bonus_id: str) -> bool:
        """Gold box: always attempt pickup regardless of distance."""
        bid = bonus_id.lower().split("#")[0]
        return bid in ("gold", "crystal_100", "special")

    def get_status(self, near_radius: float) -> dict:
        tpos, tank_body_rot, turret_rad, current_speed, observed_max = self.motion_snapshot()
        with self._state_lock:
            cipher_active = self._cipher_active
            session_active = self._session_active
        with self._telemetry_lock:
            packet_speed_val = self.hull_speed_packet
            local_tank_id = self.local_tank_id
        tracked_targets = self.enemy_tracker.count()
        observed_speed = round(observed_max, 1)
        packet_speed = round(packet_speed_val, 1) if packet_speed_val > 0 else 0.0
        hull_speed = packet_speed if packet_speed > 0 else observed_speed
        hull_speed_source = "packet" if packet_speed > 0 else "observed"
        with self._active_lock:
            bonuses = [
                {
                    "id": bid,
                    "gold": self._is_gold(bid),
                    "pos": list(self._active_pos[bid]) if self._active_pos.get(bid) else None,
                    "dist": round((
                        (self._active_pos[bid][0] - tpos[0]) ** 2 +
                        (self._active_pos[bid][1] - tpos[1]) ** 2
                    ) ** 0.5) if (self._active_pos.get(bid) and tpos) else None,
                    "targeting": (
                        self._is_gold(bid)
                        or (
                            self._active_pos.get(bid) is not None and tpos is not None
                            and near_radius > 0
                            and ((
                                (self._active_pos[bid][0] - tpos[0]) ** 2 +
                                (self._active_pos[bid][1] - tpos[1]) ** 2
                            ) ** 0.5) <= near_radius
                        )
                    ),
                }
                for bid in self._active
            ]
        return {
            "cipher_active": cipher_active,
            "session_active": session_active,
            "tank_pos": list(tpos) if tpos else None,
            "auto_pickup": self.auto_pickup_enabled,
            "noclip": self.noclip_enabled,
            "xray": self.xray_enabled,
            "current_speed": round(current_speed, 1),
            "observed_max_speed": observed_speed,
            "hull_speed_packet": packet_speed if packet_speed > 0 else None,
            "hull_speed_estimate": observed_speed,
            "hull_speed_source": hull_speed_source,
            "hull_max_speed": hull_speed,
            "local_tank_id": local_tank_id,
            "enemy_tracking_active": cipher_active,
            "enemy_targets": tracked_targets,
            "tank_body_rot_deg": round(math.degrees(tank_body_rot), 1),
            "tank_turret_deg": round(math.degrees(turret_rad), 1),
            "corrections_per_sec": self.corrections_per_sec(),
            "stat_confirmed": self.stat_confirmed,
            "stat_injected": self.stat_injected,
            "near_radius": near_radius,
            "bonuses": sorted(bonuses, key=lambda b: (b["dist"] is None, b["dist"] or 0)),
        }

    # ── Bonus tracking ────────────────────────────────────────────────────────

    def add_bonus(self, bonus_id: str,
                  pos: Optional[Tuple[float, float, float]] = None) -> None:
        with self._active_lock:
            self._active[bonus_id] = time.monotonic()
            self._active_pos[bonus_id] = pos

    def remove_bonus(self, bonus_id: str) -> None:
        with self._active_lock:
            self._active.pop(bonus_id, None)
            self._active_pos.pop(bonus_id, None)

    def get_active_bonus_ids(self) -> List[str]:
        with self._active_lock:
            return list(self._active.keys())

    def get_bonus_interval(self, bonus_id: str,
                           near_radius: float,
                           near_interval: float) -> Optional[float]:
        """Return retry interval if within near_radius, else None (skip).
        Gold bonuses bypass the radius check — always attempt pickup."""
        if self._is_gold(bonus_id):
            return near_interval
        with self._active_lock:
            bpos = self._active_pos.get(bonus_id)
        tpos = self.tank_pos
        if near_radius <= 0.0:
            return near_interval
        if bpos is None or tpos is None:
            return None
        dx = bpos[0] - tpos[0]
        dy = bpos[1] - tpos[1]
        dist = (dx * dx + dy * dy) ** 0.5
        return near_interval if dist <= near_radius else None

    def reset_battle_state(self) -> None:
        """
        Clear per-battle runtime state when switching to another map/battle.
        This prevents stale bonuses and enemy targets leaking into the next match.
        """
        with self._active_lock:
            self._active.clear()
            self._active_pos.clear()

        with self._telemetry_lock:
            self._tank_pos = None
            self._tank_body_rot = 0.0
            self._last_turret_rad = 0.0
            self._current_speed = 0.0
            self.local_tank_id = None
            self.hull_speed_packet = 0.0
            self.hull_speed_raw = 0.0
            self._tank_spec_speed_by_id.clear()
            self._enemy_roster.clear()
            self.stat_confirmed = 0
            self.stat_injected = 0
            self.stat_corrections = 0
            self._corr_times.clear()

        with self.enemy_tracker._lock:
            self.enemy_tracker._tanks.clear()
            self.enemy_tracker._locked_target = None

        with self._srv_lock:
            self._seen.clear()

    # ── Cipher init ───────────────────────────────────────────────────────────

    def activate(self, key_vector: List[int]) -> None:
        base = ProTankiCipher(key_vector)
        with self._sc_lock:
            self._sc_cipher = base
            self._cs_client = ProTankiCipher(key_vector)
        with self._srv_lock:
            self._cs_server = ProTankiCipher(key_vector)
        self.cipher_active = True

    # ── S→C decrypt (read-only copy for analysis) ─────────────────────────────

    def process_sc(self, payload_enc: bytes, compressed: bool) -> bytes:
        with self._sc_lock:
            plain = self._sc_cipher.decrypt_sc(payload_enc)
        if compressed:
            try:
                plain = zlib.decompress(plain, -zlib.MAX_WBITS)
            except Exception:
                pass
        return plain

    # ── C→S reencrypt + send ──────────────────────────────────────────────────

    def process_cs(self, raw_chunk: bytes,
                   srv_sock: socket.socket) -> List[Tuple[int, bytes, bool]]:
        with self._srv_lock:
            out = self._reencrypt_cs_chunk(raw_chunk)
            srv_sock.sendall(out)
        return _pull_frames(self._cs_plain_buf)

    def _reencrypt_cs_chunk(self, raw: bytes) -> bytes:
        if not hasattr(self, "_cs_enc_in"):
            self._cs_enc_in:    bytearray = bytearray()
            self._cs_plain_buf: bytearray = bytearray()

        self._cs_enc_in.extend(raw)
        out = bytearray()

        while True:
            buf = self._cs_enc_in
            if len(buf) < 8:
                break
            hw = struct.unpack_from(">I", buf, 0)[0]
            total_len = hw & 0xFFFFFF
            if total_len < 8 or total_len > MAX_FRAME:
                del buf[:4]
                continue
            if len(buf) < total_len:
                break

            header      = bytes(buf[:8])
            enc_payload = bytes(buf[8:total_len])
            del buf[:total_len]

            pid = struct.unpack_from(">i", header, 4)[0]
            plain = self._cs_client.decrypt_cs(enc_payload) if enc_payload else b""

            if pid in (MOVEMENT_ID, MOVEMENT_EXT_ID):
                speed_sample: Optional[float] = None
                pos_sample: Optional[Tuple[float, float, float]] = None
                yaw_sample: Optional[float] = None
                turret_sample: Optional[float] = None
                if len(plain) >= 33 and not plain[20]:
                    vx, vy = struct.unpack_from(">ff", plain, 21)
                    speed_sample = (vx * vx + vy * vy) ** 0.5
                if len(plain) >= 59 and not plain[46]:
                    px, py, pz = struct.unpack_from(">fff", plain, 47)
                    pos_sample = (px, py, pz)
                if len(plain) >= 46 and not plain[33]:
                    _rx, _ry, rz = struct.unpack_from(">fff", plain, 34)
                    yaw_sample = rz
                if len(plain) == 63:
                    turret_sample = struct.unpack_from(">f", plain, 59)[0]
                if (
                    speed_sample is not None
                    or pos_sample is not None
                    or yaw_sample is not None
                    or turret_sample is not None
                ):
                    with self._telemetry_lock:
                        if speed_sample is not None:
                            self._speed_window.append(speed_sample)
                        if pos_sample is not None:
                            self._tank_pos = pos_sample
                        if yaw_sample is not None:
                            self._tank_body_rot = yaw_sample
                        if turret_sample is not None:
                            self._last_turret_rad = turret_sample

            # Append to plain buffer AFTER all modifications
            self._cs_plain_buf.extend(header)
            self._cs_plain_buf.extend(plain)

            enc_out = self._cs_server.encrypt_cs(plain) if plain else b""
            new_total = 8 + len(enc_out)
            out += struct.pack(">I", new_total & 0xFFFFFF)
            out += struct.pack(">i", pid)
            out += enc_out

        return bytes(out)

    # ── Pickup injection ──────────────────────────────────────────────────────

    def inject_pickup(self, bonus_id: str, logger: EventLog,
                      min_interval_s: float) -> None:
        now = time.monotonic()
        last = self._seen.get(bonus_id, 0.0)
        if now - last < min_interval_s:
            return

        if not self._srv_lock.acquire(timeout=0.02):
            return
        try:
            now2 = time.monotonic()
            last2 = self._seen.get(bonus_id, 0.0)
            if now2 - last2 < min_interval_s:
                return
            self._seen[bonus_id] = now2

            srv = self.server_sock
            if srv is None:
                logger.log("inject_skipped_no_socket", bonus_id=bonus_id)
                return

            payload_plain = _encode_string(bonus_id)
            frame = _build_frame(PICKUP_REQ_ID, payload_plain, self._cs_server)
            try:
                srv.sendall(frame)
            except OSError as exc:
                logger.log("inject_error", bonus_id=bonus_id, error=str(exc))
                return
        finally:
            self._srv_lock.release()

        logger.log("pickup_injected", bonus_id=bonus_id,
                   frame_bytes=len(frame), payload_len=len(payload_plain))
        self.stat_injected += 1
