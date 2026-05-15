"""
Promo stress helper for proxy.py.

The helper generates candidate promo codes, sends them through an active
encrypted client session, classifies replies, and stores tested codes so they
are not reused across restarts.
"""
from __future__ import annotations

import datetime as dt
import os
import struct
import threading
import time
from dataclasses import dataclass
from typing import List, Optional, Sequence, Set, Tuple

PROMO_REQUEST_PID = -511004908
PROMO_FAIL_ACK_PID = -1850050333
CRYSTAL_ID = -593513288

DEFAULT_ALPHABET = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"


@dataclass(frozen=True)
class PromoEvent:
    event: str
    code: str
    reason: str
    checked_total: int
    success_total: int
    failed_total: int


def encode_promo_payload(code: str) -> bytes:
    raw = code.encode("ascii")
    return b"\x00" + struct.pack(">i", len(raw)) + raw


class PromoStressEngine:
    """
    Stateful promo generator/classifier.

    Request payload format:
      StringCodec(code) = 0x00 + int32(length) + ASCII code bytes
    """

    def __init__(
        self,
        output_dir: str,
        *,
        min_len: int = 1,
        max_len: int = 50,
        alphabet: str = DEFAULT_ALPHABET,
        interval_ms: int = 1000,
        fail_timeout_ms: int = 2500,
        ack_grace_ms: int = 250,
        success_pids: Optional[Sequence[int]] = None,
        fail_pids: Optional[Sequence[int]] = None,
    ) -> None:
        if min_len < 1:
            raise ValueError("min_len must be >= 1")
        if max_len < min_len:
            raise ValueError("max_len must be >= min_len")

        uniq_alphabet = "".join(dict.fromkeys(alphabet))
        if not uniq_alphabet:
            raise ValueError("alphabet must not be empty")
        if any(ord(ch) > 127 for ch in uniq_alphabet):
            raise ValueError("alphabet must be ASCII")

        self._min_len = min_len
        self._max_len = max_len
        self._alphabet = uniq_alphabet
        self._alphabet_set = set(uniq_alphabet)
        self._base = len(uniq_alphabet)

        self._interval_sec = max(0.0, interval_ms / 1000.0)
        self._fail_timeout_sec = max(0.001, fail_timeout_ms / 1000.0)
        self._ack_grace_sec = max(0.0, ack_grace_ms / 1000.0)

        self._success_pids = set(success_pids or [])
        self._fail_pids = set(fail_pids or [PROMO_FAIL_ACK_PID])

        os.makedirs(output_dir, exist_ok=True)
        self._success_path = os.path.join(output_dir, "promo_success.txt")
        self._failed_path = os.path.join(output_dir, "promo_failed.txt")
        self._cursor_path = os.path.join(output_dir, "promo_cursor.txt")

        self._lock = threading.Lock()
        self._checked: Set[str] = set()
        self._cursor = self._load_cursor()
        self._space_by_len = [self._base ** n for n in range(min_len, max_len + 1)]
        self._exhausted = False

        self._success_total = 0
        self._failed_total = 0
        self._load_checked()

        self._pending_code: Optional[str] = None
        self._pending_sent_at: float = 0.0
        self._pending_fail_at: Optional[float] = None
        self._pending_fail_pid: Optional[int] = None

        self._last_balance: Optional[int] = None
        self._last_send_at: float = 0.0

    def snapshot(self) -> dict:
        with self._lock:
            return {
                "min_len": self._min_len,
                "max_len": self._max_len,
                "alphabet_len": self._base,
                "checked_total": len(self._checked),
                "success_total": self._success_total,
                "failed_total": self._failed_total,
                "cursor": self._cursor,
                "pending": self._pending_code is not None,
                "output_dir": os.path.dirname(self._success_path),
            }

    def poll(self) -> List[PromoEvent]:
        with self._lock:
            return self._poll_locked(time.monotonic())

    def try_next_request(self) -> Optional[Tuple[str, bytes]]:
        with self._lock:
            now = time.monotonic()
            self._poll_locked(now)

            if self._pending_code is not None:
                return None
            if self._exhausted:
                return None
            if now - self._last_send_at < self._interval_sec:
                return None

            code = self._next_unchecked_code_locked()
            if code is None:
                self._exhausted = True
                return None

            self._pending_code = code
            self._pending_sent_at = now
            self._pending_fail_at = None
            self._pending_fail_pid = None
            self._last_send_at = now
            self._persist_cursor_locked()
            return code, encode_promo_payload(code)

    def handle_sc_packet(self, pid: int, payload_plain: bytes) -> List[PromoEvent]:
        with self._lock:
            now = time.monotonic()
            out: List[PromoEvent] = []

            prev_balance = self._last_balance
            if pid == CRYSTAL_ID and len(payload_plain) >= 4:
                new_balance = struct.unpack_from(">i", payload_plain, 0)[0]
                self._last_balance = new_balance
                if (
                    self._pending_code is not None
                    and prev_balance is not None
                    and new_balance > prev_balance
                ):
                    evt = self._finalize_locked(
                        success=True,
                        reason=f"crystal_increase:{prev_balance}->{new_balance}",
                    )
                    if evt is not None:
                        out.append(evt)

            if self._pending_code is not None:
                if pid in self._success_pids:
                    evt = self._finalize_locked(success=True, reason=f"success_pid:{pid}")
                    if evt is not None:
                        out.append(evt)
                elif pid in self._fail_pids and self._pending_fail_at is None:
                    self._pending_fail_at = now
                    self._pending_fail_pid = pid

            out.extend(self._poll_locked(now))
            return out

    def _poll_locked(self, now: float) -> List[PromoEvent]:
        if self._pending_code is None:
            return []

        if (
            self._pending_fail_at is not None
            and now - self._pending_fail_at >= self._ack_grace_sec
        ):
            reason = f"fail_pid:{self._pending_fail_pid}"
            evt = self._finalize_locked(success=False, reason=reason)
            return [evt] if evt is not None else []

        if now - self._pending_sent_at >= self._fail_timeout_sec:
            evt = self._finalize_locked(success=False, reason="timeout")
            return [evt] if evt is not None else []

        return []

    def _finalize_locked(self, *, success: bool, reason: str) -> Optional[PromoEvent]:
        if self._pending_code is None:
            return None

        code = self._pending_code
        ts = dt.datetime.now(dt.timezone.utc).isoformat(timespec="milliseconds")
        line = f"{ts}\t{code}\t{reason}\n"

        path = self._success_path if success else self._failed_path
        with open(path, "a", encoding="utf-8") as f:
            f.write(line)

        self._checked.add(code)
        if success:
            self._success_total += 1
        else:
            self._failed_total += 1

        self._pending_code = None
        self._pending_sent_at = 0.0
        self._pending_fail_at = None
        self._pending_fail_pid = None

        return PromoEvent(
            event="promo_success" if success else "promo_failed",
            code=code,
            reason=reason,
            checked_total=len(self._checked),
            success_total=self._success_total,
            failed_total=self._failed_total,
        )

    def _next_unchecked_code_locked(self) -> Optional[str]:
        while True:
            code = self._code_from_index(self._cursor)
            self._cursor += 1
            if code is None:
                return None
            if code in self._checked:
                continue
            return code

    def _code_from_index(self, index: int) -> Optional[str]:
        if index < 0:
            return None

        rem = index
        for length, block_size in zip(
            range(self._min_len, self._max_len + 1),
            self._space_by_len,
        ):
            if rem >= block_size:
                rem -= block_size
                continue

            chars = [self._alphabet[0]] * length
            cur = rem
            for pos in range(length - 1, -1, -1):
                cur, d = divmod(cur, self._base)
                chars[pos] = self._alphabet[d]
            return "".join(chars)

        return None

    def _load_checked(self) -> None:
        for path, is_success in (
            (self._success_path, True),
            (self._failed_path, False),
        ):
            if not os.path.exists(path):
                continue
            with open(path, "r", encoding="utf-8", errors="ignore") as f:
                for line in f:
                    code = self._extract_code(line)
                    if code is None:
                        continue
                    self._checked.add(code)
                    if is_success:
                        self._success_total += 1
                    else:
                        self._failed_total += 1

    def _extract_code(self, line: str) -> Optional[str]:
        raw = line.strip()
        if not raw or raw.startswith("#"):
            return None

        if "\t" in raw:
            parts = [p.strip() for p in raw.split("\t") if p.strip()]
            if not parts:
                return None
            candidate = parts[1] if len(parts) >= 2 else parts[0]
        else:
            candidate = raw.split()[0]

        candidate = candidate.upper()
        if not (self._min_len <= len(candidate) <= self._max_len):
            return None
        if any(ch not in self._alphabet_set for ch in candidate):
            return None
        return candidate

    def _load_cursor(self) -> int:
        if not os.path.exists(self._cursor_path):
            return 0
        try:
            with open(self._cursor_path, "r", encoding="ascii") as f:
                raw = f.read().strip()
            value = int(raw)
            return max(0, value)
        except Exception:
            return 0

    def _persist_cursor_locked(self) -> None:
        with open(self._cursor_path, "w", encoding="ascii") as f:
            f.write(str(self._cursor))
