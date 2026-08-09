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

## Current candidate — M23 Visual Identity Rev2

Status: **automated and Linux real-client validation passed; user-local Windows/visual acceptance pending.**

Rev2 supersedes the first M23 visual candidate.

Implemented:

- direct Minecraft 1.21.1 texture-dimension audit;
- 32 project-owned item textures redrawn at 16×16;
- 34 project-owned block textures redrawn at 16×16;
- custom basic-airship model/renderer/entity texture retained;
- reinforced visual armor retained;
- project mod icon;
- reproducible texture generator in the full source artifact;
- visual resource regression tests.

Validation:

- JUnit 71/71;
- clean build passed;
- release-JAR TestControl/GameTest forbidden entries 0;
- GameTest 65/65 in 2.835 s;
- dedicated server reached Done (0.483s), saved and stopped normally;
- real Xvfb client reached TitleScreen, screenshot, graceful quit, exit 0;
- resource/model/crash checks passed.

Rev2 artifacts:

- full project SHA-256 `da3b839285af45a47c06388d27f4146ad636a79f90ff1111ee74b69114eecd85`;
- M22→M23 Rev2 incremental SHA-256 `ca5c912ebe1640863751f99a50b36cdfaf02c420b8168031ce6d397ee26509a8`;
- candidate JAR SHA-256 `8833132d0947e5e2601d9c4b29d32cff0489742dd82957bb3ac9c9c58f46b5e6`.

Compatibility remains identical to M22 gameplay/save/network semantics:

- no registry ID changes;
- no recipe changes;
- no payload changes;
- `SkyWorldData` version 9;
- no save migration;
- airship real slots 0–90;
- player slots 91–126;
- supply ghost slots 127–130;
- `supply_manifest` unchanged.

## Next

After M23 user acceptance: M24 first-release Release Candidate closure/audit. No 6–15h or 15h+ gameplay expansion before RC.
