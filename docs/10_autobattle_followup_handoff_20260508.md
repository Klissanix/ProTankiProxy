# AutoBattle Follow-up Handoff

Дата: 2026-05-08
Проект: ProTankiProxyPatcher
Зона изменений: только Python patch pipeline, без правок в _ffdec_mine_export

## Что было изменено

Измененные файлы:

- ProTankiProxyPatcher/python/protanki_proxy/patching/autobattle/controls.py
- ProTankiProxyPatcher/python/protanki_proxy/patching/autobattle/targeting_input.py
- ProTankiProxyPatcher/python/protanki_proxy/patching/autobattle/tank_runtime.py

Новый handoff:

- docs/10_autobattle_followup_handoff_20260508.md

Builder и noclip pipeline не расширялись. Все правки уложены в существующие autobattle patch-модули.

## Подтвержденные root causes

### 1. Огонь реально ломался на цепочке TargetingInput -> TargetingMode -> weapon listener

Подтверждено по decompiled AS3:

- TargetingInputManagerImpl.f705bd7(param1,param2) действительно идет по listeners и останавливает propagation на первом `false`.
- TargetingModeServiceImpl.mouseLeftButton(true,true) действительно может вернуть `false`, если сначала нужен fullscreen/mouse lock.
- Общий weapon handler `§true const each§.mouseLeftButton()` стартует огонь только при `settings.mouseControl` и `TargetingModeService.getCurrentMode() == 2`.

Следствие: если первый AutoBattle `f705bd7(true,true)` был поглощен targeting-mode сервисом, а `_ptpAutobattleShot_` уже считался активным, второй start до weapon listener больше не доходил.

### 2. AutoBattle fire path был ошибочно завязан на physical mouse state

Это подтверждено в текущем patch-коде: `_desired_` зависел от `!this.§5214234685234698123423632234§`.

Для AutoBattle это был неправильный критерий, потому что:

- автоогонь не должен блокироваться ручным физическим состоянием ЛКМ;
- stop-ветка не должна ждать, пока physical mouse state станет `false`, иначе AutoBattle shot может не закрыться на teardown.

### 3. Между битвами действительно текло static AutoBattle state

Подтверждено по текущей архитектуре:

- `_autobattle_*` хранится как static state в `§if for switch§`;
- ранее полный reset делался в основном только на F4 toggle;
- reliable teardown anchors есть в `TargetingInputManagerImpl.close()` и в local controller `§5214234677234690123423632234§.close()`.

Именно туда добавлен общий reset.

### 4. Для старта огня отдельный патч `TargetingModeServiceImpl` или weapon handler не понадобился

Это не подтвердилось как обязательная следующая правка.

После переделки fire-sync на повторный `f705bd7(true,true)` каждый tick, пока AutoBattle действительно хочет стрелять, дополнительный bypass для mode service не нужен: как только mouse lock/mode 2 готовы, тот же existing listener chain начинает пропускать start до weapon listener.

## Что именно сделано

### 1. Централизованный reset AutoBattle state

В `controls.py` добавлен helper `_ptpResetAutobattle(param1:Boolean = false)` в `§if for switch§`.

Он сбрасывает:

- enable/fire/movement flags;
- current target, lost/lock timers, last-seen state;
- nav/stuck/reverse state;
- новые nav memory поля: `_autobattle_last_best_yaw_`, `_autobattle_last_stuck_yaw_`, `_autobattle_stuck_penalty_`, `_autobattle_commit_time_`, `_autobattle_wall_side_`.

Этот helper теперь вызывается:

- на F4 toggle вместо копипасты reset-логики;
- в local controller `close()`;
- в `TargetingInputManagerImpl.close()`.

### 2. Переделан fire-sync в TargetingInputManagerImpl

В `targeting_input.py`:

- добавлен `_ptpStopAutobattleFire()`;
- `_ptpSyncAutobattleFire()` больше не зависит от physical mouse state;
- пока AutoBattle хочет стрелять, `f705bd7(true,true)` вызывается каждый tick;
- stop теперь жесткий и опирается только на факт, что ранее AutoBattle поднимал `_ptpAutobattleShot_`;
- в `close()` stop уходит до очистки listeners, затем вызывается общий reset.

Почему выбран именно такой способ:

- он минимально вторгается в existing targeting flow;
- не требует дублировать стрельбу через keyboard events;
- повторный `true` для уже стреляющего weapon handler безопаснее, чем гадать, в какой именно момент targeting mode уже готов;
- это исправляет именно подтвержденный root cause с поглощением первого `true` listener-ом targeting mode.

### 3. Fire gate переведен на текущий yaw башни

В `tank_runtime.py` AutoBattle больше не использует `Math.abs(_abAimYaw_) < 0.2` как суррогат "цель перед корпусом".

Теперь логика такая:

- desired yaw: `_abAimYaw_`;
- current turret yaw: `this.§finally continue§.§final use throw§()`;
- turret error: `Math.atan2(Math.sin(_abAimYaw_ - _abTurretYaw_), Math.cos(_abAimYaw_ - _abTurretYaw_))`;
- `_abCanFire_` поднимается, только когда цель видима, валидна, жива, enemy и ошибка башни мала.

Это ближе к реальному условию нанесения урона, чем старый gate через доворот корпуса.

### 4. Добавлены компактные улучшения навигации без полноценного pathfinding

В `tank_runtime.py` добавлены:

- hysteresis через `_autobattle_last_best_yaw_` и `_autobattle_commit_time_`;
- penalty за недавно проваленный yaw через `_autobattle_last_stuck_yaw_` и `_autobattle_stuck_penalty_`;
- wall-follow bias через normal из ближайшего wall hit и стабильную сторону `_autobattle_wall_side_`;
- дополнительный дальний forward probe для более раннего штрафа прямого тупикового направления;
- flip `_autobattle_wall_side_` и штраф stuck yaw при срабатывании stuck escape.

Это не делает из текущей системы A*/navmesh, но уменьшает дрожание направления и число мгновенных возвратов в тот же неудачный yaw.

### 5. Добавлены guards на неготовый runtime state

В `tank_runtime.py` добавлены ранние проверки на `_bs_`, pose/quaternion и turret controller.

При неготовом local runtime AutoBattle больше не должен опираться на stale ссылки в этом кадре.

## Использованные AS3 anchors и перепроверенные reference-символы

Перепроверялось по `_ffdec_mine_export`, без его модификации.

Основные anchors:

- `alternativa/tanks/services/targeting/TargetingInputManagerImpl.as`
- `TargetingInputManagerImpl.f705bd7(param1,param2)`
- `TargetingInputManagerImpl.tick()`
- `TargetingInputManagerImpl.close()`
- `alternativa/tanks/services/targeting/TargetingModeServiceImpl.as`
- `TargetingModeServiceImpl.mouseLeftButton(true,true)`
- `§5214237976237989123423632234§/§true const each§.as`
- `§true const each§.mouseLeftButton()`
- `§5214232446232459123423632234§/§if for switch§.as`
- `§if for switch§.§in switch use§()`
- `§if for switch§.§final use throw§()`
- `§5214232446232459123423632234§/§5214234677234690123423632234§.as`
- `§5214234677234690123423632234§.close()`
- `§5214235774235787123423632234§/§super var dynamic§.as`
- `§52142335323366123423632234§(param1:§5214239411239424123423632234§)` как место создания local controller

## Что не менялось сознательно

- `_ffdec_mine_export` не трогался;
- `TargetingModeServiceImpl` и common weapon handler не патчились, потому что после подтверждения root cause это оказалось лишним для минимального решения;
- builder/noclip pipeline не расширялся;
- полноценный pathfinding не добавлялся.

## Проверки

Выполнена полная сборка из `ProTankiProxyPatcher`:

- команда: `py -3 .\main.py`
- результат: успешно
- patched SWF собран локально через FFDec importscript;
- C++ launcher собран;
- output summary обновлен.

Косвенно это подтверждает:

- Python patch modules синтаксически валидны;
- generated AS3 не сломал FFDec importscript на этом шаге;
- текущий объем вставок не привел к очередному `generateIf/generateForIn` crash.

## Что нужно проверить руками в игре

### Огонь и урон

- DM/FFA: бот реально открывает огонь и наносит урон по любому живому врагу.
- Team mode: не стреляет по союзникам.
- Враг за стеной: не стреляет через стену, допускается короткий last-seen lock без actual fire.
- Видимая цель: башня доводится, `_autobattle_fire_requested_` приводит к реальному weapon start.
- Во время движения: огонь не отваливается после первого `true`, если start был сначала поглощен targeting mode.

### Reset и повторный вход

- F4 off: движение и огонь прекращаются сразу.
- Включить AutoBattle, выйти из битвы, зайти в другую: новая битва грузится нормально.
- Несколько перезаходов подряд.
- Проверить отдельно сценарии death/respawn внутри одной битвы.

### Навигация

- Карты с узкими коридорами и углами: стало ли меньше дрожания yaw.
- Сложные стены/препятствия: бот должен реже тереться в одну и ту же грань.
- После stuck escape: не должен сразу возвращаться в тот же неудачный yaw.
- Многоуровневые карты: дальний probe и wall-follow не должны излишне переусложнить safe-score.

## Остаточные риски

### 1. Навигация все еще эвристическая

Даже после текущих улучшений это все еще local steering, а не маршрут по waypoint graph. На сложных тупиковых картах бот все еще может выбирать плохой обход, просто реже и менее дергано.

### 2. Fire gate зависит от предположения о yaw-семантике `§final use throw§()`

Символ и предложенная формула перепроверены и использованы по наиболее правдоподобной трактовке, но фактическую точность нужно подтвердить в runtime на разных turret/weapon setups.

### 3. Reset завязан на текущие teardown hooks

Сейчас cleanup сидит в:

- local controller `close()`;
- `TargetingInputManagerImpl.close()`.

Если существует редкий lifecycle-путь выхода из local battle, который обходит оба hook-а, static state еще может утечь. По текущему чтению reference это выглядит маловероятно, но руками проверить надо.

### 4. Separate targeting-mode bypass пока не нужен, но может понадобиться на экзотическом окружении

Если окажется, что на части конфигураций mode 2 не поднимается стабильно даже при повторном `true`, тогда следующая ревизия уже должна точечно патчить либо `TargetingModeServiceImpl`, либо common weapon handler. Пока доказательств, что это необходимо, нет.

## Рекомендация для следующей ревизии

Если после ручной проверки огонь уже стабилен, следующий рациональный шаг - не раздувать `TankEntity.runAfterPhysicsUpdate` дальше, а искать компактный соседний anchor для более сильной навигации:

- либо готовый graph/waypoint source в клиенте;
- либо более локальный battle-nav helper, который уже знает про geometry/lanes.

Если такого anchor не найдется, лучше продолжать малыми эвристическими улучшениями, а не пытаться втиснуть A* прямо в текущую AS3-вставку.