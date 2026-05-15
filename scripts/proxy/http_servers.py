from __future__ import annotations

import http.client
import json
import threading
from http.server import BaseHTTPRequestHandler, HTTPServer

from .logger import EventLog
from .shared import _ProxyShared

_CONFIG_XML_TEMPLATE = """<?xml version="1.0" encoding="utf-8"?>
<cfg xmlns="http://alternativaplatform.com/core/config.xsd">
<server address="{proxy_host}">
        <port>{proxy_port}</port>
</server>
<status>available</status>
</cfg>"""


def _start_status_http_server(shared_ref: list, bind_host: str, bind_port: int) -> HTTPServer:
    """
    Start a tiny HTTP server returning JSON proxy state at /status.
    shared_ref is a 1-element list; the session handler swaps _ProxyShared
    each session so the status server always sees the current one.
    """

    class _StatusHandler(BaseHTTPRequestHandler):
        def do_GET(self):
            if self.path.split("?")[0] != "/status":
                self.send_error(404)
                return
            sh: _ProxyShared = shared_ref[0]
            data = sh.get_status(sh.near_radius) if sh else {"session_active": False}
            body = json.dumps(data, ensure_ascii=False).encode("utf-8")
            self.send_response(200)
            self.send_header("Content-Type", "application/json")
            self.send_header("Content-Length", str(len(body)))
            self.send_header("Access-Control-Allow-Origin", "*")
            self.end_headers()
            self.wfile.write(body)

        def log_message(self, fmt, *args):
            pass

    srv = HTTPServer((bind_host, bind_port), _StatusHandler)
    threading.Thread(target=srv.serve_forever, daemon=True, name="http-status").start()
    return srv


def _make_config_handler(
    proxy_host: str,
    proxy_port: int,
    shared_ref: list,
    fallback_cdn_ips: "list[str] | None" = None,
    fallback_cdn_ip: str = "",
    fallback_cdn_host: str = "s.pro-tanki.com",
    verbose: bool = True,
    logger: "EventLog | None" = None,
):
    payload = _CONFIG_XML_TEMPLATE.format(proxy_host=proxy_host, proxy_port=proxy_port).encode("utf-8")

    # Build ordered list of IPs to try for passthrough.
    if fallback_cdn_ips:
        _cdn_ips: list[str] = list(fallback_cdn_ips)
    elif fallback_cdn_ip:
        _cdn_ips = [fallback_cdn_ip]
    else:
        _cdn_ips = [fallback_cdn_host]
    fallback_host_header = (fallback_cdn_host or _cdn_ips[0]).strip()
    fallback_port = 80

    def _vprint(msg: str) -> None:
        if verbose:
            print(msg)

    def _safe_log(event: str, **kw) -> None:
        if logger is not None:
            logger.log(event, **kw)

    class _Handler(BaseHTTPRequestHandler):
        def do_GET(self):
            path = self.path.split("?", 1)[0]
            _vprint(f"[http] GET {self.path}")

            if path == "/config.xml":
                _safe_log(
                    "config_xml_served",
                    path=self.path,
                    client=f"{self.client_address[0]}:{self.client_address[1]}",
                    proxy_host=proxy_host,
                    proxy_port=proxy_port,
                )
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
                    from .noclip_patch import get_patched_swf

                    body = get_patched_swf().read_bytes()
                    _vprint(
                        f"[http] GET /library.swf -> serving {len(body)} bytes "
                        "(patched, modules built-in, runtime hotkeys control state)"
                    )

                    self.send_response(200)
                    self.send_header("Content-Type", "application/x-shockwave-flash")
                    self.send_header("Content-Length", str(len(body)))
                    self.send_header("Cache-Control", "no-store, no-cache, must-revalidate")
                    self.send_header("Pragma", "no-cache")
                    self.send_header("Expires", "0")
                    self.end_headers()
                    self.wfile.write(body)
                    sh = shared_ref[0]
                    if sh is not None:
                        sh.swf_served = True
                except Exception as exc:
                    _vprint(f"[http] GET /library.swf ERROR: {exc}")
                    _safe_log(
                        "http_proxy_error",
                        path=self.path,
                        target="library.swf",
                        error=str(exc),
                    )
                    self.send_error(500, f"patch error: {exc}")
                return

            last_exc: Exception | None = None
            # Try each mirror IP; 2 attempts per IP before moving on.
            attempts = [(ip, a) for ip in _cdn_ips for a in range(2)]
            total = len(attempts)
            for idx, (mirror_ip, _) in enumerate(attempts):
                conn = None
                try:
                    conn = http.client.HTTPConnection(mirror_ip, fallback_port, timeout=8)
                    conn.request(
                        "GET",
                        self.path,
                        headers={
                            "Host": fallback_host_header,
                            "Connection": "close",
                        },
                    )
                    resp = conn.getresponse()
                    body = resp.read()
                    _vprint(
                        f"[http] GET {self.path} -> {resp.status} "
                        f"({len(body)} B from connect={mirror_ip}, host={fallback_host_header})"
                    )
                    _safe_log(
                        "http_passthrough",
                        path=self.path,
                        status=resp.status,
                        bytes=len(body),
                        connect_target=f"{mirror_ip}:{fallback_port}",
                        host_header=fallback_host_header,
                    )
                    self.send_response(resp.status)
                    for k, v in resp.getheaders():
                        if k.lower() in {
                            "content-type",
                            "content-length",
                            "last-modified",
                            "etag",
                            "cache-control",
                            "expires",
                            "location",
                        }:
                            self.send_header(k, v)
                    self.send_header("Content-Length", str(len(body)))
                    self.end_headers()
                    self.wfile.write(body)
                    last_exc = None
                    break
                except Exception as exc:
                    last_exc = exc
                    _vprint(
                        f"[http] GET {self.path} [{idx + 1}/{total}] FAILED "
                        f"(mirror={mirror_ip}): {exc}"
                    )
                finally:
                    if conn is not None:
                        conn.close()

            if last_exc is not None:
                _vprint(f"[http] GET {self.path} PROXY ERROR (all mirrors failed): {last_exc}")
                _safe_log(
                    "http_proxy_error",
                    path=self.path,
                    connect_target=f"{_cdn_ips}:{fallback_port}",
                    host_header=fallback_host_header,
                    error=str(last_exc),
                )
                self.send_error(502, str(last_exc).encode("ascii", errors="replace").decode("ascii"))

        def log_message(self, fmt, *args):
            pass

    return _Handler


def _start_config_http_server(
    bind_host: str,
    bind_port: int,
    proxy_host: str,
    proxy_port: int,
    shared_ref: list,
    fallback_cdn_ips: "list[str] | None" = None,
    fallback_cdn_ip: str = "",
    fallback_cdn_host: str = "s.pro-tanki.com",
    verbose: bool = True,
    logger: "EventLog | None" = None,
) -> HTTPServer:
    handler = _make_config_handler(
        proxy_host,
        proxy_port,
        shared_ref,
        fallback_cdn_ips=fallback_cdn_ips,
        fallback_cdn_ip=fallback_cdn_ip,
        fallback_cdn_host=fallback_cdn_host,
        verbose=verbose,
        logger=logger,
    )
    srv = HTTPServer((bind_host, bind_port), handler)
    threading.Thread(target=srv.serve_forever, daemon=True, name="http-config").start()
    mirrors = ", ".join(fallback_cdn_ips) if fallback_cdn_ips else (fallback_cdn_ip or fallback_cdn_host)
    if verbose:
        print(f"[+] HTTP config-server: http://{bind_host}:{bind_port}/config.xml")
        print(f"    -> returns address={proxy_host} port={proxy_port}")
        print(f"    -> proxies other HTTP paths to [{mirrors}]:80 (Host: {fallback_cdn_host})")
    return srv
