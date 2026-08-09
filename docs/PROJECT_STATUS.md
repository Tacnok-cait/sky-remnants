# Sky Remnants Project Status

## Authoritative baseline

**M21 — First-release design reconciliation**

Status: **accepted and closed on 2026-08-09**.

Authoritative source archive:

- `skyremnants-m21-final-verified-full-project-20260809.zip`
- SHA-256 `762e95a413ea030758f396980ed3f3178250ea38d61959a05789417ffa99e9c5`

The user-uploaded `skyremnants-m21-verified-full-project-20260809.zip` is the authoritative gameplay source used for M21 acceptance. The accepted source also retains the Configuration Cache boundary correction on `verifyReleaseJarContents`.

## Milestone summary

- M0–M10 core vertical slice: accepted.
- M11–M19 logistics/guidance/airship polish: accepted.
- M20 TestControl production isolation: accepted 2026-08-08.
- M21 first-release design reconciliation/deadlock recovery: accepted 2026-08-09.

M21 compatibility:

- no registry ID changes;
- `SkyWorldData` version 9;
- no save migration;
- airship real slots 0–90;
- player menu slots 91–126;
- M19 supply ghost slots 127–130;
- `supply_manifest` unchanged.

## M22 — Production GameTest isolation

**Status: automated-validation candidate on 2026-08-09; user-local acceptance pending. M21 remains authoritative.**

Scope:

- no gameplay additions;
- production `main` excludes `SkyRemnantsGameTests`, `VoidRescueGameTests` and both GameTest empty NBT templates;
- new development-only `gameTestSupport` source set owns those legacy-path files;
- NeoForge development mod coordinates still include GameTest support;
- `verifyReleaseJarContents` rejects TestControl and GameTest leakage.

Compatibility:

- no registry, recipe, payload, NBT or save-format changes;
- `SkyWorldData` remains version 9;
- airship slots and M19 `supply_manifest` unchanged;
- no save migration.

Automated validation:

- JUnit: 66/66, 23 suites, zero failures/errors/skips;
- `clean build`: passed;
- release JAR: 483,264 bytes, 365 entries, zero TestControl/GameTest forbidden entries;
- GameTest: 65/65 in 1.798 s;
- dedicated server: reached `Done (0.321s)!`, graceful stop/save;
- real Linux headless client: TitleScreen, screenshot, llvmpipe OpenGL 4.5, zero unexpected errors/resource regressions/new crash reports, graceful exit 0.

M22 must not be merged to the accepted baseline until user-local Windows/JAR-boundary validation passes.
