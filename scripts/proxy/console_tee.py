from __future__ import annotations

import atexit
import threading
from pathlib import Path

_tee_file = None
_tee_lock = threading.Lock()
_installed = False


class _TeeStream:
    def __init__(self, primary, mirror) -> None:
        self._primary = primary
        self._mirror = mirror

    def write(self, text):
        if text is None:
            return 0
        with _tee_lock:
            count = 0
            if self._primary is not None:
                count = self._primary.write(text)
            self._mirror.write(text)
        return count if count is not None else len(text)

    def flush(self):
        with _tee_lock:
            if self._primary is not None:
                self._primary.flush()
            self._mirror.flush()

    def isatty(self):
        return bool(self._primary is not None and getattr(self._primary, "isatty", lambda: False)())

    @property
    def encoding(self):
        if self._primary is not None and hasattr(self._primary, "encoding"):
            return self._primary.encoding
        return "utf-8"


def _close_tee_file() -> None:
    global _tee_file
    if _tee_file is not None:
        try:
            _tee_file.flush()
            _tee_file.close()
        except Exception:
            pass
        _tee_file = None


def install_console_tee(log_path: str | Path) -> None:
    """
    Duplicate stdout/stderr to a UTF-8 text file.
    Safe to call once per process startup.
    """
    global _installed, _tee_file
    if _installed:
        return

    path = Path(log_path)
    path.parent.mkdir(parents=True, exist_ok=True)
    _tee_file = open(path, "a", encoding="utf-8", buffering=1)

    import sys

    sys.stdout = _TeeStream(sys.stdout, _tee_file)
    sys.stderr = _TeeStream(sys.stderr, _tee_file)
    _installed = True
    atexit.register(_close_tee_file)

