# ProTankiProxyClient

`ProTankiProxyClient` is the native user-side launcher/runtime for the SWF-only flow.

Inside `ProTankiProxyPatcher`, this folder is the local C++ subproject that embeds
the patched SWF prepared by the sibling `python/` folder.

What it does:

- embeds the prebuilt patched `library_noclip.swf` into the final EXE;
- adds the loopback alias for `146.59.110.103`;
- writes temporary `hosts` redirects for the fallback CDN domains;
- clears stale `library*.swf` cache entries from WinInet;
- starts a tiny local HTTP server on `146.59.110.103:80`;
- serves `/config.xml` and the patched `/library.swf`;
- proxies every other HTTP path to CDN mirrors;
- optionally launches the game and keeps running while the game is active.

What it does not do:

- no Python runtime on the user's machine;
- no Java;
- no FFDec;
- no TCP packet parsing or MITM.

## Build

The developer-side build still happens in two stages:

1. Python prepares the final patched SWF:

```powershell
py -3 .\python\prepare_release_assets.py
```

2. The C++ client embeds that prepared SWF into the launcher:

```powershell
powershell -ExecutionPolicy Bypass -File .\cpp\build_client.ps1
```

Default build target is `Win32`, which is the safer choice for old Windows installations.

## Runtime Notes

- The launcher needs Administrator rights because it binds port `80`, adds a loopback alias, and edits `hosts`.
- `settings.ini` is created next to the EXE on first launch.
- If the game is already running, the launcher exits instead of trying to hot-swap the resources mid-session.
