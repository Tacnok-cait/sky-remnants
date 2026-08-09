# Sky Remnants / 天穹残岛

Minecraft Java Edition 1.21.1 + NeoForge 21.1.244 mod project.

## Authoritative baseline

**M21 final verified — accepted 2026-08-09.**

Authoritative accepted source archive:

- `skyremnants-m21-final-verified-full-project-20260809.zip`
- SHA-256 `762e95a413ea030758f396980ed3f3178250ea38d61959a05789417ffa99e9c5`

## Current branch candidate

**M22 — production GameTest isolation. Automated validation passed; user-local acceptance pending.**

M22 adds no gameplay. It removes development-only GameTest Java/classes and the two GameTest structure templates from the production JAR while keeping them available through a `gameTestSupport` development source set.

Automated results:

- JUnit 66/66, 23 suites;
- `clean build` passed;
- release JAR: 365 entries, zero TestControl/GameTest forbidden entries;
- GameTest 65/65 in 1.798 s;
- dedicated server passed;
- real Xvfb + llvmpipe client reached TitleScreen, resource/error/crash checks passed, graceful exit 0.

M22 candidate artifacts:

- full project SHA-256 `da9004d6a8353db6b45b7e4abd8cf45a9cbf2fbbe9654ebd090f0fe839d8334b`;
- M21→M22 incremental SHA-256 `0151aa9b77921f8e9f4e37f8915fb5bf02dad5ad0616ec9fece90bfe5d301349`;
- candidate JAR SHA-256 `c9ae2667fa710d0b9ad5a60a7b358db9d5078d32b63285f86d61474585bf52c0`.

## Cross-conversation entry

Read:

1. `docs/DESIGN_BASELINE.md`
2. `docs/PROJECT_STATUS.md`
3. `docs/NEXT_WORK.md`
4. `docs/KNOWN_ISSUES.md`
5. `docs/M21_ACCEPTANCE_RESULT_2026-08-09.md`
6. `docs/M22_AUTOMATED_VALIDATION_20260809.md`

`main` remains the latest user-accepted status. This branch records the M22 candidate until local acceptance.
