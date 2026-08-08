# Sky Remnants — M20 Release-Hardening Final Verified

M20 branches exclusively from the final accepted M19 verified baseline. User-local Windows validation passed on 2026-08-08, so M20 is now formally accepted and closed.


## Cross-conversation project entry

For a new development conversation, read these files first:

1. `docs/DESIGN_BASELINE.md` — fixed design/technical boundaries.
2. `docs/PROJECT_STATUS.md` — accepted milestone history and authoritative baselines.
3. `docs/GAMEPLAY_PROGRESS_AUDIT.md` — original flow design compared with the accepted implementation.
4. `docs/NEXT_WORK.md` — current next milestone and explicit scope.
5. `docs/KNOWN_ISSUES.md` — accepted observations and known release debt.

`main` is intended to remain the latest user-accepted baseline. New milestone work should use a branch/PR and only merge after local acceptance.

## Pinned toolchain

- Minecraft Java Edition 1.21.1
- NeoForge 21.1.244
- ModDevGradle 2.0.143
- Gradle 9.2.1
- Java 21
- Mod ID `skyremnants`

## M20 scope

M20 adds no gameplay. It closes the explicit pre-1.0 release-engineering debt recorded since M11:

- `TestControlServer` is excluded from the production `main` source set;
- a dedicated `testControl` source set keeps real-client and multiplayer automation available in development runs;
- `SkyRemnants` production entry point no longer references the test controller;
- `verifyReleaseJarContents` makes `build` fail if test-control classes leak into the production JAR;
- the existing M16 furnace telemetry GameTest now waits within a bounded timeout instead of asserting at one fixed tick, removing a reproduced timing flake without changing furnace gameplay.

The legacy `TestControlServer.java` filesystem location is intentionally retained so the M20 incremental ZIP can overlay M19 without deleting local files. Gradle source-set ownership, not its path, determines that it is development-only.

## Compatibility contract

Unchanged from accepted M19:

- airship real container: 91 slots;
- real airship slots: 0–90;
- player inventory menu slots: 91–126;
- supply ghost slots: 127–130;
- optional `supply_manifest` NBT unchanged;
- registry IDs unchanged;
- `SkyWorldData` remains version 9;
- no save migration.

The M19 multiplayer supply-menu snapshot observation is unchanged.

## Automated validation

Actually run in the current Linux environment:

- unit tests: 61/61, 21 suites, 0 failures/errors/skips;
- final `clean build`: passed;
- production JAR test-control leak check: passed, zero forbidden entries;
- final GameTest: 65/65 in 1.977 s, Gradle exit 0; additional post-hardening runs also passed 65/65;
- dedicated server: reached Done, graceful stop, all dimensions saved, Gradle exit 0;
- real headless client: development TestControlServer ready, real Minecraft/NeoForge TitleScreen, screenshot, llvmpipe OpenGL 4.5, resource/error/crash checks and graceful exit all passed.

## Windows PowerShell validation

```powershell
$env:GRADLE_USER_HOME = "D:\workbuddy\.gradle-user-home-skyremnants"

.\gradlew.bat --no-daemon test --console=plain
.\gradlew.bat --no-daemon clean build --console=plain
.\gradlew.bat --no-daemon runGameTestServer --console=plain
.\gradlew.bat --no-daemon verifyReleaseJarContents --console=plain
.\gradlew.bat --no-daemon runClient
```

User-local Windows acceptance passed on 2026-08-08. See `docs/M20_ACCEPTANCE_CHECKLIST.md` and `docs/M20_FINALIZATION_20260808.md` for the final acceptance record.
