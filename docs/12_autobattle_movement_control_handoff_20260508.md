# AutoBattle Movement Control Handoff

Дата: 2026-05-08
Проект: ProTankiProxyPatcher
Зона изменений: только Python patch pipeline, без правок в _ffdec_mine_export

## Что было подтверждено как root cause

Проблема действительно была не в самом navigation-блоке `tank_runtime.py`, а в слое применения движения в `controls.py`.

Текущая AutoBattle-ветка делала две вещи мимо штатного controller path:

- напрямую вызывала `tank.§break use if§(_drive_,_turn_,...)` из `_ptpSyncAutobattleChassis()`;
- вручную дергала `onChassisControlChanged(...)`.

По reference AS3 это неэквивалентно обычным W/S/A/D:

- штатные клавиши идут через `DriveController.§each const break§(...)`;
- там собирается bitmask по `GameActionEnum.CHASSIS_FORWARD/BACKWARD/LEFT/RIGHT`;
- дальше вызывается `§521423127992312812123423632234§(_mask_)`;
- базовый controller `§break switch default§` сохраняет normal control mask в `§const var import§`, проверяет lock через `§else package final§()`, только потом вызывает `tank.§break use if§(...)`, а `onChassisControlChanged(...)` уходит через `override §package use final§(...)`.

Следствие старой схемы:

- local tank мог продолжать получать direct drive после смерти;
- dead model мог продолжать движение/поворот;
- normal controller mask расходился с тем, что реально применялось к chassis;
- remote view у других клиентов мог выглядеть более дерганым, потому что AutoBattle обходил тот же state path, который используют обычные control updates.

## Что изменено в controls.py

Измененный файл:

- ProTankiProxyPatcher/python/protanki_proxy/patching/autobattle/controls.py

Что сделано:

### 1. Убран direct drive из AutoBattle helper

В injected helper больше нет:

- прямого вызова `tank.§break use if§(...)`;
- ручного вызова `onChassisControlChanged(...)`.

### 2. Добавен штатный control-mask endpoint

Вместо этого добавлен helper `_ptpApplyAutobattleChassisMask(param1:int)`.

Он:

- собирает full mask как `movementBits | this.§set use super§`;
- хранит именно реально примененный full mask в `_ptpAutobattleMask_`;
- вызывает только `§521423127992312812123423632234§(_fullMask_)`.

То есть AutoBattle теперь заходит в тот же controller endpoint, что и обычные W/S/A/D уже после key binding resolution.

### 3. Добавлен local alive/dead guard в `_ptpSyncAutobattleChassis()`

Перед применением движения теперь проверяется local tank:

- `_tank_ != null`;
- `_tank_.§do for final§ != null`;
- `_tank_.§do for final§.§5214231837231850123423632234§ > 0`;
- `_tank_.§5214231182231195123423632234§() == true`.

Если tank невалиден, мертв или inactive:

- очищаются AutoBattle movement flags;
- очищается `_autobattle_fire_requested_`;
- движение отпускается через normal mask path: `§521423127992312812123423632234§(0 | this.§set use super§)` через helper;
- `_autobattle_enabled_` специально не выключается.

### 4. Close/reset теперь отпускает движение через тот же controller path

`DriveController.close()` теперь делает:

- `§if for switch§._ptpResetAutobattle();`
- `this._ptpSyncAutobattleChassis();`
- `super.close();`

Это важно, потому что close раньше просто сбрасывал static state, но не гарантировал release уже примененного movement mask через обычный controller endpoint до уничтожения controller-а.

## Что изменено в tank_runtime.py

Измененный файл:

- ProTankiProxyPatcher/python/protanki_proxy/patching/autobattle/tank_runtime.py

Внутри ветки `if(__CTRL__._autobattle_enabled_)` добавлен ранний guard local tank state до target selection/navigation/fire.

Если local tank:

- не имеет `this.§do for final§`, или
- имеет HP `<= 0`, или
- `!this.§5214231182231195123423632234§()`

то runtime сразу:

- сбрасывает `_autobattle_fire_requested_`;
- сбрасывает `_autobattle_move_forward_/backward_/left_/right_`;
- очищает `_autobattle_target_`;
- обнуляет `_autobattle_lost_time_` и `_autobattle_lock_time_`;
- дополнительно сбрасывает локальные movement continuity state: `_autobattle_last_x_`, `_autobattle_last_y_`, `_autobattle_stuck_time_`, `_autobattle_reverse_time_`, `_autobattle_nav_timer_`, `_autobattle_commit_time_`;
- делает `return` до navigation и fire logic.

Дополнительный сброс movement continuity state добавлен сознательно, чтобы после смерти/respawn AutoBattle не возобновлял старую траекторию из оставшихся transient movement timer-ов.

## Почему выбран control-mask path, а не реальные KeyboardEvent

Реальные `Stage KeyboardEvent` для движения сознательно не использовались.

Причины:

- нужный штатный endpoint уже есть: `§521423127992312812123423632234§(_mask_)`;
- это ближе к обычному пути W/S/A/D после key binding resolution;
- путь не зависит от конкретных `keyCode` W/A/S/D;
- он не привязан к stage input side effects;
- он уважает lock/death gating базового controller-а;
- он обновляет normal control mask внутри самого controller-а, а не только физику chassis.

## Что изменилось для смерти и respawn

После этой ревизии AutoBattle больше не должен продолжать писать direct drive в chassis после смерти local tank.

Ожидаемая семантика теперь такая:

- при смерти базовый controller lock/disable продолжает работать как в reference AS3;
- AutoBattle переводит mask в release через тот же controller path;
- dead tank не должен продолжать ехать или поворачивать по старой траектории;
- fire request тоже очищается на dead/inactive local tank;
- после respawn, если `_autobattle_enabled_` оставлен включенным, логика начинает работать только после живого/active состояния без stale applied movement mask.

## Что изменилось для remote / другого клиента

В этой среде не было отдельного runtime harness с двумя клиентами, поэтому фактическая сетевая картинка не проверялась автоматически.

Что подтверждено по коду:

- AutoBattle больше не обходит controller state;
- `onChassisControlChanged(...)` теперь снова идет через штатный override базового controller-а;
- normal control mask внутри controller-а теперь синхронизирован с тем, что AutoBattle реально применяет.

Из этого следует ожидаемое улучшение: у другого клиента движение должно стать ближе к обычным control updates и менее дерганым, чем при прежнем direct-drive обходе. Но это остается manual runtime verification, а не уже подтвержденным фактом в этой среде.

## Какие проверки выполнены

### 1. Reference AS3 cross-check

Перепроверены:

- `_ffdec_mine_export/scripts/§5214232446232459123423632234§/§5214234677234690123423632234§.as`
- `_ffdec_mine_export/scripts/§5214232446232459123423632234§/§break switch default§.as`
- `_ffdec_mine_export/scripts/§5214235774235787123423632234§/§super var dynamic§.as`
- `_ffdec_mine_export/scripts/§5214238361238374123423632234§/§5214239411239424123423632234§.as`

Подтверждены:

- сборка mask для W/S/A/D в `DriveController.§each const break§(...)`;
- controller endpoint `§521423127992312812123423632234§(...)`;
- базовое lock/apply поведение в `§break switch default§`;
- death lifecycle с `tank.§import switch final§()`, `tank.disable()` и `controller.§521423130282313041123423632234§(1)`.

### 2. Узкая проверка patch-модулей

Проверены редакторные ошибки для:

- `controls.py`
- `tank_runtime.py`

Ошибок после правок нет.

### 3. Полный rebuild

Выполнена команда из `ProTankiProxyPatcher`:

- `py -3 .\main.py`

Результат:

- patched SWF собран успешно;
- C++ launcher собран успешно;
- итоговые артефакты обновлены в `ProTankiProxyPatcher/output`.

## Что не проверено в runtime в этой среде

Автоматически не проверялись:

- плавность local movement в реальном бою;
- remote view со второго клиента;
- остановка движения сразу по F4 off в живом бою;
- смерть/respawn в реальном матче;
- отсутствие stale trajectory после respawn на практике.

Эти проверки остаются manual checklist из задачи.

## Остаточные риски

### 1. Remote smoothing пока не подтвержден живым прогоном

Код теперь идет через правильный controller path, но без двухклиентной ручной проверки нельзя утверждать, что вся дерготня исчезла полностью. Если часть рывков останется, следующая зона проверки:

- `onChassisControlChanged(...)`
- `§get const for§()`
- post-physics correction / `StateCorrectionEvent`

### 2. Дополнительный movement-state reset на dead state изменяет continuity после respawn

Это сделано намеренно, чтобы не было возобновления старой траектории, но если нужен другой характер движения сразу после respawn, корректировать надо именно этот набор transient AutoBattle state, а не возвращать direct drive.

### 3. Fire path здесь не переписывался

Стрельба из ревизии `docs/11_autobattle_fire_shot_path_handoff_20260508.md` в этой ревизии не менялась. Единственное связанное изменение: dead/inactive guard очищает `_autobattle_fire_requested_`, что соответствует ожидаемому поведению мертвого танка.