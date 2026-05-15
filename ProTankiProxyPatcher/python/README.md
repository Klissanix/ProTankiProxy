# ProTankiProxy

Локальная Python-часть внутри umbrella-папки `ProTankiProxyPatcher`.

Эта папка используется только на машине разработчика для подготовки patched SWF
и, при необходимости, для сборки Python EXE.

Что оставлено:
- SWF-only архитектура как единственный режим
- локальный HTTP-сервер для `config.xml` и patched `library.swf`
- `noclip`, `freecam`, `auto-pickup`, `xray` через SWF-патч
- prebuilt patched `library.swf` в релизе
- запуск игры и сборка в `.exe`

Что убрано:
- TCP MITM proxy
- парсинг и инъекция TCP-пакетов
- dual-mode логика `proxy`/`swf-only`
- боевая телеметрия, enemy tracking, счётчики танков и прочий overlay-статус из TCP

Важно:
- серверный loopback alias удалён вместе с TCP-режимом
- один HTTP loopback alias для `146.59.110.103` пока оставлен, потому что `StandaloneLoader`/`Prelauncher` жёстко тянут `config.xml` и ресурсы через этот адрес; без него patched `library.swf` не гарантируется
- Java и FFDec теперь нужны только на машине разработчика во время подготовки релиза; на машине пользователя релиз использует уже встроенный `library_noclip.swf`

## Запуск из исходников

```powershell
py -3 .\python\main.py
```

## Сборка EXE

```powershell
py -3 -m pip install pyinstaller
powershell -ExecutionPolicy Bypass -File .\python\build_exe.ps1
```

Во время сборки сначала выполняется:

```powershell
py -3 .\python\prepare_release_assets.py
```

Этот шаг патчит `library.swf` на машине разработчика и кладёт готовый файл в:

- `python\artifacts\swf\patched\library_noclip.swf`

Дальше PyInstaller вшивает уже готовый SWF в `exe`, поэтому пользователю не нужны:

- Java
- FFDec
- runtime-патчинг SWF на его машине

Результат:
- `python\dist\ProTankiProxy.exe`

## Структура

- `main.py` — точка входа
- `protanki_proxy/launcher.py` — startup pipeline
- `protanki_proxy/http_server.py` — HTTP config/library server
- `protanki_proxy/system.py` — hosts, alias, cache, launch helpers
- `protanki_proxy/ui.py` — компактное desktop UI
- `protanki_proxy/hotkeys.py` — локальный mirror для F6/F7/F8/F9 и noclip-key state
- `protanki_proxy/patching/` — SWF patch pipeline
