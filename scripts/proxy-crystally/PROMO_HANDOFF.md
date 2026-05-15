# Promo Codes: Packet + Server Handoff

Date: 2026-04-09  
Scope: what is currently known from client logs + existing docs + decompiled server artifacts.

## 1) Known packet IDs (client side)

From `docs/02_login_battle_economy_deep_dive.md`:

- `880756819` (C->S): `ShopModel.send(code, extra)`
- `-511004908` (C->S): `ShopModel` alternate promo/action

From `SERVER_MECHANICS.md`:

- Store transactions mention packets `880756819` and `-511004908`.

## 2) What we observed in proxy logs

Files analyzed:

- `scripts/proxy-crystally/logs/traffic_20260409_024824.jsonl`
- `scripts/proxy-crystally/logs/traffic_20260409_030137.jsonl`

Confirmed promo-like requests:

- C->S `pid=-511004908` appears in both sessions.
- Observed payload lengths: `25`, `55`, `6`, `55`.
- Example payload (full, not truncated):
  - `0000000014524546303544364e5648534636455a4245514c52`
  - ASCII view: `.....REF05D6NVHSF6EZBEQLR` (code-like token after binary prefix)
- Example long payloads are truncated in log hex preview (`...`) because proxy uses preview limit.

Immediate server response pattern:

- Right after each `pid=-511004908` request, server sends `pid=-1850050333` with empty payload (`payload_len=0`).
- This empty reply appears both for code-like and clearly random test strings, so by itself it does not distinguish success/failure.

Limitations of current logs:

- `proxy.py` does not map these PIDs to symbolic names (they are `name=unknown`).
- `cs_packet` hex preview is capped (long payloads are partially visible).
- No explicit promo success/fail semantic event is currently decoded in logger.

## 3) What we found on server side

From decompiled `StoreHandler` (`.tmp_review/StoreHandler.javap.txt`):

- Command handler exists: `CommandName.StoreTryBuyItem`.
- Method signature:
  - `storeTryBuyItem(UserSocket socket, String itemId, String paymentMethodId, Continuation ...)`
- Related command names/keys in `CommandName.javap.txt`:
  - `StoreTryBuyItem` -> key `shop_try_buy_item`
  - `StoreOpenUrl` -> key `open_shop_url`
  - `StorePaymentSuccess` -> key `payment_successful`
  - `OpenStore` / `ClientOpenStore` -> key `show_payment`
- `StoreHandler.storeTryBuyItem` sends `StorePaymentSuccess` command with 4 string args (built from selected store item + locale-dependent value).

Interpretation:

- Promo/payment flow is implemented in store command layer (not garage buy flow).
- The store handler is command-based and uses string args, consistent with observed promo-like payloads.

## 4) About promo generation/format in server data

Current status:

- We did NOT find explicit promo-code generator logic in the already extracted review artifacts.
- We did NOT find direct textual references like `promo`, `coupon`, `redeem` in server decompiled text artifacts we searched.
- We DO have command-level store flow (`shop_try_buy_item` / `payment_successful`) and transport-level PIDs from docs/logs.

Important caveat:

- Absence of explicit generator strings in current grep scope does not prove there is no generator.
- Generator/validation can be implemented indirectly (DB-backed table, service layer, obfuscated key names, or external integration).

## 5) Practical next steps for next agent

1. Map exact PID<->`CommandName` in server socket/command dispatch (resolve `-511004908` and `880756819` to concrete handler path).
2. Decode exact payload schema for `pid=-511004908` (field-by-field, including optional/nullable parts).
3. Trace validation source for `storeTryBuyItem`:
   - where `itemId` is resolved,
   - where `paymentMethodId` is validated,
   - where success/fail response is chosen.
4. Check persistent sources:
   - store registry data,
   - DB tables/entities for promo/payment items,
   - any admin/internal commands that create temporary codes.
5. Extend proxy logger:
   - add names for `-511004908` and `-1850050333`,
   - log full payload option for selected PIDs,
   - add decode helper for store command arguments.

## 6) Confidence summary

- High confidence: `-511004908` is actively used in client promo/payment action path.
- High confidence: server has `StoreTryBuyItem` + `StorePaymentSuccess` command flow.
- Medium confidence: observed empty response `-1850050333` is ack/transition packet (semantics not yet decoded).
- Low confidence: exact promo code format rules and generation source are not yet localized.
