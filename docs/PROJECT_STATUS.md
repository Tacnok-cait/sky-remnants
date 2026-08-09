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

## M22 accepted scope

- no gameplay additions;
- production `main` excludes `SkyRemnantsGameTests`, `VoidRescueGameTests` and both GameTest empty NBT templates;
- development-only `gameTestSupport` owns those legacy-path files;
- NeoForge development runs still include the full GameTest support;
- `verifyReleaseJarContents` rejects TestControl and GameTest leakage.

Automated evidence:

- JUnit 66/66, 23 suites;
- `clean build` passed;
- release JAR 483,264 bytes / 365 entries / zero TestControl or GameTest forbidden entries;
- GameTest 65/65 in 1.798 s;
- dedicated server reached `Done (0.321s)!` and stopped/saved normally;
- real Linux Xvfb client reached TitleScreen and exited cleanly.

User-local installation and validation passed on 2026-08-09. See `M22_ACCEPTANCE_RESULT_2026-08-09.md` and `M22_FINALIZATION_20260809.md`.

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

M23 — first-release presentation and RC closure. Do not expand into long-term 6–15h or 15h+ systems before the first-release RC.
