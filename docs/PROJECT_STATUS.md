# Sky Remnants Project Status

## Authoritative baseline

**M21 — First-release design reconciliation**

Status: **accepted and closed on 2026-08-09**.

Authoritative source archive:

- `skyremnants-m21-final-verified-full-project-20260809.zip`
- SHA-256 `762e95a413ea030758f396980ed3f3178250ea38d61959a05789417ffa99e9c5`

The user-uploaded `skyremnants-m21-verified-full-project-20260809.zip` is the authoritative gameplay source used for M21 acceptance. Final archival restored older M19/M20 status documentation only; gameplay source was not reverted.

The accepted user source also adds `notCompatibleWithConfigurationCache('reads the release JAR directly')` to `verifyReleaseJarContents`; this build-hardening correction is retained.

## Milestone summary

- M0 engineering skeleton — accepted.
- M1 world preset / starting cluster — accepted.
- M2 void rescue / Island Core — accepted.
- M3 opening resource loop — accepted.
- M4 minimal item pipes — accepted.
- M5 wet geology / mineral cultivation — accepted.
- M6 agriculture / animals — accepted.
- M7 smart assembly / hostile resources — accepted.
- M8 basic airship — accepted.
- M9 external islands / midgame loop — accepted.
- M10 chunk loading / first stabilization — accepted.
- M11–M19 vertical polish: logistics, guidance/UI, airship modules, return/docking, cargo console, navigation HUD, scan panel, supply manifest — accepted.
- M20 release hardening / TestControl isolation — accepted 2026-08-08.
- M21 first-release design reconciliation / deadlock recovery — accepted 2026-08-09.

## M21 accepted changes

- High-cost emergency lava recovery recipe: 7 cobblestone + 1 redstone block + 1 empty bucket -> 1 lava bucket.
- Nearby external ecology island remains cow ×2 + pig ×2.
- Qualifying distant external ecology islands (`max(abs(x), abs(z)) >= 1000`) provide chicken ×2 + sheep ×2 once per island.
- Remaining paper-flow differences were explicitly adjudicated as accepted implementation evolution instead of mechanically reverted.

Compatibility remains unchanged:

- no registry ID changes;
- `SkyWorldData` version 9;
- no save migration;
- airship real slots 0–90;
- player menu slots 91–126;
- M19 supply ghost slots 127–130;
- `supply_manifest` unchanged.

## Current development

M22 — production GameTest isolation — automated candidate in progress/validation. M21 remains authoritative until user-local M22 acceptance.
