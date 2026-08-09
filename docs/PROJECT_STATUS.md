# Sky Remnants Project Status

## Authoritative baseline

**M22 — Production GameTest isolation**

Status: **accepted and closed on 2026-08-09**.

Authoritative source archive:

- `skyremnants-m22-final-verified-full-project-20260809.zip`
- SHA-256 `09a957807867b201c52bd07453a3969d1aa2d4059f714c91a5ba0e95a0592cf8`
- final JAR SHA-256 `c9ae2667fa710d0b9ad5a60a7b358db9d5078d32b63285f86d61474585bf52c0`

## Milestone summary

- M0–M10 core vertical slice: accepted.
- M11–M19 logistics/guidance/airship polish: accepted.
- M20 TestControl production isolation: accepted 2026-08-08.
- M21 first-release design reconciliation/deadlock recovery: accepted 2026-08-09.
- M22 production GameTest isolation: accepted 2026-08-09.

## M23 — First-release visual identity

**Status: automated/real-client candidate validation passed on 2026-08-09; user-local Windows/visual acceptance pending. M22 remains authoritative.**

Scope:

- no gameplay additions;
- 32 project-owned 16×16 standalone item textures;
- 34 project-owned 16×16 block textures;
- custom 64×64 basic-airship entity texture;
- custom `BasicAirshipModel` / `BasicAirshipRenderer`, replacing the vanilla boat visual placeholder without changing airship physics or persistence;
- reinforced state shows additional armor geometry;
- 128×128 project mod icon;
- existing GUI/HUD behavior retained;
- important machines receive distinct eye-level side-panel visuals.

Compatibility:

- no registry, recipe, payload, NBT or save-format changes;
- `SkyWorldData` remains version 9;
- no save migration;
- airship real slots 0–90;
- player menu slots 91–126;
- M19 supply ghost slots 127–130;
- `supply_manifest` unchanged.

Validation:

- JUnit 71/71 in 24 suites;
- final `clean build` passed;
- production JAR 517,008 bytes / 441 entries / zero TestControl/GameTest forbidden entries;
- GameTest 65/65 in 3.360 s with normal exit;
- dedicated server reached Done and saved/stopped normally;
- real Xvfb client passed resource/model/crash checks and exited cleanly;
- real client + test server visual pass confirmed custom item icons, distinct machine side panels and custom airship rendering.

Candidate artifacts:

- full project SHA-256 `fcee74d5adbfa0e44eace5e39215002fc79046783434813ccb215eb827442d69`;
- M22→M23 incremental SHA-256 `365c8007bfd4b4f3bdbd4f2f76410e3ff50605312964b1ea3cb2dcf4ba4706c2`;
- candidate JAR SHA-256 `396029baa6ff94a745de1853ad9425f391404ff61175068a5b2a7127c3c9830c`.

After M23 user acceptance, M24 is the first-release RC closure/audit milestone. Long-term 6–15h and 15h+ content remains out of scope before RC.