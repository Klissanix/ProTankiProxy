# CDN HTTP Proxy Routing — Mechanism, Bugs, and Solutions

Date: 2026-04-14

---

## Overview

The ProTanki MITM proxy intercepts the game's HTTP traffic at the network level using a Windows loopback alias. This lets it serve a custom `config.xml` (pointing the game at our TCP proxy) and pass through all other HTTP requests to real CDN mirrors.

---

## Bootstrap Chain

```
ProTanki.exe
  └── StandaloneLoader.swf  (local, bundled with app)
        └── Prelauncher.swf  (fetched from CDN mirror, ~1.9 MB)
              └── /config.xml  (fetched from CDN mirror)
                    └── Loader.swf  (fetched from CDN mirror, ~29 KB)
                          └── hardware.swf / software.swf
                                └── library.swf  (served locally, PATCHED)
```

---

## Interception Mechanism

### 1. Loopback Alias

The game has a hardcoded mirror list in `StandaloneLoader.swf`:

```
http://146.59.110.103
http://194.67.196.216
http://s.pro-tanki.com
https://s.pro-tanki.com
http://tankiresources.com
https://tankiresources.com
```

It tries mirrors in order. The proxy adds `146.59.110.103` as a Windows loopback alias:

```
netsh interface ip add address "Loopback Pseudo-Interface 1" 146.59.110.103 255.255.255.255
```

This makes all TCP connections to `146.59.110.103` arrive at localhost instead of the real CDN server — no DNS spoofing required.

### 2. Config HTTP Server

An HTTP server binds on `146.59.110.103:80` (`CONFIG_HTTP_HOST:CONFIG_HTTP_PORT`).

- `GET /config.xml` → returns a synthetic XML pointing the game at our TCP proxy:
  ```xml
  <server address="146.59.110.103"><port>25565</port></server>
  ```
- `GET /library.swf` → serves the locally patched SWF (noclip, xray, etc.)
- All other paths → passed through to real CDN mirrors

### 3. TCP Proxy

After reading `config.xml`, the game opens a TCP connection to `146.59.110.103:25565`, which our socket proxy handles — intercepting and logging game protocol packets.

---

## The Circular Routing Bug

### Root Cause

The game tries `146.59.110.103` first for all HTTP requests. The loopback alias routes that to our HTTP server. Our HTTP server then tries to fetch the file from the CDN — but if the configured `fallback_cdn_ip` is also `146.59.110.103`, it connects **back to itself**.

Result: all CDN passthrough requests loop → timeout → game can't load `Prelauncher.swf` or `Loader.swf`.

### Who is affected

Users whose `s.pro-tanki.com` DNS resolves to `146.59.110.103` (Cloudflare anycast, which varies by region), or who have a stale `hosts` entry pointing `s.pro-tanki.com → 146.59.110.103`.

### Fix

`FALLBACK_CDN_IPS` in `app.py` is set to mirrors that are **never** on the loopback:

```python
FALLBACK_CDN_IPS = ("194.67.196.216",)
```

The startup function `_build_fallback_cdn_ips()` additionally filters out any IP that equals `CONFIG_HTTP_HOST` (the loopback alias) before passing the list to the HTTP server.

---

## Rate Limiting on `194.67.196.216`

### Symptom

After successfully downloading `Prelauncher.swf` (~1.9 MB) from `194.67.196.216`, the very next request for `Loader.swf` (~29 KB) consistently times out from the same IP. The server appears to rate-limit sequential downloads per source IP.

### Fix: Multi-Mirror Fallback + Dynamic DNS Resolution

At startup, `_build_fallback_cdn_ips()` does a **direct UDP DNS query** (bypassing the OS hosts file and DNS cache) to resolve **all** current A-record IPs for `s.pro-tanki.com`:

```python
def _resolve_ipv4_direct_all(hostname, dns_server="8.8.8.8", timeout=4.0) -> list[str]:
    # builds a raw DNS A-record query, sends via UDP, parses all A answers
```

The results (e.g. `172.67.187.74`, `104.21.80.221`) are appended to the mirror list after filtering duplicates and the loopback alias IP:

```python
fallback_cdn_ips = ["194.67.196.216", "172.67.187.74", "104.21.80.221"]
```

The passthrough handler in `http_servers.py` tries **2 attempts per mirror** before moving on:

```python
attempts = [(ip, a) for ip in _cdn_ips for a in range(2)]
for idx, (mirror_ip, _) in enumerate(attempts):
    # try; on success break; on failure continue to next
```

So the effective retry sequence is:
```
194.67.196.216 attempt 1 -> FAIL (timeout)
194.67.196.216 attempt 2 -> FAIL (timeout)
172.67.187.74  attempt 1 -> SUCCESS
104.21.80.221  attempt 1 -> used if earlier mirrors fail
```

---

## `hosts` File Management

The proxy optionally writes redirect entries to `C:\Windows\System32\drivers\etc\hosts` as a secondary interception mechanism (supplementary to the loopback alias):

```
# PROTANKI_PROXY_BEGIN
146.59.110.103  s.pro-tanki.com
146.59.110.103  tankiresources.com
# PROTANKI_PROXY_END
```

On shutdown it removes these entries.

### `hosts_cleanup: Permission denied`

Even when running as Administrator, cleanup can fail if:
- **Windows Defender Controlled Folder Access** is enabled and blocks writes to `%SystemRoot%\System32\drivers\etc\hosts`
- The hosts file has the **read-only attribute** set

Manual fix for the user:
```
attrib -r "C:\Windows\System32\drivers\etc\hosts"
```

The proxy prints a startup warning when the hosts file is not writable:
```
[!] WARNING: hosts file is not writable. Hosts-based redirects will be skipped.
    Run as Administrator or check Controlled Folder Access in Windows Security.
```

The stale hosts entries are **harmless** with the new `FALLBACK_CDN_IPS` fix — since the loopback alias is what actually intercepts traffic, and passthrough now avoids the loopback IP explicitly.

---

## Key Constants (`app.py`)

| Constant | Value | Purpose |
|---|---|---|
| `CONFIG_HTTP_HOST` | `146.59.110.103` | IP added as loopback alias; HTTP server bind address |
| `CONFIG_HTTP_PORT` | `80` | HTTP server port |
| `PROXY_PORT` | `25565` | TCP game proxy port |
| `FALLBACK_CDN_IPS` | `("194.67.196.216",)` | Safe passthrough mirrors (not on loopback) |
| `FALLBACK_CDN_HOST` | `s.pro-tanki.com` | `Host:` header sent to mirrors; also resolved for extra mirror IPs |

---

## Relevant Files

- [scripts/proxy/app.py](../scripts/proxy/app.py) — startup, loopback alias setup, `_build_fallback_cdn_ips`, `_resolve_ipv4_direct_all`, hosts management
- [scripts/proxy/http_servers.py](../scripts/proxy/http_servers.py) — config HTTP server, passthrough handler, multi-mirror retry loop
