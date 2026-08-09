# M22 Automated Validation — 2026-08-09

## Environment

- Minecraft 1.21.1
- NeoForge 21.1.244
- Java 21
- Gradle 9.2.1
- Linux Xvfb + Mesa llvmpipe
- Offline dependency validation using the previously supplied Gradle cache, Linux LWJGL natives and BinaryPatcher 2.1.2
- Temporary offline repositories/init scripts were outside the project and are not packaged

## JUnit

- 23 suites
- 66 tests
- 0 failures
- 0 errors
- 0 skipped

The two M22 tests confirm that the development test runtime still loads both GameTest classes and both GameTest structure resources.

## Clean build / release JAR

`clean build` passed.

Release JAR:

- `skyremnants-0.22.0-m22.jar`
- 483,264 bytes
- 365 ZIP entries
- SHA-256 `c9ae2667fa710d0b9ad5a60a7b358db9d5078d32b63285f86d61474585bf52c0`

Forbidden release entries: **0**.

Checked categories:

- TestControl package/class;
- `SkyRemnantsGameTests`;
- `VoidRescueGameTests`;
- both GameTest `*.empty.nbt` templates.

For comparison, the M21 automated-validated production JAR contained 371 entries and six GameTest-related entries.

## GameTest

`runGameTestServer` passed:

- 65/65 required tests;
- 1.798 s;
- Gradle build successful.

NeoForge development coordinates explicitly included `main`, `testControl`, and `gameTestSupport`.

## Dedicated server

Passed:

- Sky Remnants initialized;
- server reached `Done (0.321s)!`;
- normal `stop`;
- overworld/nether/end saved;
- Gradle build successful.

## Real headless client

Passed:

- TestControl ready;
- real Minecraft/NeoForge TitleScreen;
- screenshot captured;
- graceful stop;
- client exit code 0;
- llvmpipe OpenGL 4.5;
- unexpected errors 0;
- resource/model log check passed;
- new crash report check passed.

## Scope limitation

This pass verifies packaging and development-runtime isolation. User-local Windows acceptance remains the final M22 acceptance gate. No gameplay/save migration was introduced by M22.
