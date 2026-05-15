from __future__ import annotations
from typing import List


class ProTankiCipher:
    """
    Stateful XOR stream cipher (two independent 8-element key tables).
      recv_key  (k ^ i<<3)         — S→C direction
      send_key  (k ^ i<<3 ^ 0x57)  — C→S direction
    """

    def __init__(self, key_vector: List[int]) -> None:
        k = 0
        for b in key_vector:
            k ^= b & 0xFF
        self._k = k
        self._recv_key: List[int] = [(k ^ (i << 3)) & 0xFF for i in range(8)]
        self._recv_pos: int = 0
        self._send_key: List[int] = [(k ^ (i << 3) ^ 0x57) & 0xFF for i in range(8)]
        self._send_pos: int = 0

    def decrypt_sc(self, data: bytes) -> bytes:
        out = bytearray(len(data))
        for i, b in enumerate(data):
            self._recv_key[self._recv_pos] = (b ^ self._recv_key[self._recv_pos]) & 0xFF
            out[i] = self._recv_key[self._recv_pos]
            self._recv_pos ^= self._recv_key[self._recv_pos] & 7
        return bytes(out)

    def decrypt_cs(self, data: bytes) -> bytes:
        out = bytearray(len(data))
        for i, b in enumerate(data):
            self._send_key[self._send_pos] = (b ^ self._send_key[self._send_pos]) & 0xFF
            out[i] = self._send_key[self._send_pos]
            self._send_pos ^= self._send_key[self._send_pos] & 7
        return bytes(out)

    def encrypt_cs(self, data: bytes) -> bytes:
        out = bytearray(len(data))
        for i, b in enumerate(data):
            b = b & 0xFF
            enc = (b ^ self._send_key[self._send_pos]) & 0xFF
            self._send_key[self._send_pos] = b
            out[i] = enc
            self._send_pos ^= b & 7
        return bytes(out)


class _NopCipher:
    @staticmethod
    def decrypt_sc(d: bytes) -> bytes: return d
    @staticmethod
    def decrypt_cs(d: bytes) -> bytes: return d
    @staticmethod
    def encrypt_cs(d: bytes) -> bytes: return d


_NOP = _NopCipher()
