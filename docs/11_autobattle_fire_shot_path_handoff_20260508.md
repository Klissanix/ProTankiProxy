# AutoBattle Fire SHOT Path Handoff

Дата: 2026-05-08
Проект: ProTankiProxyPatcher
Зона изменений: только Python patch pipeline, без правок в _ffdec_mine_export

## Что было изменено

Измененные файлы:

- ProTankiProxyPatcher/python/protanki_proxy/patching/autobattle/targeting_input.py
- docs/11_autobattle_fire_shot_path_handoff_20260508.md

Builder, controls и tank runtime в этой ревизии не менялись. Re-entry hooks из предыдущей ревизии сохранены как есть.

## Какой root cause подтвержден по факту

### 1. Текущий AutoBattle fire path действительно шел только через mouseLeftButton

Это подтверждено текущим patch-модулем `targeting_input.py`: AutoBattle вызывал только `f705bd7(true,true)` и `f705bd7(false,true)`.

### 2. Mouse path и keyboard SHOT path в weapon handler реально различаются

Это перепроверено по decompiled AS3:

- `TargetingInputManagerImpl.f705bd7(param1,param2)` вызывает только `listener.mouseLeftButton(...)`.
- `§true const each§.mouseLeftButton(true,true)` стартует оружие только при `settings.mouseControl == true` и `TargetingModeService.getCurrentMode() == 2`.
- Внутри `§implements package native§(param1:Boolean)` есть ранний `return`, если `param1 == true` и targeting mode уже равен `1`.
- `§true const each§.keyboardButton()` для `GameActionEnum.SHOT` вызывает `§implements package native§(false)` и не упирается в этот mouse-mode gate.

Следствие: предыдущая AutoBattle-ветка через `f705bd7(true,true)` была неэквивалентна обычному `Space / GameActionEnum.SHOT`. Для оружий, чувствительных к реальному SHOT path, прежде всего для Smoky, это был правдоподобный и подтвержденный кодом источник того, что доводка цели могла происходить, а реальный fire start не открывался надежно.

### 3. Default SHOT binding действительно равен 32

По `KeysBindingServiceImpl.as` default binding для `GameActionEnum.SHOT` равен `32`, то есть `Space`.

## Какой вариант выбран

Выбран вариант `keyboard SHOT dispatch` в `TargetingInputManagerImpl`.

Запасной вариант с отдельным patch-модулем для общего weapon handler не понадобился на этой стадии, потому что минимальная правка уже позволяет завести AutoBattle в тот же listener path, который использует обычный `SHOT`.

## Что именно изменено

В `targeting_input.py` добавлен helper:

- `_ptpDispatchAutobattleShotKey(param1:Boolean)`

Он не генерирует `Stage KeyboardEvent`, не использует `Keyboard.isDown()` и напрямую вызывает `listener.keyboardButton(32,param1,false)` по той же listener-цепочке, что и сам `TargetingInputManagerImpl`.

Дальше переделаны две ветки:

### 1. `_ptpSyncAutobattleFire()`

- если AutoBattle не должен стрелять, идет в `_ptpStopAutobattleFire()`;
- если должен стрелять, держит `_ptpAutobattleShot_ = true`;
- каждый tick диспатчит `keyboardButton(32,true,false)` через `_ptpDispatchAutobattleShotKey(true)`.

Тем самым AutoBattle больше не пытается стартовать огонь только через `mouseLeftButton(true,true)`.

### 2. `_ptpStopAutobattleFire()`

- если AutoBattle держал огонь, сначала диспатчит `keyboardButton(32,false,false)`;
- затем оставляет `f705bd7(false,true)` как временный fallback cleanup;
- затем очищает `§include use finally§` и `_ptpAutobattleShot_`.

`close()` как и раньше сначала отпускает AutoBattle fire, потом вызывает `§if for switch§._ptpResetAutobattle()`. Это сохраняет предыдущую re-entry fix-цепочку.

## Как вел себя Smoky после фикса

В этой среде поведение Smoky в runtime не проверено: доступен полный rebuild, но нет автоматизированного in-game harness для воспроизводимого сценария стрельбы, и я не стал придумывать подтверждение без реального запуска боя.

Что подтверждено по коду после фикса:

- Smoky теперь получает AutoBattle fire через тот же semantic path, что и обычный `Space / SHOT` listener dispatch.
- Дополнительный cadence `release/repress` не добавлялся сознательно, потому что сначала нужен runtime-факт: держит ли Smoky повторный огонь на одном удержании `SHOT` или нет.

Если при ручной проверке выяснится, что Smoky делает только один выстрел на удержание, следующая правка должна быть уже по факту поведения: либо cadence в `TargetingInputManagerImpl`, либо более низкоуровневый bypass в общем weapon handler.

## Какие проверки выполнены

### 1. Перепроверка reference AS3

Проверены и сопоставлены:

- `alternativa/tanks/services/targeting/TargetingInputManagerImpl.as`
- `alternativa/tanks/services/targeting/TargetingModeServiceImpl.as`
- `§5214237976237989123423632234§/§true const each§.as`
- `alternativa/tanks/service/settings/keybinding/KeysBindingServiceImpl.as`
- `alternativa/tanks/service/settings/keybinding/GameActionEnum.as`

### 2. Локальная проверка Python patch-модуля

- `targeting_input.py` после правки не содержит диагностируемых ошибок редактора.

### 3. Полный rebuild

Выполнена команда из `ProTankiProxyPatcher`:

- `py -3 .\main.py`

Результат:

- patched SWF собран успешно;
- C++ launcher собран успешно;
- итоговые артефакты обновлены в `ProTankiProxyPatcher/output`.

### 4. Runtime-проверки

Следующие проверки в этой среде не выполнены автоматически и остаются manual runtime checklist:

- Smoky: есть цель, башня доводится, бот реально стреляет, урон проходит;
- враг за стеной: огонь не идет через стену;
- team mode: нет стрельбы по своим;
- F4 off: огонь отпускается сразу;
- выход из битвы и повторный вход: re-entry не ломается;
- Firebird: удержание идет пока цель валидна и отпускается при потере цели/F4 off.

## Остаточные риски

### 1. Smoky cadence пока не подтвержден runtime

Код теперь переводит AutoBattle в SHOT path, но без живой проверки нельзя утверждать, что удержанный `keyboardButton(32,true,false)` сам переоткрывает Smoky-выстрелы по cooldown на конкретной серверной/клиентской сборке.

### 2. Dispatch сейчас привязан к default SHOT keycode 32

Это соответствует reference default binding и требованию ревизии, но не учитывает возможный пользовательский rebinding `SHOT` на другую клавишу.

### 3. Mouse fallback cleanup оставлен временно

`f705bd7(false,true)` оставлен как безопасная cleanup-ветка на stop/close. Если runtime покажет, что он лишний или мешает, его можно будет убрать уже после фактической проверки weapon runtime.

## Следующий шаг для ручной проверки

Минимальный приоритетный сценарий после этой ревизии:

1. Зайти в бой на Smoky.
2. Включить AutoBattle и вывести видимого врага в линию огня.
3. Проверить реальный старт выстрела и прохождение урона.
4. Проверить F4 off и выход/повторный вход в бой.
5. Только если Smoky стреляет один раз на удержание, открывать следующую ревизию под cadence или weapon-handler bypass.