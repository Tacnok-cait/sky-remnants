# Sky Remnants Project Status

## Authoritative accepted baseline

**M39 — Deep Convergence challenge vertical slice**

Status: **accepted and closed on 2026-08-13**.

M39 passed the automated candidate chain and user-local gameplay/visual acceptance. The exact final accepted full-project ZIP remains the authoritative source artifact for the next milestone.

## Accepted M39 validation

- JUnit: **176/176**, 50 suites, 0 failures/errors/skips;
- release build + `verifyReleaseJarContents`: PASS;
- GameTest: **99/99 in 3.425 s**, Gradle exit 0;
- dedicated server: PASS with normal save/stop;
- real Xvfb + Mesa llvmpipe client: PASS;
- unexpected client errors: 0;
- missing model/texture regressions: 0;
- crash reports: 0;
- user-local M39 acceptance: **PASS**.

## Frozen compatibility contract at M39

- Minecraft 1.21.1 / NeoForge 21.1.244 / Java 21;
- `SkyWorldData` remains **v11**;
- payload protocol remains **1**;
- Basic Airship remains **91 real slots** with accepted indices **28 / 29 / 36 / 46 / 90**;
- Large Expedition Vessel remains data version **1**, **128 real slots**, maximum **108 cargo**;
- `airship_input` remains schema v1;
- `large_vessel_input` remains schema v1;
- `supply_manifest` and Docking Base persisted `docked_airship` meanings remain unchanged;
- generated terrain/player builds are never retroactively rewritten.

## Retained known limitation

A **pre-generated DEEP challenge island may show old terrain together with the newer Deep Convergence presentation**. This is an accepted consequence of the non-destructive terrain compatibility policy, not a new runtime failure. **Judge M39 terrain/visual quality on newly generated DEEP islands.**

## Next phase

**M40 is unlocked for one focused endgame vertical slice.** M39 already covers the first repeatable high-threat challenge slice; do not silently bundle deep rare ruins, ship utility, endgame equipment/tools and final long-range expedition loops into one milestone.
