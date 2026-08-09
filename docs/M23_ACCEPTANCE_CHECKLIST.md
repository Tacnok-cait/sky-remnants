# M23 Rev2 Local Acceptance Checklist

Status: **Rev2 automated/Linux real-client validation passed; user-local Windows/visual acceptance pending.**

M23 Rev2 is visual-only; a complete replay of the 0–6h progression is not required.

## Build

```powershell
$env:GRADLE_USER_HOME = "D:\workbuddy\.gradle-user-home-skyremnants"
.\gradlew.bat --no-daemon test --console=plain
.\gradlew.bat --no-daemon clean build --console=plain
.\gradlew.bat --no-daemon runGameTestServer --console=plain
.\gradlew.bat --no-daemon verifyReleaseJarContents --console=plain
.\gradlew.bat --no-daemon runClient
```

Expected: JUnit 71/71, GameTest 65/65, clean build/release-JAR verification pass, no missing model/texture/crash.

## Rev2 visual review

- [ ] core fragments/resources look like pixel-art objects rather than flat UI symbols;
- [ ] iron/copper/gold/lapis samples share a family but remain easy to distinguish;
- [ ] airship modules share a mechanical-cartridge family while retaining distinct symbols/accent colors;
- [ ] wrench/cage/airship components no longer resemble vanilla placeholders;
- [ ] machine surfaces show seams/rivets/wear/recessed functional panels;
- [ ] important machines remain distinct at normal horizontal eye level;
- [ ] pipe/logistics visuals fit the same old-machine material family;
- [ ] basic airship still uses the custom hover-skiff model/texture, not an oak boat;
- [ ] project mod icon displays.

## Regression

- [ ] accepted M22 save loads without migration/data loss;
- [ ] existing airship cargo/modules/fuel/docking/logistics remain intact;
- [ ] supply ghost slots 127–130 and `supply_manifest` remain intact;
- [ ] existing machine GUI, airship console, navigation HUD and scan panel behavior remain unchanged.

Known non-blocker: the accepted M19 already-open second-client supply-menu snapshot behavior remains unchanged.
