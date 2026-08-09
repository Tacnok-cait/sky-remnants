# Sky Remnants Project Status

## Authoritative baseline

**M23 — First-release visual identity Rev2**

Status: **accepted and closed on 2026-08-09**.

Authoritative accepted source archive:

- `skyremnants-m23-final-verified-full-project-20260809.zip`

## Milestone summary

- M0–M10 core vertical slice: accepted.
- M11–M19 logistics/guidance/airship polish: accepted.
- M20 TestControl production isolation: accepted 2026-08-08.
- M21 first-release design reconciliation/deadlock recovery: accepted 2026-08-09.
- M22 production GameTest isolation: accepted 2026-08-09.
- M23 first-release visual identity Rev2: accepted 2026-08-09.

## M23 accepted scope

- 32 project-owned 16×16 item textures;
- 34 project-owned 16×16 block textures;
- custom basic-airship model/renderer/64×64 texture;
- reinforced airship visual armor;
- 128×128 mod icon;
- important machines have distinct side-panel visuals;
- no gameplay/save/network/registry changes.

Validation evidence before acceptance:

- JUnit 71/71 in 24 suites;
- clean build passed;
- production JAR 522,223 bytes / 442 entries / zero TestControl or GameTest forbidden entries;
- GameTest 65/65 in 2.835 s;
- dedicated server reached `Done (0.483s)!`, stopped and saved normally;
- real Linux Xvfb client reached TitleScreen, passed resource/model/crash checks, and exited 0;
- user accepted the Rev2 visual direction on 2026-08-09.

No separate Windows build log was supplied for M23. M24 RC acceptance owns the final Windows, historical-save, multiplayer and official Jade/JEI sweep.

## Compatibility

- no registry ID changes;
- no recipe/gameplay changes;
- no network payload changes;
- `SkyWorldData` remains version 9;
- no save migration;
- airship real slots 0–90;
- player menu slots 91–126;
- M19 supply ghost slots 127–130;
- `supply_manifest` unchanged.

## Next development

M24 — first-release RC closure/audit. No long-term progression expansion before RC.
