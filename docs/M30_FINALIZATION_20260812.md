# M30 Finalization — 2026-08-12

## Final status

**M30 — Crimson/Warped ecology + Nether Wart automation + Ember Ruin Blaze challenge** is **accepted and closed**.

Previous accepted baseline:

- M29 — Otherworld Fragment foundation + Quartz Mineral Sample cultivation.

New accepted baseline:

- M30 — Crimson/Warped ecology + Nether Wart automation + Ember Ruin Blaze challenge.

## Runtime freeze

M30 finalization is documentation/status-only. Java code, resources, registries, world-generation behavior and production runtime JAR are byte-for-byte unchanged from the user-tested M30 candidate.

Accepted runtime JAR:

- size: **558,511 bytes**;
- SHA-256: `18b8310bd41330a30521482b6ad7b4748994e6b1fd7963c4db6a5b5f2ccc19df`.

No new runtime test claim is made after acceptance.

## Frozen M30 scope

- derived Crimson ecology fragments;
- derived Warped ecology fragments;
- controlled Nether Wart source;
- Auto Worker `NETHER_WART` append-only mode at ordinal 7;
- Ember Ruin challenge profile reusing the existing Wind Eye pedestal/state machine;
- Blaze/Magma Cube encounter waves and Blaze-oriented rewards;
- scan presentation for Crimson/Warped/Ember content.

Explicitly not included:

- M31 airship retrofit;
- dockyard progression;
- blockade challenge;
- new ship-slot migration;
- routine autopilot;
- Blaze ordinary reusable sample/inducer automation.

## Compatibility freeze

- `SkyWorldData` remains v11;
- no M30 migration step;
- M28 Mist Marsh and M29 Otherworld selections are preserved;
- accepted island geometry identity remains unchanged;
- old generated chunks are not overwritten;
- old Auto Worker ordinals remain stable;
- airship/network/supply contracts remain unchanged.

## Next milestone

**M31 — expedition airship retrofit, dockyard and blockade challenge.**

M31 must start from this M30 final accepted source. Any persistent ship-slot, Data Component, entity-NBT or payload change must be explicit, migration-aware and tested before acceptance.
