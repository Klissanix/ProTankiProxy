from __future__ import annotations

import os
from pathlib import Path

APP_TITLE = "ProTankiProxy"
SERVER_HOST = "146.59.110.146"
SERVER_PORT = 25565
CONFIG_HTTP_HOST = "146.59.110.103"
CONFIG_HTTP_PORT = 80
FALLBACK_CDN_HOST = "s.pro-tanki.com"
FALLBACK_CDN_IPS = ("194.67.196.216",)
FALLBACK_DOMAINS = ("s.pro-tanki.com", "tankiresources.com")
HOSTS_MARKER = "# protanki-proxy-auto"
HOSTS_FILE = Path(r"C:\Windows\System32\drivers\etc\hosts")
INET_CACHE_DIR = Path(os.environ.get("LOCALAPPDATA", "")) / "Microsoft" / "Windows" / "INetCache"
GAME_EXECUTABLE_CANDIDATES = (
    r"C:\Program Files\ProTanki Online\ProTanki.exe",
    r"C:\Program Files (x86)\ProTanki Online\ProTanki.exe",
    r"C:\Program Files\ProTanki Online\ProTanki Online.exe",
    r"C:\Program Files (x86)\ProTanki Online\ProTanki Online.exe",
)
SETTINGS_FILE_NAME = "settings.json"
