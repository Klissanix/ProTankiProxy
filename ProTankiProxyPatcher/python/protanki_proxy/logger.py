from __future__ import annotations
import datetime as dt
import json
import os
import threading


class EventLog:
    def __init__(
        self,
        path: str,
        *,
        file_enabled: bool = True,
        console_enabled: bool = True,
    ) -> None:
        self._path = path
        self._lock = threading.Lock()
        self._file_enabled = file_enabled
        self._console_enabled = console_enabled
        self._entries: list[dict] = []
        if self._file_enabled:
            os.makedirs(os.path.dirname(os.path.abspath(path)), exist_ok=True)

    @staticmethod
    def _now() -> str:
        return dt.datetime.now(dt.timezone.utc).isoformat()

    def log(self, event: str, **kw) -> None:
        if not self._file_enabled and not self._console_enabled:
            return
        row = {"timestamp": self._now(), "event": event, **kw}
        if self._console_enabled:
            kw_str = "  ".join(f"{k}={v}" for k, v in kw.items())
            ts = row["timestamp"][11:23]
            print(f"[{ts}] {event:<22s} {kw_str}")
        if self._file_enabled:
            with self._lock:
                self._entries.append(row)
                with open(self._path, "w", encoding="utf-8") as f:
                    json.dump(self._entries, f, ensure_ascii=False, indent=2)
