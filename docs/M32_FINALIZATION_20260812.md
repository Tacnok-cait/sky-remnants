# M32 Finalization — 2026-08-12

M32 was finalized after explicit user-local acceptance on 2026-08-12.

## Finalization boundary

This is **documentation/status-only**. It changes no Java, runtime resources, registry IDs, world-generation logic, recipes, machine/challenge/airship behavior, payloads or persistence layout.

The accepted runtime change remains exactly the candidate change: scanner feedback correctly represents Basic 600, Long-range 1600 and Expedition Long-range 2200 scan roles instead of hard-coding 600 blocks.

## Accepted runtime identities

Reference/Linux validated candidate JAR:

- size: 563,987 bytes;
- entries: 469;
- SHA-256: `120b9ab4d1138f997883e1c7cbdb326aab46cb88a8f03a4a254b2c586bd8ef3f`.

User-local Windows accepted build JAR:

- SHA-256: `a5f88bbfaf498820764e50f0088deb9d2b9f42a4ed5a22c9d8945c6183253760`.

Independent platform builds are not required to be byte-identical. The final accepted source ZIP is authoritative.

## Compatibility summary

- `SkyWorldData`: v11;
- payload protocol: 1;
- airship container: 91;
- module slots: 28/29/36/46;
- logistics: 90;
- `supply_manifest`: unchanged;
- no M32 migration;
- accepted island derivation ordering unchanged;
- generated terrain never rewritten.

## Next gate

M33 planning is unlocked. M33 implementation waits for a frozen dangerous-outer-ring plan.
