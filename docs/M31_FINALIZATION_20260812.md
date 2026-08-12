# M31 Finalization — 2026-08-12

M31 was finalized after explicit user-local acceptance on 2026-08-12.

## What finalization changes

Finalization is **documentation/status-only**. It updates:

- project accepted baseline from M30 to M31;
- M31 acceptance documentation;
- next-work gate from M31 acceptance to M32 integration closure;
- final archive/checksum identity.

It does **not** alter Java code, resources, registry IDs, world generation logic, machine/airship behavior, recipes, network payloads or persistence layout.

## Accepted runtime identity

The final accepted runtime JAR is copied byte-for-byte from the user-accepted M31 candidate JAR. No post-acceptance build/test rerun is claimed because no runtime content changed.

## Compatibility summary

- `SkyWorldData`: v11;
- payload protocol: 1;
- airship real container: 91 slots;
- module A/B/C: 28/29/36;
- expedition module D: 46;
- logistics slot: 90;
- `supply_manifest`: unchanged;
- new airship NBT: `expedition_retrofit` boolean, absent old data = false;
- existing M30 Ember selection preserved before M31 Blockade derivation;
- existing generated terrain never rewritten.

## Next gate

M32 is unlocked. M32 should close the complete M26→M31 6–15h loop rather than add M33+ frontier content.
