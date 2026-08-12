# M31 Final Acceptance Result — 2026-08-12

## Decision

**M31 — Expedition Airship Retrofit, Dockyard and Blockade Challenge: ACCEPTED / CLOSED.**

The user explicitly reported that local M31 acceptance fully passed on 2026-08-12.

## Accepted feature set

- Expedition Retrofit Kit, obtainable both as Blockade first-clear reward and through ordinary crafting;
- Docking Base used as the server-authoritative retrofit/dockyard interaction;
- expedition-only fourth module slot at real slot 46;
- three-Storage-Module/storage-bank maximum preserved;
- 2200-block Long-range Scan only for expedition-retrofitted airships;
- Blockade Outpost with Pillager/Breeze/Vindicator waves, reusing the Wind Eye pedestal;
- `SkyWorldData` remains v11;
- airship entity NBT appends `expedition_retrofit`; missing old-save data defaults false.

## Accepted automated evidence retained from the candidate

- JUnit 121/121, 37 suites, 0 failures/errors/skips;
- clean build PASS;
- `verifyReleaseJarContents` PASS;
- GameTest 79/79 in 2.677 s;
- dedicated server reached `Done (0.373s)!`, then stopped/saved normally with exit 0;
- real Xvfb + Mesa llvmpipe client smoke PASS;
- unexpected client ERRORs 0;
- missing model/texture/resource regressions 0;
- new crash reports 0.

## User-local environment observation

The first headless attempt hung because a previous-version process remained running. After clearing the stale process, the unchanged M31 code passed. This is classified as **environment/process interference, non-blocking, not an M31 defect**.

## Finalization rule

No runtime or gameplay change is introduced after acceptance. M31 finalization only updates project status, acceptance records, next-work documentation and archive metadata. Therefore the accepted runtime JAR is the same byte content as the tested M31 candidate JAR.

## Next milestone

M32 — 6–15h integration closure — is now unlocked. M33+ remains locked until M32 acceptance.
