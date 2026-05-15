"""
Patch + HTTP serve helper for enabling garage buy button in library.swf.

Modes:
  1) Patch only:
       py -3 library_buy_button_patch.py
  2) Patch and serve config/library over HTTP:
       py -3 library_buy_button_patch.py --serve-config
"""
from __future__ import annotations

import argparse
import http.client
import os
import shutil
import socket
import subprocess
import tempfile
from http.server import BaseHTTPRequestHandler, HTTPServer
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[2]

DEFAULT_SOURCE_SWF = REPO_ROOT / "artifacts" / "swf" / "remote" / "146.59.110.103__library.swf"
DEFAULT_SCRIPTS_DIR = REPO_ROOT / "artifacts" / "swf" / "decompiled_library" / "scripts"
DEFAULT_OUT_SWF = REPO_ROOT / "artifacts" / "swf" / "patched" / "library_buy_button.swf"

ITEM_SERVICE_REL = Path("alternativa") / "tanks" / "service" / "item" / "ItemServiceImpl.as"
GARAGE_BUTTON_REL = Path("\u00a75214234891234904123423632234\u00a7") / "GarageButton.as"

_ITEM_SERVICE_MIN_RANK_OLD = """      public function getMinRankIndex(param1:\u00a7521423120252312038123423632234\u00a7) : int
      {
         return \u00a75214235968235981123423632234\u00a7(param1.adapt(\u00a75214235968235981123423632234\u00a7)).getMinRank();
      }"""

_ITEM_SERVICE_MIN_RANK_NEW = """      public function getMinRankIndex(param1:\u00a7521423120252312038123423632234\u00a7) : int
      {
         return 1;
      }"""

_CONFIG_XML_TEMPLATE = """<?xml version="1.0" encoding="utf-8"?>
<cfg xmlns="http://alternativaplatform.com/core/config.xsd">
<server address="{proxy_host}">
        <port>{proxy_port}</port>
</server>
<status>available</status>
</cfg>"""


def _resolve_java_exe() -> Path:
    java_home = os.environ.get("JAVA_HOME", "").strip()
    if java_home:
        candidate = Path(java_home) / "bin" / "java.exe"
        if candidate.exists():
            return candidate
    java_on_path = shutil.which("java")
    if java_on_path:
        return Path(java_on_path)
    raise FileNotFoundError(
        "java executable not found. Install Java or set JAVA_HOME."
    )


def _resolve_ffdec_jar(explicit: str = "") -> Path:
    candidates: list[Path] = []
    if explicit:
        candidates.append(Path(explicit).expanduser())

    env_jar = os.environ.get("FFDEC_JAR", "").strip()
    if env_jar:
        candidates.append(Path(env_jar).expanduser())

    candidates.extend(
        [
            REPO_ROOT / "ffdec" / "ffdec.jar",
            REPO_ROOT / "ffdec.jar",
            Path(r"C:\Program Files (x86)\FFDec\ffdec.jar"),
            Path(r"C:\Program Files\FFDec\ffdec.jar"),
        ]
    )

    for candidate in candidates:
        if candidate.exists():
            return candidate

    raise FileNotFoundError(
        "ffdec.jar not found. Provide --ffdec-jar or set FFDEC_JAR."
    )


def _patch_item_service_text(text: str) -> str:
    if _ITEM_SERVICE_MIN_RANK_OLD not in text:
        raise RuntimeError("ItemServiceImpl patch anchor not found (SWF/scripts version mismatch).")
    return text.replace(_ITEM_SERVICE_MIN_RANK_OLD, _ITEM_SERVICE_MIN_RANK_NEW, 1)


def _patch_garage_button_text(text: str) -> str:
    if "enabled = false;" not in text:
        raise RuntimeError("GarageButton patch anchor not found (SWF/scripts version mismatch).")
    return text.replace("enabled = false;", "enabled = true;", 1)


def build_buy_button_patched_swf(
    source_swf: Path,
    scripts_dir: Path,
    out_swf: Path,
    ffdec_jar: Path,
    java_exe: Path,
) -> Path:
    if not source_swf.exists():
        raise FileNotFoundError(f"Source SWF not found: {source_swf}")
    if not scripts_dir.exists():
        raise FileNotFoundError(f"Scripts directory not found: {scripts_dir}")

    item_service_file = scripts_dir / ITEM_SERVICE_REL
    garage_button_file = scripts_dir / GARAGE_BUTTON_REL
    if not item_service_file.exists():
        raise FileNotFoundError(f"Patch source not found: {item_service_file}")
    if not garage_button_file.exists():
        raise FileNotFoundError(f"Patch source not found: {garage_button_file}")

    item_service_text = item_service_file.read_text(encoding="utf-8").replace("\r\n", "\n")
    garage_button_text = garage_button_file.read_text(encoding="utf-8").replace("\r\n", "\n")

    patched_item_service = _patch_item_service_text(item_service_text)
    patched_garage_button = _patch_garage_button_text(garage_button_text)

    out_swf.parent.mkdir(parents=True, exist_ok=True)

    with tempfile.TemporaryDirectory(prefix="buy_button_patch_") as tmp:
        tmp_dir = Path(tmp)
        tmp_item_service = tmp_dir / ITEM_SERVICE_REL
        tmp_garage_button = tmp_dir / GARAGE_BUTTON_REL
        tmp_item_service.parent.mkdir(parents=True, exist_ok=True)
        tmp_garage_button.parent.mkdir(parents=True, exist_ok=True)
        tmp_item_service.write_text(patched_item_service, encoding="utf-8")
        tmp_garage_button.write_text(patched_garage_button, encoding="utf-8")

        result = subprocess.run(
            [
                str(java_exe),
                "-jar",
                str(ffdec_jar),
                "-importscript",
                str(source_swf),
                str(out_swf),
                str(tmp_dir),
            ],
            capture_output=True,
            text=True,
            timeout=180,
            cwd=str(ffdec_jar.parent),
        )

    if result.returncode != 0:
        stdout_tail = (result.stdout or "")[-2000:]
        stderr_tail = (result.stderr or "")[-2000:]
        raise RuntimeError(
            "FFDec importscript failed.\n"
            f"stdout:\n{stdout_tail}\n"
            f"stderr:\n{stderr_tail}"
        )

    return out_swf


def _resolve_ipv4(host: str) -> str:
    try:
        infos = socket.getaddrinfo(host, 80, socket.AF_INET, socket.SOCK_STREAM)
    except OSError:
        return ""
    for info in infos:
        ip = info[4][0]
        if ip and not ip.startswith("127."):
            return ip
    return ""


def serve_config_and_library(
    bind_host: str,
    bind_port: int,
    proxy_host: str,
    proxy_port: int,
    patched_swf: Path,
    fallback_connect: str,
    fallback_host_header: str,
) -> None:
    config_payload = _CONFIG_XML_TEMPLATE.format(
        proxy_host=proxy_host,
        proxy_port=proxy_port,
    ).encode("utf-8")

    swf_cache: dict[str, bytes] = {}

    def _log_http(msg: str) -> None:
        print(f"[http] {msg}", flush=True)

    class _Handler(BaseHTTPRequestHandler):
        def do_GET(self) -> None:
            path = self.path.split("?", 1)[0]
            _log_http(f"GET {self.path}")

            if path == "/config.xml":
                self.send_response(200)
                self.send_header("Content-Type", "application/xml; charset=utf-8")
                self.send_header("Content-Length", str(len(config_payload)))
                self.send_header("Cache-Control", "no-store, no-cache, must-revalidate")
                self.send_header("Pragma", "no-cache")
                self.send_header("Expires", "0")
                self.end_headers()
                self.wfile.write(config_payload)
                _log_http(f"GET {self.path} -> 200 ({len(config_payload)} B, config.xml)")
                return

            if path == "/library.swf" or path.endswith("/library.swf"):
                if "swf" not in swf_cache:
                    swf_cache["swf"] = patched_swf.read_bytes()
                body = swf_cache["swf"]
                self.send_response(200)
                self.send_header("Content-Type", "application/x-shockwave-flash")
                self.send_header("Content-Length", str(len(body)))
                self.send_header("Cache-Control", "no-store, no-cache, must-revalidate")
                self.send_header("Pragma", "no-cache")
                self.send_header("Expires", "0")
                self.end_headers()
                self.wfile.write(body)
                _log_http(f"GET {self.path} -> 200 ({len(body)} B, patched library.swf)")
                return

            conn = None
            try:
                conn = http.client.HTTPConnection(fallback_connect, 80, timeout=15)
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
                _log_http(
                    f"GET {self.path} -> {resp.status} ({len(body)} B, "
                    f"fallback connect={fallback_connect}, host={fallback_host_header})"
                )
            except Exception as exc:
                _log_http(
                    f"GET {self.path} -> 502 (fallback connect={fallback_connect}, "
                    f"host={fallback_host_header}): {exc}"
                )
                self.send_error(502, str(exc))
            finally:
                if conn is not None:
                    conn.close()

        def log_message(self, fmt: str, *args) -> None:
            return

    httpd = HTTPServer((bind_host, bind_port), _Handler)
    print(f"[+] Config HTTP server: http://{bind_host}:{bind_port}/config.xml")
    print(f"[+] Serving patched library.swf: {patched_swf}")
    print(f"[+] Fallback HTTP upstream: {fallback_connect}:80 (Host: {fallback_host_header})")
    print("[*] Press Ctrl+C to stop.")
    httpd.serve_forever()


def _parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Build and optionally serve buy-button patched library.swf"
    )
    parser.add_argument("--source-swf", default=str(DEFAULT_SOURCE_SWF))
    parser.add_argument("--scripts-dir", default=str(DEFAULT_SCRIPTS_DIR))
    parser.add_argument("--out-swf", default=str(DEFAULT_OUT_SWF))
    parser.add_argument("--ffdec-jar", default="")

    parser.add_argument("--serve-config", action="store_true")
    parser.add_argument("--bind-host", default="146.59.110.103")
    parser.add_argument("--bind-port", type=int, default=80)
    parser.add_argument("--proxy-host", default="127.0.0.1")
    parser.add_argument("--proxy-port", type=int, default=25565)
    parser.add_argument("--fallback-host", default="s.pro-tanki.com")
    parser.add_argument("--fallback-ip", default="")
    return parser.parse_args()


def main() -> None:
    args = _parse_args()

    source_swf = Path(args.source_swf).expanduser().resolve()
    scripts_dir = Path(args.scripts_dir).expanduser().resolve()
    out_swf = Path(args.out_swf).expanduser().resolve()
    ffdec_jar = _resolve_ffdec_jar(args.ffdec_jar)
    java_exe = _resolve_java_exe()

    print(f"[*] Source SWF: {source_swf}")
    print(f"[*] Decompiled scripts: {scripts_dir}")
    print(f"[*] Output SWF: {out_swf}")
    print(f"[*] Java: {java_exe}")
    print(f"[*] FFDec: {ffdec_jar}")

    patched = build_buy_button_patched_swf(
        source_swf=source_swf,
        scripts_dir=scripts_dir,
        out_swf=out_swf,
        ffdec_jar=ffdec_jar,
        java_exe=java_exe,
    )
    print(f"[+] Patched SWF ready: {patched}")

    if not args.serve_config:
        return

    fallback_connect = args.fallback_ip.strip() or _resolve_ipv4(args.fallback_host) or args.fallback_host
    if fallback_connect == args.bind_host and not args.fallback_ip.strip():
        print(
            "[!] WARNING: fallback host resolved to local bind host. "
            "Pass --fallback-ip to avoid local forwarding loop.",
            flush=True,
        )
    serve_config_and_library(
        bind_host=args.bind_host,
        bind_port=args.bind_port,
        proxy_host=args.proxy_host,
        proxy_port=args.proxy_port,
        patched_swf=patched,
        fallback_connect=fallback_connect,
        fallback_host_header=args.fallback_host,
    )


if __name__ == "__main__":
    main()
