# ProTankiProxyPatcher

Отдельный build-container для актуальной developer-side ветки.

Внутри этой папки теперь разнесены две части:

- `python/` — Python patch/build pipeline для подготовки patched `library.swf`;
- `cpp/` — нативный C++ клиент, который вшивает готовый patched SWF в `exe`.

Игроку по-прежнему отдается только нативный C++ launcher.
Python нужен только на машине разработчика для сборки артефактов.

## Структура

- `main.py` — orchestration entrypoint для patch + optional C++ build;
- `build_config.json` — дефолтная конфигурация сборки;
- `python/` — локальная копия актуального Python-проекта;
- `cpp/` — локальная копия актуального C++-проекта;
- `output/` — удобные копии итоговых SWF/EXE и `last_build.json`.

## Что Уже Переключается

Текущий patch pipeline уже поддерживает build-time selectors:

- `xray_default_on` — включать xray по умолчанию;
- `patched_swf_name` — имя выходного patched SWF.

In-game overlay UI удален из build pipeline и больше не попадает в игровой интерфейс.

Пока еще не разнесены на независимые build-флаги:

- noclip;
- freecam;
- auto-pickup.

Они по-прежнему входят в общий current patch bundle.

## Быстрый Старт

Собрать patched SWF и затем Win32 C++ client по дефолтному конфигу:

```powershell
py -3 .\ProTankiProxyPatcher\main.py
```

Собрать только SWF, без C++ клиента:

```powershell
py -3 .\ProTankiProxyPatcher\main.py --patch-only
```

Пример ручного override без изменения JSON:

```powershell
py -3 .\ProTankiProxyPatcher\main.py --platform Win32 --platform x64 --xray-default-on --swf-name library_noclip_xray.swf
```

## Выходные Файлы

- `ProTankiProxyPatcher/output/swf/<name>.swf`
- `ProTankiProxyPatcher/output/client/<platform>/ProTankiProxyClient.exe`
- `ProTankiProxyPatcher/output/last_build.json`

## Локальные Подпроекты

- [python/README.md](python/README.md)
- [cpp/README.md](cpp/README.md)