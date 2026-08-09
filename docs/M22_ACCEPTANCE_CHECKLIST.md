# M22 Acceptance Checklist

Status: **user-local acceptance passed on 2026-08-09; M22 accepted and closed.**

M22 does not require replaying the M21 progression. Focus on build/package boundaries.

## A. Build

- [x] `test` passes: expected 66/66.
- [x] `clean build` passes.
- [x] `runGameTestServer` passes: expected 65/65.
- [x] `verifyReleaseJarContents` passes.

## B. Production JAR boundary

Run:

```powershell
jar tf .\build\libs\skyremnants-0.22.0-m22.jar |
    Select-String -Pattern "TestControlServer|testcontrol|SkyRemnantsGameTests|VoidRescueGameTests|gametests.empty.nbt"
```

- [x] Command prints no matching entry.
- [x] Production JAR starts normally in Minecraft 1.21.1 + NeoForge 21.1.244.

## C. Development testing still works

- [x] `runGameTestServer` still reports 65/65.
- [x] Normal `runClient` reaches the main menu.
- [x] Existing headless/client acceptance tooling remains available when explicitly enabled.

## D. Save/gameplay regression

- [x] Existing M21 verified save loads normally.
- [x] No migration prompt or lost M21 data.
- [x] Airship cargo/modules/logistics/supply manifest remain unchanged.

## Known non-blocker

The M19 multiplayer supply-menu snapshot observation is unchanged and is not an M22 blocker.
