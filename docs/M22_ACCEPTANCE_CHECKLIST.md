# M22 Acceptance Checklist

Status: **automated validation passed; user-local acceptance pending.**

M22 does not require replaying the M21 progression. Focus on build/package boundaries.

## A. Build

- [ ] `test` passes: expected 66/66.
- [ ] `clean build` passes.
- [ ] `runGameTestServer` passes: expected 65/65.
- [ ] `verifyReleaseJarContents` passes.

## B. Production JAR boundary

Run:

```powershell
jar tf .\build\libs\skyremnants-0.22.0-m22.jar |
    Select-String -Pattern "TestControlServer|testcontrol|SkyRemnantsGameTests|VoidRescueGameTests|gametests.empty.nbt"
```

- [ ] Command prints no matching entry.
- [ ] Production JAR starts normally in Minecraft 1.21.1 + NeoForge 21.1.244.

## C. Development testing still works

- [ ] `runGameTestServer` still reports 65/65.
- [ ] Normal `runClient` reaches the main menu.
- [ ] Existing headless/client acceptance tooling remains available when explicitly enabled.

## D. Save/gameplay regression

- [ ] Existing M21 verified save loads normally.
- [ ] No migration prompt or lost M21 data.
- [ ] Airship cargo/modules/logistics/supply manifest remain unchanged.

## Known non-blocker

The M19 multiplayer supply-menu snapshot observation is unchanged and is not an M22 blocker.
