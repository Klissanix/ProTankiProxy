from __future__ import annotations
import struct


def _instant_accel(payload: bytes, max_speed: float) -> bytes:
    """
    Skip the tank acceleration ramp-up: when movement keys are pressed and the
    reported speed is below max_speed, immediately set velocity to max_speed in
    the same direction (x,y plane).

    Never exceeds the tank's natural maximum speed, so the server should accept
    the velocity without authoritative corrections.

    max_speed: auto-detected from rolling window in _ProxyShared.observed_max_speed().
    """
    if len(payload) not in (59, 63):
        return payload
    if payload[19] == 0:            # key_state byte: no direction key pressed
        return payload
    if payload[20]:                 # velocity Vec3 null flag
        return payload
    vx, vy, vz = struct.unpack_from(">fff", payload, 21)
    spd = (vx * vx + vy * vy) ** 0.5
    if spd < max_speed * 0.40:     # still in natural ramp-up, don't touch
        return payload
    if spd >= max_speed * 0.95:    # already at full speed
        return payload
    scale = max_speed / spd
    buf = bytearray(payload)
    struct.pack_into(">fff", buf, 21, vx * scale, vy * scale, vz * scale)
    return bytes(buf)
