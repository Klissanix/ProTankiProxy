from __future__ import annotations
import math
import socket
import struct
import time
import threading

from .cipher import ProTankiCipher
from .packets import (
    KEY_EXCHANGE_ID, SPAWN_ID, PICKUP_CONFIRM_ID, CRYSTAL_ID,
    FUND_ID, REMOVE_ID, PICKUP_REQ_ID, MOVEMENT_ID, MOVEMENT_EXT_ID,
    ENEMY_STATE_ID, ENEMY_MOVE_ID, FIRE_ID, TANK_SPEC_UPDATE_ID, BATTLE_SCALE,
    BATTLE_SELECT_ID, JOIN_SPECTATOR_ID, BATTLE_CREATE_ID, TEAM_JOIN_ID,
    NAMES, _pull_frames,
    _decode_vector_byte, _decode_string, _parse_spawn, _parse_tank_spec_update,
)
from .shared import _ProxyShared
from .logger import EventLog


def _addr_to_text(addr: object) -> str:
    if isinstance(addr, tuple) and len(addr) >= 2:
        return f"{addr[0]}:{addr[1]}"
    return str(addr) if addr else ""


def _socket_addr(sock: socket.socket, *, peer: bool) -> str:
    try:
        raw = sock.getpeername() if peer else sock.getsockname()
    except OSError:
        return ""
    return _addr_to_text(raw)


def _fwd_sc(server_sock: socket.socket,
            client_sock: socket.socket,
            shared: _ProxyShared,
            logger: EventLog) -> None:
    """
    Server → Client forwarding thread.
    """
    buf = bytearray()
    raw_buf = bytearray()
    recv_bytes = 0
    sent_bytes = 0
    recv_chunks = 0
    frame_count = 0
    end_reason = ""
    end_error = ""

    def send_raw() -> bool:
        nonlocal sent_bytes, end_reason, end_error
        if raw_buf:
            payload = bytes(raw_buf)
            try:
                client_sock.sendall(payload)
                sent_bytes += len(payload)
            except OSError as exc:
                end_reason = "downstream_send_error"
                end_error = str(exc)
                return False
            raw_buf.clear()
        return True

    try:
        while shared.session_active:
            try:
                chunk = server_sock.recv(65536)
            except socket.timeout:
                continue
            except OSError as exc:
                end_reason = "upstream_recv_error"
                end_error = str(exc)
                break
            if not chunk:
                end_reason = "upstream_eof"
                break
            recv_chunks += 1
            recv_bytes += len(chunk)
            raw_buf.extend(chunk)
            buf.extend(chunk)

            frames = _pull_frames(buf)
            frame_count += len(frames)
            for pid, payload_enc, compressed in frames:

                if pid == KEY_EXCHANGE_ID and not shared.cipher_active:
                    key_vec = _decode_vector_byte(payload_enc)
                    shared.activate(key_vec)
                    logger.log("cipher_init",
                               key_bytes=len(key_vec),
                               computed_k=hex(shared._sc_cipher._k
                                              if isinstance(shared._sc_cipher, ProTankiCipher)
                                              else 0))
                    if not send_raw():
                        break
                    continue

                if not shared.cipher_active:
                    continue

                plain = shared.process_sc(payload_enc, compressed)

                if pid == SPAWN_ID:
                    result = _parse_spawn(plain)
                    if result:
                        bonus_id, lifetime_s, bpos = result
                        bonus_type = bonus_id.split("#")[0] if "#" in bonus_id else bonus_id
                        logger.log("spawn_detected",
                                   bonus_id=bonus_id,
                                   bonus_type=bonus_type,
                                   lifetime_s=round(lifetime_s, 1),
                                   payload_len=len(plain),
                                   hex=plain.hex())
                        shared.add_bonus(bonus_id, bpos)
                    else:
                        logger.log("spawn_parse_error", payload_len=len(plain),
                                   hex=plain.hex())

                elif pid == PICKUP_CONFIRM_ID:
                    confirmed_id, _ = _decode_string(plain, 0)
                    shared.remove_bonus(confirmed_id)
                    logger.log("pickup_confirmed",
                               bonus_id=confirmed_id,
                               bonus_type=confirmed_id.split("#")[0] if "#" in confirmed_id else confirmed_id,
                               payload_len=len(plain))
                    shared.stat_confirmed += 1

                elif pid == CRYSTAL_ID:
                    balance = struct.unpack_from(">i", plain, 0)[0] if len(plain) >= 4 else None
                    logger.log("crystal_update", balance=balance, payload_len=len(plain))

                elif pid == FUND_ID:
                    fund = struct.unpack_from(">i", plain, 0)[0] if len(plain) >= 4 else None
                    logger.log("fund_update", fund=fund, payload_len=len(plain))

                elif pid == REMOVE_ID:
                    removed_id, _ = _decode_string(plain, 0)
                    shared.remove_bonus(removed_id)
                    logger.log("bonus_removed",
                               bonus_id=removed_id,
                               bonus_type=removed_id.split("#")[0] if "#" in removed_id else removed_id,
                               payload_len=len(plain))

                elif pid == TANK_SPEC_UPDATE_ID:
                    parsed = _parse_tank_spec_update(plain)
                    if parsed is None:
                        logger.log("tank_spec_parse_error", payload_len=len(plain))
                    else:
                        tank_id, speed_raw, _hull_turn, _turret_turn, accel_raw, mode = parsed
                        speed_client = speed_raw * BATTLE_SCALE
                        is_local = shared.ingest_tank_spec_speed(tank_id, speed_raw, speed_client)
                        logger.log("tank_spec_update",
                                   tank_id=tank_id,
                                   local=is_local,
                                   speed_raw=round(speed_raw, 3),
                                   speed=round(speed_client, 1),
                                   acceleration_raw=round(accel_raw, 3),
                                   mode=mode,
                                   payload_len=len(plain))

                else:
                    if pid == -64696933:
                        corr_tank_id, _ = _decode_string(plain, 0)
                        shared.maybe_set_local_tank_id(corr_tank_id)
                        shared.stat_corrections += 1
                        shared._corr_times.append(time.monotonic())
                        logger.log("sc_packet", pid=pid, name="physics_correction",
                                   payload_len=len(plain), compressed=compressed,
                                   tank_id=corr_tank_id,
                                   hex=plain.hex())
                    elif pid == ENEMY_STATE_ID:
                        tank_id = shared.enemy_tracker.ingest(plain, shared._enemy_roster)
                        if tank_id:
                            with shared.enemy_tracker._lock:
                                s = shared.enemy_tracker._tanks.get(tank_id)
                            turret_deg = round(math.degrees(s[3]), 1) if s else None
                            logger.log("enemy_turret",
                                       tank_id=tank_id,
                                       turret_deg=turret_deg)
                    elif pid == ENEMY_MOVE_ID:
                        tank_id = shared.enemy_tracker.ingest_move(plain)
                        if tank_id:
                            with shared.enemy_tracker._lock:
                                s = shared.enemy_tracker._tanks.get(tank_id)
                            if s:
                                my, _body_rot, _turret_rad, _speed, _obs = shared.motion_snapshot()
                                dist = None
                                if my:
                                    dx = s[0] - my[0]; dy = s[1] - my[1]  # XY horizontal
                                    dist = round((dx * dx + dy * dy) ** 0.5)
                                logger.log("enemy_update",
                                           tank_id=tank_id,
                                           x=round(s[0]), y=round(s[1]), z=round(s[2]),
                                           dist=dist,
                                           turret_deg=round(math.degrees(s[3]), 1))
                    else:
                        hex_preview = None
                        if len(plain) <= 64:
                            hex_preview = plain.hex()
                        elif len(plain) <= 256:
                            hex_preview = plain[:64].hex() + "..."
                        logger.log("sc_packet", pid=pid, name=NAMES.get(pid, "unknown"),
                                   payload_len=len(plain), compressed=compressed,
                                   hex=hex_preview)

            if not send_raw():
                break

        if not end_reason:
            end_reason = "session_inactive" if not shared.session_active else "loop_exit"
    except (OSError, ConnectionResetError) as exc:
        end_reason = "forwarder_exception"
        end_error = str(exc)
    finally:
        logger.log(
            "forwarder_stopped",
            direction="s2c",
            reason=end_reason or "finally",
            error=end_error or None,
            recv_chunks=recv_chunks,
            recv_bytes=recv_bytes,
            sent_bytes=sent_bytes,
            frames=frame_count,
            src_local=_socket_addr(server_sock, peer=False),
            src_peer=_socket_addr(server_sock, peer=True),
            dst_local=_socket_addr(client_sock, peer=False),
            dst_peer=_socket_addr(client_sock, peer=True),
        )
        try:
            client_sock.shutdown(socket.SHUT_WR)
        except OSError:
            pass


def _fwd_cs(client_sock: socket.socket,
            server_sock: socket.socket,
            shared: _ProxyShared,
            logger: EventLog) -> None:
    """
    Client → Server forwarding thread.
    """
    battle_reset_pids = {
        BATTLE_SELECT_ID,
        JOIN_SPECTATOR_ID,
        BATTLE_CREATE_ID,
        TEAM_JOIN_ID,
    }
    recv_bytes = 0
    recv_chunks = 0
    passthrough_sent_bytes = 0
    frame_count = 0
    end_reason = ""
    end_error = ""
    try:
        while shared.session_active:
            try:
                chunk = client_sock.recv(65536)
            except socket.timeout:
                continue
            except OSError as exc:
                end_reason = "client_recv_error"
                end_error = str(exc)
                break
            if not chunk:
                end_reason = "client_eof"
                break
            recv_chunks += 1
            recv_bytes += len(chunk)
            if shared.cipher_active:
                try:
                    cs_frames = shared.process_cs(chunk, server_sock)
                except OSError as exc:
                    end_reason = "upstream_send_error"
                    end_error = str(exc)
                    break
                except Exception as exc:
                    end_reason = "cs_process_error"
                    end_error = str(exc)
                    break
                frame_count += len(cs_frames)
                for pid, plain, _ in cs_frames:
                    if pid in battle_reset_pids:
                        shared.reset_battle_state()
                        logger.log("battle_state_reset",
                                   trigger_pid=pid,
                                   name=NAMES.get(pid, "unknown"))
                        continue
                    if pid == PICKUP_REQ_ID:
                        bid, _ = _decode_string(plain, 0)
                        logger.log("client_pickup_request", bonus_id=bid,
                                   payload_len=len(plain))
                    elif pid == FIRE_ID and len(plain) >= 8:
                        fire_tick = struct.unpack_from(">i", plain, 0)[0]
                        angle_deg = round(math.degrees(struct.unpack_from(">f", plain, 4)[0]), 1)
                        my_pos, body_rot, _turret_rad, _speed, _obs = shared.motion_snapshot()
                        nearest = shared.enemy_tracker.find_nearest(my_pos) if my_pos else None
                        t_pos = (round(nearest[1]), round(nearest[2]), round(nearest[3])) if nearest else None
                        logger.log("fire",
                                   tick=fire_tick,
                                   sent_angle_deg=angle_deg,
                                   body_rot_deg=round(math.degrees(body_rot), 1),
                                   nearest_enemy=nearest[0] if nearest else None,
                                   nearest_pos=t_pos,
                                   targets_count=shared.enemy_tracker.count(),
                                   payload_len=len(plain),
                                   hex=plain.hex())
                    elif pid in (MOVEMENT_ID, MOVEMENT_EXT_ID):
                        if len(plain) >= 33 and not plain[20]:
                            vx, vy, vz = struct.unpack_from(">fff", plain, 21)
                            # ProTanki movement is X/Y on the ground plane, Z is height.
                            speed_xy = round((vx * vx + vy * vy) ** 0.5, 3)
                            key_st = plain[19] if len(plain) > 19 else 0
                            shared.current_speed = speed_xy

                            # Body rotation
                            body_rot_deg = None
                            rx_deg = ry_deg = rz_deg = None
                            if len(plain) >= 46 and not plain[33]:
                                e_rx, e_ry, e_rz = struct.unpack_from(">fff", plain, 34)
                                rx_deg = round(math.degrees(e_rx), 1)
                                ry_deg = round(math.degrees(e_ry), 1)
                                rz_deg = round(math.degrees(e_rz), 1)
                                body_rot_deg = rz_deg

                            # Position
                            pos = None
                            if len(plain) >= 59 and not plain[46]:
                                px, py, pz = struct.unpack_from(">fff", plain, 47)
                                pos = (round(px), round(py), round(pz))

                            # Own turret angle (only in MOVEMENT_EXT_ID, 63 bytes)
                            turret_deg = None
                            if pid == MOVEMENT_EXT_ID and len(plain) == 63:
                                turret_rad = struct.unpack_from(">f", plain, 59)[0]
                                turret_deg = round(math.degrees(turret_rad), 1)

                            logger.log("movement",
                                       pid=pid,
                                       tick=struct.unpack_from(">i", plain, 0)[0],
                                       key_state=key_st,
                                       pos=pos,
                                       body_rot_deg=body_rot_deg,
                                       euler_rx_deg=rx_deg,
                                       euler_ry_deg=ry_deg,
                                       euler_rz_deg=rz_deg,
                                       turret_deg=turret_deg,
                                       speed_xy=speed_xy,
                                       speed_xz=speed_xy,
                                       vx=round(vx, 3), vy=round(vy, 3), vz=round(vz, 3))
                    elif pid not in (1484572481,):
                        logger.log("cs_packet", pid=pid, payload_len=len(plain),
                                   hex=plain.hex() if len(plain) <= 24 else plain[:24].hex() + "...")
            else:
                try:
                    server_sock.sendall(chunk)
                    passthrough_sent_bytes += len(chunk)
                except OSError as exc:
                    end_reason = "upstream_send_error"
                    end_error = str(exc)
                    break
        if not end_reason:
            end_reason = "session_inactive" if not shared.session_active else "loop_exit"
    except (OSError, ConnectionResetError) as exc:
        end_reason = "forwarder_exception"
        end_error = str(exc)
    finally:
        logger.log(
            "forwarder_stopped",
            direction="c2s",
            reason=end_reason or "finally",
            error=end_error or None,
            recv_chunks=recv_chunks,
            recv_bytes=recv_bytes,
            passthrough_sent_bytes=passthrough_sent_bytes,
            frames=frame_count,
            cipher_active=shared.cipher_active,
            src_local=_socket_addr(client_sock, peer=False),
            src_peer=_socket_addr(client_sock, peer=True),
            dst_local=_socket_addr(server_sock, peer=False),
            dst_peer=_socket_addr(server_sock, peer=True),
        )
        try:
            server_sock.shutdown(socket.SHUT_WR)
        except OSError:
            pass


def _pickup_worker(shared: _ProxyShared,
                   logger: EventLog,
                   pickup_delay_s: float,
                   near_interval: float) -> None:
    """
    Retries pickup_request only for bonuses within shared.near_radius of the tank.
    Farther bonuses are skipped — the server rejects them anyway.
    Set near_radius=0 to always send (no proximity filter).
    Auto-pickup can be disabled at runtime via shared.auto_pickup_enabled.
    """
    _TICK = 0.05
    while shared.session_active:
        time.sleep(_TICK)
        if not shared.auto_pickup_enabled:
            continue
        if not shared.cipher_active:
            continue
        for bonus_id in shared.get_active_bonus_ids():
            if not shared.session_active:
                break
            interval = shared.get_bonus_interval(bonus_id, shared.near_radius, near_interval)
            if interval is None:
                continue
            shared.inject_pickup(bonus_id, logger, min_interval_s=interval * 0.9)
