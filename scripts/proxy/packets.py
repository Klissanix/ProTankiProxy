from __future__ import annotations
import struct
from typing import Dict, List, Optional, Tuple

from .cipher import ProTankiCipher

# ─── Packet ID registry ───────────────────────────────────────────────────────

KEY_EXCHANGE_ID   =  2001736388   # S→C: carries XOR key vector (plaintext, pre-cipher)
LOCALE_ID         = -1864333717   # C→S: first encrypted packet after key init
SPAWN_ID          =  1831462385   # S→C: bonus spawned on battlefield
PICKUP_REQ_ID     = -1047185003   # C→S: client requests bonus pickup
PICKUP_CONFIRM_ID = -1291499147   # S→C: server confirms bonus pickup
REMOVE_ID         = -2026749922   # S→C: bonus removed without pickup
CRYSTAL_ID        =  -593513288   # S→C: crystal balance update
FUND_ID           =  1149211509   # S→C: battle fund change
MOVEMENT_ID       =  329279865    # C→S: tank physics state, 59 bytes
MOVEMENT_EXT_ID   = -1683279062   # C→S: same + turret angle float (63 bytes), more frequent
ENEMY_STATE_ID    = 1927704181    # S→C: enemy turret angle update (StringCodec(tank_id) + float32(turret_rad) + uint8(flags))
ENEMY_MOVE_ID     = 1516578027    # S→C: full enemy movement state (mirrors MOVEMENT_EXT_ID but with StringCodec(tank_id) header)
FIRE_ID           = -114968993    # C→S: shoot packet — tick(4) + turret_angle_rad(4 float) + flags(1) + tail(2)
TANK_SPEC_UPDATE_ID = -1672577397 # S→C: tank spec update (String tank_id + 4 float + int16)
BATTLE_SELECT_ID  =  2092412133   # C→S: battle select (enter/switch battle)
JOIN_SPECTATOR_ID = -1315002220   # C→S: join as spectator
BATTLE_CREATE_ID  = -2135234426   # C→S: create battle
TEAM_JOIN_ID      = -1284211503   # C→S: team join/fight

# BattleUtils.toClientScale multiplier from decompiled AS3 (`new ... (100)`).
BATTLE_SCALE = 100.0

# Movement payload layout (both variants, verified from AS3 Codect348a32):
#   [0:4]   int32 BE   tick
#   [4:6]   int16 BE   state flags
#   [6:18]  Vec3 #1    angular velocity  (null_flag@6,  xyz@7)
#   [19]    byte       key state
#   [20:32] Vec3 #2    linear velocity   (null_flag@20, xyz@21)  vx/vy/vz
#   [33:45] Vec3 #3    rotation euler    (null_flag@33, xyz@34)
#   [46:58] Vec3 #4    position          (null_flag@46, xyz@47)
#   [59:63] float BE   turret angle      (MOVEMENT_EXT_ID only)

NAMES: Dict[int, str] = {
    KEY_EXCHANGE_ID:   "key_exchange",
    LOCALE_ID:         "locale",
    SPAWN_ID:          "bonus_spawn",
    PICKUP_REQ_ID:     "pickup_request",
    PICKUP_CONFIRM_ID: "pickup_confirm",
    REMOVE_ID:         "bonus_remove",
    CRYSTAL_ID:        "crystal_update",
    FUND_ID:           "fund_update",
    TANK_SPEC_UPDATE_ID: "tank_spec_update",
    BATTLE_SELECT_ID:  "battle_select",
    JOIN_SPECTATOR_ID: "join_spectator",
    BATTLE_CREATE_ID:  "battle_create",
    TEAM_JOIN_ID:      "team_join",
}

MAX_FRAME = 4_000_000   # sanity cap on individual frame length


# ─── Frame helpers ────────────────────────────────────────────────────────────

def _pull_frames(buf: bytearray) -> List[Tuple[int, bytes, bool]]:
    """
    Consume complete frames from *buf* (modified in place).
    Returns list of (packet_id, raw_encrypted_payload_bytes, compressed_flag).
    """
    out: List[Tuple[int, bytes, bool]] = []
    while True:
        if len(buf) < 8:
            break
        hw = struct.unpack_from(">I", buf, 0)[0]
        compressed = bool(hw >> 24 & 0x40)
        total_len = hw & 0xFFFFFF
        if total_len < 8 or total_len > MAX_FRAME:
            del buf[:4]
            continue
        if len(buf) < total_len:
            break
        pid = struct.unpack_from(">i", buf, 4)[0]
        payload_enc = bytes(buf[8:total_len])
        del buf[:total_len]
        out.append((pid, payload_enc, compressed))
    return out


def _build_frame(packet_id: int, plaintext_payload: bytes,
                 cipher: object) -> bytes:
    """Serialise a complete encrypted frame."""
    payload_enc = cipher.encrypt_cs(plaintext_payload)
    total_len = 8 + len(payload_enc)
    header_word = total_len & 0xFFFFFF
    header = struct.pack(">I", header_word) + struct.pack(">i", packet_id)
    return header + payload_enc


# ─── Codec helpers ────────────────────────────────────────────────────────────

def _decode_vector_byte(payload: bytes) -> List[int]:
    """VectorCodecByte: 4-byte big-endian count + count single bytes."""
    if len(payload) < 4:
        return []
    count = struct.unpack_from(">i", payload, 0)[0]
    if count < 0 or 4 + count > len(payload):
        return []
    return list(payload[4: 4 + count])


def _decode_string(payload: bytes, off: int) -> Tuple[Optional[str], int]:
    """
    StringCodec decode.
    Layout: 1-byte null-flag | (4-byte big-endian length | UTF-8 bytes)
    """
    if off >= len(payload):
        return None, off
    is_null = payload[off]; off += 1
    if is_null:
        return None, off
    if off + 4 > len(payload):
        return None, off
    slen = struct.unpack_from(">i", payload, off)[0]; off += 4
    if slen < 0 or off + slen > len(payload):
        return None, off
    return payload[off: off + slen].decode("utf-8", errors="replace"), off + slen


def _encode_string(s: str) -> bytes:
    """StringCodec encode: 0x00 + 4-byte big-endian length + UTF-8."""
    raw = s.encode("utf-8")
    return b"\x00" + struct.pack(">i", len(raw)) + raw


def _parse_tank_spec_update(payload: bytes) -> Optional[Tuple[str, float, float, float, float, int]]:
    """
    Decode packet -1672577397 (`§implements throw§` in decompiled AS3).

    Layout:
      StringCodec(tank_id)
      float32 speed_raw
      float32 hull_turn_raw
      float32 turret_turn_raw
      float32 acceleration_raw
      int16 mode

    Numeric fields are server-scale values.
    Convert to client physics units with `value * BATTLE_SCALE`.
    """
    tank_id, off = _decode_string(payload, 0)
    if tank_id is None:
        return None
    if off + 18 > len(payload):
        return None
    speed_raw, hull_turn_raw, turret_turn_raw, acceleration_raw = struct.unpack_from(">ffff", payload, off)
    off += 16
    mode = struct.unpack_from(">h", payload, off)[0]
    return tank_id, speed_raw, hull_turn_raw, turret_turn_raw, acceleration_raw, mode


def _parse_spawn(payload: bytes) -> Optional[Tuple[str, float, Optional[Tuple[float, float, float]]]]:
    """
    Decode bonus-spawn payload.
    Returns (bonusId, lifetime_seconds, pos) or None on parse error.
    pos is (x, y, z) in game units if the position field is non-null, else None.

    Layout: bonusId(StringCodec) + position(Vector3Codec) + lifetime(IntCodec ms)
    """
    bonus_id, off = _decode_string(payload, 0)
    if bonus_id is None:
        return None
    if off >= len(payload):
        return bonus_id, 0.0, None
    null_flag = payload[off]; off += 1
    if not null_flag and off + 12 <= len(payload):
        px, py, pz = struct.unpack_from(">fff", payload, off)
        pos: Optional[Tuple[float, float, float]] = (px, py, pz)
        off += 12
    else:
        pos = None
        if not null_flag:
            off += 12
    if off + 4 <= len(payload):
        lifetime_ms = struct.unpack_from(">i", payload, off)[0]
    else:
        lifetime_ms = 0
    return bonus_id, max(0, lifetime_ms) / 1000.0, pos
