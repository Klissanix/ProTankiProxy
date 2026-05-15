from __future__ import annotations

import http.client
import threading
from http.server import BaseHTTPRequestHandler, HTTPServer
from typing import Sequence

from .logger import EventLog
from .patching.noclip_patch import get_patched_swf
from .state import AppState

_CONFIG_XML_TEMPLATE = """<?xml version="1.0" encoding="utf-8"?>
<cfg xmlns="http://alternativaplatform.com/core/config.xsd">
<server address="{server_host}">
        <port>{server_port}</port>
</server>
<status>available</status>
</cfg>"""


def _safe_log(logger: EventLog | None, event: str, **kw) -> None:
    if logger is not None:
        logger.log(event, **kw)


def _make_handler(
    *,
    server_host: str,
    server_port: int,
    state: AppState,
    fallback_cdn_ips: Sequence[str],
    fallback_cdn_host: str,
    verbose: bool,
    logger: EventLog | None,
):
    payload = _CONFIG_XML_TEMPLATE.format(server_host=server_host, server_port=server_port).encode("utf-8")
    cdn_ips = list(fallback_cdn_ips) if fallback_cdn_ips else [fallback_cdn_host]

    def _vprint(message: str) -> None:
        if verbose:
            print(message)

    class _Handler(BaseHTTPRequestHandler):
        def do_GET(self) -> None:
            path = self.path.split("?", 1)[0]
            state.note_http_request(self.path)
            _vprint(f"[http] GET {self.path}")

            if path == "/config.xml":
                state.note_config_served()
                _safe_log(logger, "config_xml_served", path=self.path)
                self.send_response(200)
                self.send_header("Content-Type", "application/xml; charset=utf-8")
                self.send_header("Content-Length", str(len(payload)))
                self.send_header("Cache-Control", "no-store, no-cache, must-revalidate")
                self.send_header("Pragma", "no-cache")
                self.send_header("Expires", "0")
                self.end_headers()
                self.wfile.write(payload)
                return

            if path == "/library.swf" or path.endswith("/library.swf"):
                try:
                    body = get_patched_swf().read_bytes()
                    state.note_library_served()
                    _safe_log(logger, "library_swf_served", bytes=len(body))
                    self.send_response(200)
                    self.send_header("Content-Type", "application/x-shockwave-flash")
                    self.send_header("Content-Length", str(len(body)))
                    self.send_header("Cache-Control", "no-store, no-cache, must-revalidate")
                    self.send_header("Pragma", "no-cache")
                    self.send_header("Expires", "0")
                    self.end_headers()
                    self.wfile.write(body)
                    return
                except Exception as exc:
                    state.set_error(str(exc))
                    _safe_log(logger, "http_proxy_error", path=self.path, target="library.swf", error=str(exc))
                    self.send_error(500, f"patch error: {exc}")
                    return

            last_exc: Exception | None = None
            attempts = [(ip, attempt) for ip in cdn_ips for attempt in range(2)]
            total = len(attempts)
            for index, (mirror_ip, _) in enumerate(attempts, start=1):
                conn = None
                try:
                    conn = http.client.HTTPConnection(mirror_ip, 80, timeout=8)
                    conn.request(
                        "GET",
                        self.path,
                        headers={
                            "Host": fallback_cdn_host,
                            "Connection": "close",
                        },
                    )
                    resp = conn.getresponse()
                    body = resp.read()
                    state.note_passthrough()
                    _safe_log(
                        logger,
                        "http_passthrough",
                        path=self.path,
                        status=resp.status,
                        bytes=len(body),
                        connect_target=f"{mirror_ip}:80",
                        host_header=fallback_cdn_host,
                    )
                    _vprint(
                        f"[http] GET {self.path} -> {resp.status} "
                        f"({len(body)} B from connect={mirror_ip}, host={fallback_cdn_host})"
                    )
                    self.send_response(resp.status)
                    for key, value in resp.getheaders():
                        if key.lower() in {
                            "content-type",
                            "content-length",
                            "last-modified",
                            "etag",
                            "cache-control",
                            "expires",
                            "location",
                        }:
                            self.send_header(key, value)
                    self.send_header("Content-Length", str(len(body)))
                    self.end_headers()
                    self.wfile.write(body)
                    last_exc = None
                    break
                except Exception as exc:
                    last_exc = exc
                    _vprint(f"[http] GET {self.path} [{index}/{total}] FAILED (mirror={mirror_ip}): {exc}")
                finally:
                    if conn is not None:
                        conn.close()

            if last_exc is not None:
                state.set_error(str(last_exc))
                _safe_log(
                    logger,
                    "http_proxy_error",
                    path=self.path,
                    connect_target=f"{cdn_ips}:80",
                    host_header=fallback_cdn_host,
                    error=str(last_exc),
                )
                self.send_error(502, str(last_exc).encode("ascii", errors="replace").decode("ascii"))

        def log_message(self, fmt: str, *args: object) -> None:
            pass

    return _Handler


def start_config_http_server(
    *,
    bind_host: str,
    bind_port: int,
    server_host: str,
    server_port: int,
    state: AppState,
    fallback_cdn_ips: Sequence[str],
    fallback_cdn_host: str,
    verbose: bool = True,
    logger: EventLog | None = None,
) -> HTTPServer:
    handler = _make_handler(
        server_host=server_host,
        server_port=server_port,
        state=state,
        fallback_cdn_ips=fallback_cdn_ips,
        fallback_cdn_host=fallback_cdn_host,
        verbose=verbose,
        logger=logger,
    )
    server = HTTPServer((bind_host, bind_port), handler)
    threading.Thread(target=server.serve_forever, daemon=True, name="protanki-http").start()
    if verbose:
        print(f"[+] HTTP config-server: http://{bind_host}:{bind_port}/config.xml")
        print(f"    -> returns address={server_host} port={server_port}")
        print(f"    -> serves patched /library.swf and proxies other HTTP paths via {', '.join(fallback_cdn_ips)}")
    return server
