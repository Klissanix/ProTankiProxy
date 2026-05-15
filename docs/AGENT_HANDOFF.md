# ProTanki Technical Handoff

Last updated: 2026-04-05 (noclip + dynamic hull speed + hold-memory controls)

---

## 0. Noclip / SWF-патч (2026-04-05) — РАБОТАЕТ ПОЛНОСТЬЮ

### Что сделано
`scripts/proxy/noclip_patch.py` применяет AS3-патчи к `library.swf` через FFDec `-importscript`.
Результирующий `library_noclip.swf` отдаётся через `http_servers.py` при запросе `/library.swf`.

### XRay docs (2026-04-10)
- `docs/05_xray_texture_candidates.md` - кандидаты texture-name/prefix и источник данных.
- `docs/06_xray_transparency_implementation.md` - финальная рабочая реализация, root cause, ошибки и чеклист.

#### Константы скорости (редактируются в начале файла)
| Константа | Значение | Назначение |
|---|---|---|
| `BOOST_SPEED` | 300 | Скорость подъёма вверх (u/s) при зажатом Ctrl |
| `DYNAMIC_HULL_SPEED` | `BattleUtils.toClientScale(clientTank.tankSpecification.speed)` | Скорость W/S в воздухе/ноклипе берётся из текущей серверной скорости корпуса (учитывает буст-пады и смену корпуса) |
| `AIR_TURN_SPEED` | 1.5 | Угловая скорость поворота A/D (rad/s) |
| `LEVEL_SPEED` | 8.0 | Коэффициент выравнивания при зажатом R |
| `LEVEL_DAMP` | 0.75 | Демпфирование скорости при зажатом R |
| `HOLD_DAMP` | 0.88 | Демпфирование XY при включённой фиксации высоты (`) |

Python status/UI (`shared.py`/`overlay.py`) now reads hull max speed from
S→C packet `-1672577397` (TankSpecification update) and converts to client
units with the same BattleUtils scale factor (`*100`). If packet not seen yet,
it temporarily falls back to observed speed from movement frames.

| Патч | Файл | Что делает |
|---|---|---|
| **A** | `§package package false§/§static set true§.as` | CollisionDetector: после `getContacts()` удаляет контакты со статичным телом где `\|normalZ\| < 0.7` (стены). Пол (`\|z\| >= 0.7`) остаётся. Если удалил — `linearVelocity.z = max(lv.z, 0)` чтобы не проваливаться. |
| **B** | `§5214238361238374§/§5214239411239424§.as` | TankEntity `runAfterPhysicsUpdate` — только `this.local`: селективный anti-flip (блокирует лишь rotation, ухудшающий наклон), выравнивание по R, Ctrl/Shift по Z, фиксация высоты (`), W/S по динамической max speed корпуса, A/D yaw. |
| **C** | `§5214232446232459§/§if for switch§.as` | DriveController: добавляет флаги `_noclip_boost_`, `_noclip_down_`, `_noclip_hold_z_`, `_noclip_hold_active_`, `_noclip_hold_snap_`, `_noclip_fwd_`, `_noclip_bwd_`, `_noclip_lft_`, `_noclip_rgt_`, `_noclip_levelup_`. |
| **D** | `§5214232446232459§/§5214234677234690§.as` | TankInputController `§each const break§`: ДО `if(!_loc5_) return` обрабатывает keyCode `17` (Ctrl), `16` (Shift), `192` (`), `82` (R); после — зеркалит `GameActionEnum.CHASSIS_*` в `_noclip_fwd_/bwd_/lft_/rgt_`. |
| **E** | (в файле Patch C) | DriveController `§continue set super§`: bypass ground-check `if(isGrounded \|\| _noclip_boost_ \|\| _noclip_hold_active_)`. |

### Управление
- **WASD** → движение/поворот работают **всегда** (на земле и в воздухе), без Ctrl.
- **Left Ctrl зажат** → подъём вверх 300 u/s.
- **Left Shift зажат** → спуск вниз 300 u/s.
- **` (Ё)** → включить/выключить фиксацию высоты; при активной фиксации Ctrl/Shift двигают по Z и одновременно обновляют целевую высоту фиксации.
- **R зажат** → плавное выравнивание по pitch/roll + ускоренное затухание скорости.
- **W/S в воздухе** → движение вперёд/назад по направлению взгляда, со скоростью из текущего `tankSpecification.speed` (динамически).
- **A/D в воздухе** → поворот вокруг вертикальной оси.
- **Стены** → танк проходит насквозь.
- **Другие игроки** → обычные коллизии (не затронуты).
- **Переворот** → предотвращается селективно: вращение, которое усугубляет наклон, гасится; самовыправление на колёса не блокируется.
- **Скорость в воздухе** → всегда соответствует серверной max speed текущего корпуса (учитывает бустеры и смену корпуса в бою).

### Проверено
HTTP-поток:
```
→ GET /Prelauncher.swf  → 200 (194.67.196.216)
→ GET /config.xml       → 200 (наш XML: address=127.0.0.1)
→ GET /Loader.swf       → 200 (194.67.196.216)
→ GET /hardware.swf     → 200 (194.67.196.216)
→ GET /library.swf      → 200 (ПАТЧЕННЫЙ)
```

Деком патченного SWF подтвердил наличие всех патчей A–E.

### Ключевые символы
| Символ | Что это |
|---|---|
| `§package package false§/§static set true§.as` | CollisionDetector (Patch A) |
| `§var switch include§` | метод-диспетчер getContacts |
| `§5214233761233774§` | ContactPoint.normal (Vector3) |
| `§5214238823101§` | ContactPoint.recycle() |
| `§5214232783232796§` | CollisionShape → RigidBody ref |
| `§set for implements§` | RigidBody.isDynamic |
| `§implements for break§` | TankEntity.bodyWrapper |
| `§implements catch catch§` | RigidBody.bodyState (`§catch for in§`) |
| `§get var dynamic§` | BodyState.angularVelocity |
| `§native use function§` | BodyState.linearVelocity |
| `§try switch true§` | BodyState.quaternion (ориентация) |
| `§if for switch§` | DriveController (хост статичных флагов) |
| `§each const break§` | keyDown/keyUp обработчик в TankInputController |
| `§5214232330232343§` | ground-check объект в DriveController |
| `§use catch get§` | isGrounded() на ground-check объекте |
| `§continue set super§` | DriveController movement update (Patch E цель) |

### Известные ограничения
- Kill-zone ниже карты (серверная проверка высоты) — патч не помогает, уничтожение неизбежно.
- `Keyboard.isDown()` (Flash static API) **не работает** → критическая ошибка. Использовать только AS3 class-level static флаги.
- Cross-class static ref без импорта не работает. Флаг должен быть в классе, уже импортированном в целевом файле.
- Движение в воздухе (800 u/s) воспринимается сервером без протеста — физика client-authoritative.

---

## 1. Загрузочная цепочка

```
StandaloneLoader.swf  →  Prelauncher.swf  →  Loader.swf
  →  library.swf / hardware.swf / software.swf  →  Game
```

**КРИТИЧЕСКИ ВАЖНО:** config.xml НЕ находится локально. Prelauncher **скачивает** его
по HTTP:
```
Prelauncher.as L80:
  configUrl = loaderInfo.parameters["config"] || "http://146.59.110.103/config.xml"
```

Содержимое config.xml (реальное, из `artifacts/swf/remote/146.59.110.103__config.xml`):
```xml
<cfg xmlns="http://alternativaplatform.com/core/config.xsd">
  <server address="146.59.110.146"><port>25565</port></server>
  <status>available</status>
</cfg>
```

Prelauncher читает `address` и `port` → передаёт как `loaderInfo.parameters["ip"]` и `["port"]`
в Loader.swf → library → Game → `Network.connect(ip, port)`.

**Для MITM нужно перехватить два пути:**
1. HTTP GET `http://146.59.110.103/config.xml` → вернуть XML с `address="127.0.0.1"`
2. TCP `146.59.110.146:25565` → прокси (добавить оба IP как loopback-алиасы)

SHA-256 `StandaloneLoader.swf` = `D7E42BAA9BBE98BBCD3B5913A9D5F10928E6C6CA5A379E2BF7684A50F05A2C78` (проверен).

---

## 2. Сетевые эндпоинты

| Назначение | Адрес |
|---|---|
| Активный (подтверждён захватом) | `146.59.110.146:25565` |
| Fallback (в ConnectionParameters) | `194.67.196.216:25565` |
| HTTP ресурсы (loader) | `http://146.59.110.103`, `http://194.67.196.216` |
| Доменные зеркала | `s.pro-tanki.com`, `tankiresources.com` |

Все 676 захваченных пакетов в 3 сессиях проходят через `146.59.110.146:25565`.

---

## 3. Фрейминг пакетов (TCP)

```
[4 bytes] headerWord  (big-endian uint32)
  - биты  0..23  = total_len (включая заголовок 8 байт)
  - биты 24..31  = флаги: 0x40 = payload compressed (deflate)
[4 bytes] packetId    (big-endian int32, signed)
[N bytes] payload     (raw или deflate-compressed)
  payload_len = total_len - 8
```

- Реализация: `scpacker.networking.Network` (класс `Network.as` в decompiled_library).
- Decompress: `zlib.decompress(payload, -zlib.MAX_WBITS)` (raw deflate, без wrapper).

---

## 4. XOR stream cipher (ОБЯЗАТЕЛЬНО знать)

Активируется **после** получения пакета `2001736388` (handshake, S→C).

### Key setup
```python
k = XOR всех байт из Vector<int> key_vector  # (каждый байт & 0xFF)
recv_key[i] = (k ^ (i << 3)) & 0xFF   # i=0..7, для S→C потока
send_key[i] = (k ^ (i << 3) ^ 0x57) & 0xFF  # i=0..7, для C→S потока
```

### S→C расшифровка клиентом (Method A на recv_key):
```python
recv_key[pos] = (enc_byte ^ recv_key[pos]) & 0xFF  # ключ обновляется enc
out = recv_key[pos]
pos ^= recv_key[pos] & 7
```

### S→C зашифровка сервером (Method B на recv_key):
```python
enc = (plain ^ recv_key[pos]) & 0xFF
recv_key[pos] = plain                  # ключ обновляется plaintext-ом
pos ^= plain & 7
```

### C→S зашифровка клиентом (Method B на send_key):
```python
enc = (plain ^ send_key[pos]) & 0xFF
send_key[pos] = plain
pos ^= plain & 7
```

### C→S расшифровка сервером (Method A на send_key):
```python
send_key[pos] = (enc ^ send_key[pos]) & 0xFF
out = send_key[pos]
pos ^= send_key[pos] & 7
```

**ВАЖНО для MITM proxy:** заголовок (8 байт) НЕ шифруется — только payload.  
Сразу после key exchange клиент отправляет locale-пакет `-1864333717` (первый зашифрованный C→S).

Реализация класса: `§5214239273239286§/§521423114302311443§.as` в decompiled_library.

---

## 5. Кодеки (сериализация payload полей)

| Codec | Формат |
|---|---|
| `StringCodec` | `0x00` (not-null) + `int32 BE` (byte_len) + `UTF-8 bytes` |
| `IntCodec` | `int32 BE` (4 байта, signed) |
| `BooleanCodec` | `1 byte` (0x00/0x01) |
| `Vector3Codec` (Codecc5d6ej3) | `0x00` + 3×`float BE` (12 байт) |
| `VectorCodecByte` | `int32 BE` count + `count` bytes (ключ handshake) |
| `LongCodec` | 8 байт BE |

Nullable-поля: null → `0x01` (1 байт), not-null → `0x00` + payload.

---

## 6. Packet ID (все подтверждены реальным трафиком)

### Бонусы / кристаллы (основная цель)

| ID | Направление | Структура payload | Описание |
|---|---|---|---|
| `1831462385` | S→C | String(bonusId) + Vector3(pos) + int(lifetime_ms) | Бонус заспавнился |
| `-1047185003` | C→S | String(bonusId) | Запрос подбора бонуса |
| `-1291499147` | S→C | String(bonusId) | Подтверждение подбора (**broadcast** всем игрокам) |
| `-2026749922` | S→C | String(bonusId) | Бонус удалён без подбора (истёк lifetime) |
| `-593513288` | S→C | int32(balance) | Текущий баланс кристаллов (только этому игроку) |
| `1149211509` | S→C | int32(fund) | Текущий фонд боя (при любом pickup от любого игрока) |

**Поля spawn-пакета (1831462385), подтверждено декодированием:**
```
bonusId   : StringCodec  (напр. "crystal#180")
pos       : Vector3Codec : null_flag(1) + float_BE*3  →  реальные координаты в мировых единицах
                           Пример: pos=(3953.5, 4097.4, 1244.9)
lifetime  : IntCodec BE  →  int32 МИЛЛИСЕКУНДЫ до авто-удаления бонуса
                           Crystal: 900000 ms = 900 s = 15 минут
                           Nitro/medkit/armorup/damageup: 30000 ms = 30 секунд
```

**ВАЖНО:** `lifetime` — это НЕ задержка перед появлением. Бонус можно подбирать
сразу после получения spawn-пакета. Ранняя версия скрипта ошибочно ждала 900 с.

**pickup_confirm (`-1291499147`) — BROADCAST:** его получают ВСЕ игроки в комнате.
Нельзя использовать как подтверждение что именно наш inject сработал.
Использовать `crystal_update` (`-593513288`) — он приходит ТОЛЬКО игроку кто подобрал.

**Payload lengths (verified):**
- spawn: `5 + len(bonusId) + 1 + 12 + 4` = `22 + len(bonusId)` байт
- pickup_req / pickup_confirm / remove: `5 + len(bonusId)` байт
- crystal_update / fund_update: `4` байта (один int32)

### Handshake / auth

| ID | Направление | Описание |
|---|---|---|
| `2001736388` | S→C | XOR key vector (пакет НЕ зашифрован, plainttext) |
| `-1864333717` | C→S | Locale (первый зашифрованный пакет от клиента) |
| `-739684591` | C→S | Login(username, password, rememberMe) |
| `-845588810` | C→S | Login-by-hash(hash) |
| `932564569` | S→C | Remembered hash от сервера |

### Lobby / battle select

| ID | Направление | Описание |
|---|---|---|
| `2092412133` | C→S | BattleSelectModel.select(battleId) |
| `-1315002220` | C→S | BattleInfoModel.joinAsSpectator() |
| `-2135234426` | C→S | BattleCreateModel.createBattle(params) |
| `-1284211503` | C→S | Team join / fight |

---

## 7. Серверные проверки (verified по отчётам и live тестированию)

| Проверка | Результат |
|---|---|
| Pickup до spawn того же bonusId | **REJECTED** |
| Replay того же bonusId | **REJECTED** |
| Случайный/несуществующий bonusId | **REJECTED** |
| Легитимный pickup (12-758 мс после spawn) | **ACCEPTED** |
| Pickup без физической близости к бонусу | **REJECTED** (молча — сервер не отвечает ничем) |
| Pickup при нахождении рядом с бонусом | **ACCEPTED** |

**КРИТИЧЕСКИ ВАЖНО — позиционная проверка:**
Сервер проверяет расстояние между игроком и бонусом при обработке pickup_request.
Если игрок далеко — запрос молча отбрасывается, `pickup_confirm` НЕ приходит.
`pickup_confirm` может прийти от другого игрока который подобрал тот же бонус ближе.

**Стратегия обхода:** retry loop — инжектировать pickup каждые ~500 мс пока бонус в `_active`.
Как только игрок окажется рядом, очередной retry будет принят. Это реализовано в
`_pickup_worker` текущей версии скрипта.

**Подтверждённые типы бонусов** (авто-pickup работает для всех):
- `crystal` ✅ — основной тип, даёт +10 кристаллов, lifetime 900 с
- `armorup` ✅ — броня, lifetime 30 с
- `damageup` ✅ — урон, lifetime 30 с
- `medkit` ✅ — лечение, lifetime 30 с
- `nitro` — не подтверждён (в тесте истёк, игрок был далеко), но механика идентична

**Задокументированные сессии:**
- `auto_pickup_..._192758.jsonl`: первое подтверждение — `crystal#3433` (balance 886→896)
- `auto_pickup_..._204423.jsonl`: **основная сессия** (~11 мин), 14 spawn, 12 confirm, 7 crystal_update, 3 expired (игрок далеко), balance 926→966. Все 4 типа бонусов подтверждены.

**Типичное время от spawn до pickup_confirmed:** 1–19 сек (зависит от расстояния до бонуса).

---

## 8. MITM Proxy: архитектура и известные проблемы

**Скрипты:** `scripts/crystal_auto_pickup.py`, `scripts/setup_mitm.ps1`

#### Быстрый запуск (одна команда)

```powershell
Start-Process powershell -Verb RunAs -ArgumentList "-NoExit -ExecutionPolicy Bypass -File `"C:\Users\Oleh\Documents\ProTanki-security\scripts\setup_mitm.ps1`""
```

#### Что делает setup_mitm.ps1

1. Определяет реальный IP исходящего NIC через UDP-сокет к `146.59.110.146` (**до** добавления алиасов)
2. Добавляет два loopback-алиаса: `146.59.110.103/32` (HTTP) и `146.59.110.146/32` (TCP)
3. Запускает `C:\WINDOWS\py.exe -3 -u crystal_auto_pickup.py --serve-config --upstream-bind-ip <realIP>`
4. Ждёт "Waiting for game connections" в stdout (до 15 сек)
5. Запускает `ProTanki.exe` автоматически
6. Стримит лог прокси в консоль (400 мс интервал)
7. При Ctrl+C: убивает процесс, удаляет temp-файлы, удаляет оба алиаса

#### Аргументы crystal_auto_pickup.py

| Аргумент | По умолчанию | Назначение |
|---|---|---|
| `--listen-port` | 25565 | Порт прослушивания |
| `--upstream-host` | 146.59.110.146 | Real game server |
| `--upstream-port` | 25565 | Real game server port |
| `--serve-config` | off | Запустить HTTP-сервер на порту 80 для config.xml |
| `--upstream-bind-ip` | (auto) | Bind outgoing socket к этому IP (обязательно при loopback-алиасе) |
| `--retry-interval` | 0.5 | Интервал retry pickup в секундах |

#### Loopback-алиасы (актуально на 2026-04-11)

- `146.59.110.103/32` — обязателен: Prelauncher.swf запрашивает `http://146.59.110.103/config.xml` (HTTP)  
  → наш HTTP-сервер отдаёт модифицированный XML с `address="127.0.0.1"`.
- `146.59.110.146/32` — опционален: в редких случаях помогает, если Adobe AIR использует старый cached `config.xml`.  
  В текущем `scripts/proxy/app.py` этот алиас **выключен по умолчанию**. На части Windows-конфигураций он ломает upstream-маршрут (симптом: `upstream_error timed out`, затем в игре `connection closed by server`).
  Для принудительного включения: `PROTANKI_ENABLE_SERVER_ALIAS=1`.

#### Почему нужен --upstream-bind-ip

После добавления алиаса `146.59.110.146 → 127.0.0.1`, исходящий коннект прокси к `146.59.110.146:25565` уходил бы в loopback (к себе). `--upstream-bind-ip <realIP>` биндит outgoing socket к реальному NIC, обходя алиас. Реальный IP детектируется через UDP-сокет **до** добавления алиасов.

#### HTTP сервер: 502 от Prelauncher — это нормально

Prelauncher.swf загружает не только config.xml но и ресурсы (SWF, картинки). HTTP-сервер проксирует все пути кроме `/config.xml` к реальному `146.59.110.103:80` через `http.client.HTTPConnection`. Если Adobe AIR закешировал ресурсы — 502 не критичны.

#### Архитектура прокси (потоки)

```
[Game Client] ──TCP──► [Proxy :25565]
                              │
               ┌──────────────┴──────────────┐
               │ _fwd_cs thread              │ _fwd_sc thread
               │ client→server               │ server→client
               │ process_cs()                │ detects spawns/confirms/removals
               └──────────────┬──────────────┘
                              │
                         [Real Server :25565]

[_pickup_worker thread]: retry loop every 0.5s
  → inject_pickup() for all ids in shared._active dict
```

#### Критическая деталь: _srv_lock (race condition)

XOR cipher stateful. Два потока одновременно вызывающих `encrypt_cs()` ломают state.

**Неправильно** (было раньше):
```python
with _encrypt_lock:
    encrypted = cipher.encrypt_cs(data)
# <- другой поток может вклиниться здесь
sock.sendall(encrypted)
```

**Правильно** (текущее):
```python
with self._srv_lock:          # один lock на encrypt И sendall
    encrypted = self._cs_server.encrypt_cs(data)
    srv_sock.sendall(encrypted)
```

`_ProxyShared.process_cs()` и `inject_pickup()` оба используют `_srv_lock`.

#### Стратегия retry pickup (сервер проверяет позицию)

Сервер **молча отклоняет** pickup_request если игрок далеко от бонуса — ни ошибки, ни ответа. `_pickup_worker` инжектирует каждые 0.5 сек для всех бонусов в `_active`. Как только игрок подходит — принимается.

**Подтверждённый рабочий сеанс:** `artifacts/traffic/*_192758.jsonl` — crystal#3433, баланс 886→896, без `client_pickup_request`.

#### Структура spawn_packet (поправка vs старой документации)

Старая версия: 4-е поле = `delay` (секунды до появления)  
**Реальность:** 4-е поле = `lifetime_ms` (int32_BE) = время до **авто-удаления**

- Кристаллы: `900000` мс = 15 минут
- Нитро/медкит/armorup/damageup: `30000` мс = 30 секунд
- Бонус **доступен немедленно** после spawn-пакета, никаких задержек

#### Таблица событий JSONL-лога

| event | Когда |
|---|---|
| `proxy_listening` | Прокси поднялся |
| `upstream_connected` | Соединение с реальным сервером |
| `cipher_init` | key_exchange получен, cipher инициализирован |
| `spawn_detected` | Бонус появился (поля: `bonus_id`, `lifetime_s`, `hex`) |
| `inject_attempt` | Попытка inject pickup |
| `pickup_injected` | Пакет отправлен |
| `inject_skipped_dedup` | Слишком часто для одного бонуса |
| `pickup_confirmed` | broadcast confirm (не только наш!) |
| `bonus_removed` | bonus_remove от сервера |
| `crystal_update` | **Реальное подтверждение** нашего pickup (поле `balance`) |
| `fund_update` | Любой pickup в бою |
| `client_pickup_request` | Ручной pickup игрока |
| `cs_packet` | Прочие C→S пакеты |
| `sc_packet` | Прочие S→C пакеты |
| `upstream_error` | Ошибка соединения с сервером |

---

## 9. Инструменты проекта

| Скрипт | Назначение |
|---|---|
| `scripts/crystal_auto_pickup.py` | MITM proxy с авто-pickup всех типов бонусов (crystal/armorup/damageup/medkit) |
| `scripts/protanki_packet_watch.py` | Пассивный sniffer (scapy/pcap), пишет CSV+JSONL |
| `scripts/bonus_compromise_test_runner.py` | Анализ CSV: корреляция spawn→pickup→confirm, PASS/FAIL отчёты |
| `scripts/capture_with_pktmon.ps1` | Захват трафика через PktMon (Windows, без scapy) |
| `scripts/swf_quick_audit.py` | SWF парсер: теги, строки, URL, хеши |
| `scripts/extract_packet_map.py` | Извлечение packet_map из SWF |

---

## 10. Артефакты

| Путь | Содержимое |
|---|---|
| `artifacts/swf/analysis/packet_map.csv` | 482 пакет-класса: id, priority, class, file |
| `artifacts/swf/analysis/send_calls.txt` | 176 Network.send() вызовов из декомпилированного кода |
| `artifacts/swf/decompiled_library/scripts/` | AS3 код (частично обфусцирован `§obf§`) |
| `artifacts/traffic/*.jsonl` | JSONL с разобранными пакетами (3 passive-sniffer сессии) |
| `artifacts/traffic/auto_pickup_*.jsonl` | JSONL логи MITM proxy с авто-pickup (10+ сессий); главная: `_204423.jsonl` (14 spawn, 12 confirm, balance 926→966) |
| `artifacts/reports/*.md` | Markdown отчёты compromise-тестов |
| `docs/KNOWN_FACTS.json` | Machine-readable факты (хеши SWF, packet_id, эндпоинты) |

---

## 11. Ключевые подсказки для нового агента

1. **PowerShell:** `rg` не работает — использовать `Select-String`, `Get-ChildItem`. Python запускается как `py -3`.
2. **Декомпилированный AS3** частично обфусцирован: имена классов вида `§break use catch§` — это нормально, логика читаема.
3. **Все payload шифруются** XOR после первого key exchange. До него (и сам key exchange) — plaintext.
4. **bonusId генерируется сервером** внутри spawn-пакета, клиент не может предсказать его заранее.
5. **pickup_confirm (`-1291499147`) — broadcast**: его получают ВСЕ игроки в комнате, не только тот кто подобрал. Не путать с crystal_update (`-593513288`).
6. **fund_update (`1149211509`) приходит на каждый pickup** любым игроком в бою.
7. **Для MITM proxy** обязательно хранить 2 независимых C→S cipher state: один для декодирования от клиента, другой для кодирования к серверу.
8. **PktMon дублирует кадры**: при анализе ETL/PCAPNG обязательна дедупликация с окном ~150 мс.
9. Сервер отвечает на pickup confirm за **3-8 мс** — очень быстро.
10. Класс XOR cipher: `§5214239273239286§/§521423114302311443§.as`; NetworkService (регистрирует codec-синглтоны): `§with set static§/§import catch else§.as`.
11. Экспериментальная runtime-ветка автонаводки удалена из текущей рабочей конфигурации: отдельный модуль, специальные CLI-флаги и подмена углов в исходящих пакетах больше не используются. Актуальное состояние — пассивный enemy tracking, fire/movement логирование и overlay со статусом трекинга.

---

## 12. Пакеты движения и боевая физика (verified 2026-04-05)

### Система координат (ПОДТВЕРЖДЕНО из реального трафика)

**Игра использует Z-up координатную систему:**
- **X, Y** = горизонтальная плоскость (направление движения)
- **Z** = высота (типичные значения: 82–416 в зависимости от ландшафта; 89 = уровень земли на плоских картах)
- Горизонтальное расстояние между двумя точками = `sqrt(dx² + dy²)`
- Углы горизонтального направления = `atan2(dy, dx)` — стандартная XY-тригонометрия

**Подтверждено из лога** (сессия 2026-04-05): позиции врагов типа `[501, -1388, 416]` — Z=416 это высота (пандус), XY меняются активно.

### C→S пакеты движения

| Packet ID | Направление | Размер | Описание |
|---|---|---|---|
| `329279865` (MOVEMENT_ID) | C→S | 59 байт | Движение без угла башни |
| `-1683279062` (MOVEMENT_EXT_ID) | C→S | 63 байта | Движение + угол башни |
| `-114968993` (FIRE_ID) | C→S | 11 байт | Выстрел |

### Структура MOVEMENT_EXT_ID (63 байта, подтверждена реверсом):

```
[0:4]   int32 BE    tick
[4:6]   uint16      state_flags
[6]     uint8       null_flag angular_vel  (0x00 = has data)
[7:19]  3×float32   angular_vel (rx, ry, rz)
[19]    uint8       key_state   (битовая маска нажатых клавиш)
[20]    uint8       null_flag linear_vel   (0x00 = has data)
[21:33] 3×float32   linear_vel (vx, vy, vz)
[33]    uint8       null_flag rotation_euler (0x00 = has data)
[34:46] 3×float32   rotation_euler (rx, ry, rz)
           └─ [42:46] rz = YAW корпуса танка (поворот вокруг вертикальной Z оси)
[46]    uint8       null_flag position (0x00 = has data)
[47:59] 3×float32   position (x, y, z) — МИРОВЫЕ КООРДИНАТЫ
[59:63] float32     turret_angle — угол башни ОТНОСИТЕЛЬНО корпуса (radian)
```

**КРИТИЧЕСКИ ВАЖНО для анализа башни и движения:**
- `turret_angle` в [59:63] — это угол **ОТНОСИТЕЛЬНО корпуса танка** (не абсолютный мировой угол)
- Поворот корпуса = rz из rotation_euler (байты [42:46])
- Абсолютный мировой угол башни = `turret_angle + body_rot_z`
- Для вычисления нужного угла к цели: `aim_relative = atan2(dy, dx) - body_rot_z`

### Структура FIRE_ID (11 байт, подтверждена реверсом):

```
[0:4]  int32 BE    tick
[4:8]  float32 BE  turret_angle — текущий угол башни (ОТНОСИТЕЛЬНО корпуса, radians)
[8]    uint8       flags
[9:11] 2 байта     tail (константа)
```

Поле [4:8] полезно для диагностики исходящего угла башни. Текущая рабочая версия proxy не подменяет это значение на лету.

### S→C пакеты позиций врагов

| Packet ID | Описание | Содержимое |
|---|---|---|
| `1927704181` (ENEMY_STATE_ID) | Угол башни врага | StringCodec(tank_id) + float32(turret_rad) + uint8(flags) |
| `1516578027` (ENEMY_MOVE_ID) | Полная позиция врага | StringCodec(tank_id) + зеркало MOVEMENT_EXT без [0:6] |

**ENEMY_MOVE_ID структура payload (подтверждена из лога):**
```
StringCodec header: [0]=0x00, [1:5]=int32 N, [5:5+N]=tank_id UTF-8
off = 5 + N
[off]       null_flag angular_vel
[off+1:13]  Vec3 angular_vel
[off+13]    key_state
[off+14]    null_flag linear_vel
[off+15:27] Vec3 linear_vel
[off+27]    null_flag rotation_euler
[off+28:40] Vec3 rotation_euler
[off+40]    null_flag position     (0x00 = есть данные)
[off+41:53] Vec3 position xyz      ← РЕАЛЬНЫЕ МИРОВЫЕ КООРДИНАТЫ
[off+53:57] float32 turret_angle
Total = 5 + N + 57 байт
```

**Подтверждено live данными:** враг "klass" на позиции `[3072, 272, 329]` (z=329 = на пандусе).

### Enemy tracking: текущее состояние

**Файл:** `scripts/proxy/enemy_tracker.py`

**Что осталось в рабочей конфигурации:**
- `EnemyTracker.ingest_move()` — парсит `ENEMY_MOVE_ID`, хранит последние координаты врагов
- `EnemyTracker.ingest()` — парсит `ENEMY_STATE_ID`, хранит угол башни врага
- `find_nearest(my_pos)` — используется для телеметрии и fire-логов
- status endpoint / overlay показывают `enemy_tracking_active` и `enemy_targets`
- текущие лог-события: `enemy_update`, `enemy_turret`, `fire`, `movement`

**Что удалено из runtime:**
- отдельный runtime-модуль автонаводки
- специальные CLI-флаги автонаводки
- подмена угла в `FIRE_ID` / `MOVEMENT_EXT_ID`
- старое лог-событие вычисленного наведения

### Z-state и коррекция (verified 2026-04-05)

**Подтверждено по коду и пакетам:**
- Танковое состояние в бою передаётся как полный 3D state: position, orientation, linear velocity и angular velocity включают компоненту `Z`.
- S→C пакет `-64696933`: `String(tank_id) + Codect348a32(state)`, где `Codect348a32` = 4 nullable `Vector3` + 1 byte control field → применяется к position/orientation/linear_vel/angular_vel конкретного танка.
- Перед применением incoming state клиент смешивает текущее и входящее состояние с коэффициентом `0.5` (код подтверждён). Это источник визуальных рывков у чужих танков.
- Локальный post-physics watchdog форсит resync при: XY drift > ~500, Z drift > 200, timeout ~2 s, смена contact/movement state.
- `StateCorrectionEvent` в клиентском коде — локальный trigger на отправку/refresh полного состояния, а НЕ серверный correction packet.

### Анализ лога после сессии

```powershell
$f = (Get-ChildItem "C:\Users\Oleh\Documents\ProTanki-security\artifacts\traffic\*.jsonl" | Sort-Object LastWriteTime | Select-Object -Last 1).FullName
Get-Content $f | ForEach-Object { try { $_ | ConvertFrom-Json } catch {} } |
  Where-Object { $_.event -in "fire","enemy_update","enemy_turret","movement" } |
  Select-Object -Last 30 | ConvertTo-Json -Depth 4
```

Ключевые поля для диагностики:
- `fire.sent_angle_deg` — угол, который реально ушёл на сервер
- `fire.body_rot_deg` — поворот корпуса в момент выстрела
- `fire.nearest_enemy` / `fire.nearest_pos` — ближайшая отслеживаемая цель в момент выстрела
- `enemy_update.x` / `enemy_update.y` / `enemy_update.z` — последняя известная позиция врага
- `enemy_update.dist` — расстояние до врага в XY-плоскости
- `enemy_turret.turret_deg` — последний известный угол башни врага
11. **Сервер молча отклоняет pickup_request** если игрок далеко от бонуса (никакого ответа). Единственное решение — retry loop каждые ~500 мс пока бонус в `_active`.
12. **`crystal_update` (`-593513288`) = реальное подтверждение** нашего pickup. `pickup_confirmed` (`-1291499147`) — broadcast всего боя, не подходит как индикатор успеха.
13. **`_srv_lock` обязан охватывать И `encrypt_cs()` И `sendall()`** в одном блоке — иначе race condition между потоками ломает XOR state cipher.
14. **spawn 4-е поле = `lifetime_ms`**, не `delay`. Inject pickup делается немедленно при обнаружении spawn, без ожидания.
15. **Python ejecutable в setup_mitm.ps1**: `C:\WINDOWS\py.exe` (hardcoded) — `Start-Process` не наследует PATH.
16. **cp1252 ошибки в Python при логировании**: добавить `sys.stdout.reconfigure(encoding="utf-8")` в начало скрипта при stdout-логировании в Windows.
17. **Авто-pickup подтверждён для типов:** crystal, armorup, damageup, medkit. Для всех типов механика одинакова — один и тот же `PICKUP_REQ_ID = -1047185003` с bonusId из spawn-пакета. Для bonusId вида `crystal#NNN` confirm виден через `crystal_update`; для остальных (armorup/damageup/medkit) — через `pickup_confirmed` (broadcast, но в бою с одним игроком это достаточно).
