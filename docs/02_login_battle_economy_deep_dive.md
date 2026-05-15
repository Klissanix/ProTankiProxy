# ProTanki Deep Dive: Login, Battle, Economy

Date: 2026-04-04
Confidence: confirmed in decompiled client code

## Login packets
- Login by username/password/rememberMe:
  - packet id: -739684591
  - fields: String username, String password, Boolean rememberMe
- Login by remembered hash:
  - packet id: -845588810
  - fields: String hash

## Remembered hash storage
- Server packet id 932564569 carries hash string.
- Client stores transformed value in SharedObject.data.userHash.
- Transform: XOR stream based on Capabilities.language + cpuAddressSize + version, then escape().
- Readback path performs unescape() and reverse XOR transform.
- userHash is cleared on login-by-hash failure and several block/lobby code paths.

## Framing/compression stage
- Header: int32 headerWord + int32 packetId.
- Compressed payload flag: 0x40 in high byte of headerWord.
- Total frame length in low 24 bits.
- Compressed payload decoded with deflate.

## Key/transform handshake
- Packet id 2001736388 carries Vector<int> key material.
- Registry switches to stateful XOR transform class.
- Locale packet id -1864333717 is sent after key setup.

## Economy packets
- GarageModelServer:
  - kitBought(name, count) -> -523392052
  - itemMounted(name) -> -1505530736
  - itemBought(name, modification, count) -> -1961983005
- ShopModel:
  - send(code, extra) -> 880756819
  - alternate promo/action -> -511004908

## Battle packets
- BattleSelectModelServer.select(battleId) -> 2092412133
- BattleInfoModelServer.joinAsSpectator() -> -1315002220
- BattleCreateModelServer.createBattle(paramsObject) -> -2135234426
- BattleCreateModelServer.checkBattleNameForForbiddenWords(name) -> 566652736
- Team battle join/fight -> -1284211503
- BattlefieldModel bonus pickup request path -> -1047185003 (String field)

## Local SharedObject keys observed
- userHash
- userName
- alreadyPlayedTanks
- SelectedMap
- screenSize
- lobbyChatLastMessageKey
- LAST_SHOWED_GARAGE_CATEGORY
- SHOW_ALERT_ABOUT_INACCESSIBLE_IN_STANDALONE
