# Sky Remnants / 天穹残岛

Minecraft Java Edition 1.21.1 + NeoForge 21.1.244 mod project.

## Authoritative baseline

**M22 final verified — accepted 2026-08-09.**

Authoritative accepted source archive:

- `skyremnants-m22-final-verified-full-project-20260809.zip`
- SHA-256 `09a957807867b201c52bd07453a3969d1aa2d4059f714c91a5ba0e95a0592cf8`
- final JAR SHA-256 `c9ae2667fa710d0b9ad5a60a7b358db9d5078d32b63285f86d61474585bf52c0`

M22 adds no gameplay. It isolates development-only GameTest Java/data from the production JAR while preserving the full development GameTest suite.

Accepted evidence:

- JUnit 66/66, 23 suites;
- `clean build` passed;
- release JAR: 365 entries, zero TestControl/GameTest forbidden entries;
- GameTest 65/65 in 1.798 s;
- dedicated server passed;
- real Xvfb + llvmpipe client reached TitleScreen and exited cleanly;
- user installed and validated M22 successfully on 2026-08-09.

## Cross-conversation entry

Read:

1. `docs/DESIGN_BASELINE.md`
2. `docs/PROJECT_STATUS.md`
3. `docs/NEXT_WORK.md`
4. `docs/KNOWN_ISSUES.md`
5. `docs/M22_ACCEPTANCE_RESULT_2026-08-09.md`
6. `docs/M22_FINALIZATION_20260809.md`

`main` is the latest user-accepted milestone status. The complete accepted source ZIP remains the authoritative source snapshot until the initial full binary-safe source import is completed.
