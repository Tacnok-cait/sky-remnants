# M22 Implementation Notes

## Goal

Remove development-only GameTest classes and structure templates from the production mod JAR without losing the existing automated GameTest suite.

## Source-set ownership

Legacy files remain physically at their M21 paths so the incremental package stays deletion-free:

- `src/main/java/com/skyremnants/gametest/SkyRemnantsGameTests.java`
- `src/main/java/com/skyremnants/world/rescue/VoidRescueGameTests.java`
- `src/main/resources/data/skyremnants/structure/skyremnantsgametests.empty.nbt`
- `src/main/resources/data/skyremnants/structure/voidrescuegametests.empty.nbt`

M22 changes Gradle ownership:

- production `main` excludes the two Java files and two NBT templates;
- new `gameTestSupport` includes exactly those legacy-path files;
- `gameTestSupport` compiles against `main.output`;
- NeoForge development mod coordinates include `main`, `testControl`, and `gameTestSupport`.

This mirrors M20's deletion-free TestControl isolation pattern.

## Resource verification

`verifyGameTestResources` validates both templates and is attached to `processGameTestSupportResources` and `runGameTestServer`, rather than production `processResources`.

## Release verification

`verifyReleaseJarContents` now rejects:

- `com/skyremnants/testcontrol/**`;
- `com/skyremnants/client/TestControlServer.class`;
- `com/skyremnants/gametest/**`;
- `com/skyremnants/world/rescue/VoidRescueGameTests*`;
- both GameTest `*.empty.nbt` templates.

`check` still depends on the release-JAR verifier.

## Compatibility

M22 changes no runtime gameplay code, registry IDs, networking, recipes, NBT, SavedData schema or airship menu indices.
