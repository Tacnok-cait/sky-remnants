# M23 Local Acceptance Checklist

Status: **automated validation passed; user-local Windows/visual acceptance pending.**

M23 is visual-only; a complete replay of the 0–6h progression is not required.

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

## Visual

- [ ] project mod icon displays;
- [ ] core resources/mineral samples/modules/tools use project icons instead of vanilla placeholders;
- [ ] important machines are distinguishable from normal horizontal eye level;
- [ ] pipe/logistics visuals fit the same material family;
- [ ] basic airship uses the custom hover-skiff model/texture, not an oak boat;
- [ ] reinforced airship shows extra armor geometry if convenient to test.

## Regression

- [ ] accepted M22 save loads without migration/data loss;
- [ ] existing airship cargo/modules/fuel/docking/logistics remain intact;
- [ ] supply ghost slots 127–130 and `supply_manifest` remain intact;
- [ ] existing machine GUI, airship console, navigation HUD and scan panel behavior remain unchanged.

Known non-blocker: the accepted M19 already-open second-client supply-menu snapshot behavior remains unchanged.