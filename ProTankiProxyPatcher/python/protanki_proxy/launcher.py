from __future__ import annotations

import datetime as dt
import tkinter as tk

from . import __version__
from .constants import (
    APP_TITLE,
    CONFIG_HTTP_HOST,
    CONFIG_HTTP_PORT,
    FALLBACK_CDN_HOST,
    FALLBACK_CDN_IPS,
    FALLBACK_DOMAINS,
    HOSTS_FILE,
    SERVER_HOST,
    SERVER_PORT,
)
from .http_server import start_config_http_server
from .logger import EventLog
from .patching.noclip_patch import get_patched_swf
from .runtime_paths import ensure_runtime_dirs, get_traffic_dir
from .settings import get_settings_path, load_settings
from .state import AppState
from .system import (
    build_fallback_cdn_ips,
    cleanup_hosts_redirects,
    clear_wininet_library_cache,
    ensure_hosts_redirects,
    ensure_loopback_alias,
    hide_console_window,
    launch_game,
    remove_loopback_alias,
)
from .ui import ProxyWindow


def _create_logger() -> EventLog:
    stamp = dt.datetime.now().strftime("%Y%m%d_%H%M%S")
    log_path = get_traffic_dir() / f"proxy_{stamp}.json"
    return EventLog(str(log_path), file_enabled=True, console_enabled=True)


def main() -> None:
    ensure_runtime_dirs()
    settings = load_settings(verbose=True)
    logger = _create_logger()
    state = AppState()
    added_aliases: list[str] = []
    http_server = None

    logger.log(
        "startup",
        mode="swf-only",
        version=__version__,
        server=f"{SERVER_HOST}:{SERVER_PORT}",
        config_http=f"{CONFIG_HTTP_HOST}:{CONFIG_HTTP_PORT}",
    )

    try:
        print("=" * 60)
        print(APP_TITLE)
        print("=" * 60)
        print("  Mode           : SWF-only")
        print(f"  Upstream       : {SERVER_HOST}:{SERVER_PORT}")
        print(f"  Config HTTP    : {CONFIG_HTTP_HOST}:{CONFIG_HTTP_PORT}")
        print(f"  Settings file  : {get_settings_path()}")
        print("=" * 60)

        print("[*] Preparing patched library.swf ...")
        patched_swf = get_patched_swf()
        state.set_patch_ready(str(patched_swf))
        logger.log("patch_ready", path=str(patched_swf))
        print(f"[+] Patched SWF ready: {patched_swf}")

        if HOSTS_FILE.exists() and not HOSTS_FILE.is_file():
            raise RuntimeError(f"Unexpected hosts path type: {HOSTS_FILE}")

        fallback_cdn_ips = build_fallback_cdn_ips(
            FALLBACK_CDN_IPS,
            FALLBACK_CDN_HOST,
            CONFIG_HTTP_HOST,
            verbose=True,
            logger=logger,
        )
        if not fallback_cdn_ips:
            raise RuntimeError("No CDN mirrors available for HTTP passthrough")

        if ensure_loopback_alias(CONFIG_HTTP_HOST, verbose=True, logger=logger):
            added_aliases.append(CONFIG_HTTP_HOST)
        hosts_added = ensure_hosts_redirects(CONFIG_HTTP_HOST, FALLBACK_DOMAINS, verbose=True, logger=logger)
        cache_removed = clear_wininet_library_cache(verbose=True, logger=logger)

        http_server = start_config_http_server(
            bind_host=CONFIG_HTTP_HOST,
            bind_port=CONFIG_HTTP_PORT,
            server_host=SERVER_HOST,
            server_port=SERVER_PORT,
            state=state,
            fallback_cdn_ips=fallback_cdn_ips,
            fallback_cdn_host=FALLBACK_CDN_HOST,
            verbose=True,
            logger=logger,
        )
        state.set_startup_state(
            config_alias_ready=True,
            hosts_redirects=len(hosts_added),
            cache_removed=cache_removed,
            fallback_cdn_ips=fallback_cdn_ips,
        )
        logger.log(
            "network_ready",
            config_http=f"{CONFIG_HTTP_HOST}:{CONFIG_HTTP_PORT}",
            upstream=f"{SERVER_HOST}:{SERVER_PORT}",
            mirrors=fallback_cdn_ips,
            hosts_added=hosts_added,
            cache_removed=cache_removed,
        )

        if settings.auto_launch_game:
            launch_game(settings.game_path, verbose=True, logger=logger)

        root = tk.Tk()
        ProxyWindow(root, state, settings)
        if settings.hide_console:
            root.after(500, hide_console_window)
        root.mainloop()
    except Exception as exc:
        state.set_error(str(exc))
        logger.log("fatal_error", error=str(exc))
        print(f"[!] Startup failed: {exc}")
        raise SystemExit(1) from exc
    finally:
        if http_server is not None:
            try:
                http_server.shutdown()
                http_server.server_close()
            except Exception:
                pass
        cleanup_hosts_redirects(verbose=True, logger=logger)
        for ip in reversed(added_aliases):
            remove_loopback_alias(ip, verbose=True, logger=logger)
