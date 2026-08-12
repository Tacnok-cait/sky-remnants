# Sky Remnants Project Status

## Authoritative accepted baseline

**M31 — Expedition Airship Retrofit, Dockyard and Blockade Challenge**

Status: **accepted and closed on 2026-08-12**.

The authoritative runtime/development baseline is the M31 final accepted source, produced directly from M30 final accepted plus the user-accepted M31 implementation and documentation-only finalization.

M24 remains the immutable first-release RC reference. M25 established the post-release compatibility foundation. M26 added Deep Crystal/diamond. M27 advanced `SkyWorldData` from v10 to v11. M28, M29, M30 and M31 retain v11.

## M31 delivered scope

- append-only `skyremnants:expedition_retrofit_kit`, available from Blockade first-clear reward and ordinary crafting;
- Docking Base retrofit interaction for a physically docked Reinforced Airship;
- airship entity NBT boolean `expedition_retrofit`, with missing old-save data reading as false;
- previously reserved real slot 46 activated as expedition-only module D without changing the 91-slot container;
- explicit maximum of three Storage Modules/storage banks retained; the fourth module slot can host other valid modules such as Fuel Tanks;
- expedition speed/fuel tuning and conditional 2200-block Long-range Scan;
- Blockade Outpost derived challenge profile with Pillager/Breeze/Vindicator waves, reusing the existing Wind Eye pedestal/state machine;
- exact M30 Ember selection evaluated first so accepted Ember choices are not stolen or remapped.

## Accepted validation evidence

### Automated validation retained from the accepted candidate

- JUnit: **121/121**, 37 suites, 0 failures/errors/skips;
- `clean build`: PASS;
- `verifyReleaseJarContents`: PASS;
- GameTest: **79/79 in 2.677 s**;
- dedicated server: reached `Done (0.373s)!`, then stopped and saved normally with Gradle exit 0;
- real Xvfb + Mesa llvmpipe client: TitleScreen/screenshot/graceful exit PASS;
- unexpected client errors: 0;
- missing model/texture/resource regressions: 0;
- new crash reports: 0.

### User-local final acceptance

User explicitly reported **M31 local acceptance fully PASS** on 2026-08-12, including the expedition retrofit/dockyard/module-slot/scan/Blockade behavior and retained-save compatibility.

One first local headless attempt hung because a previous-version process remained running. After clearing the stale process, the unchanged M31 code passed. This is recorded as an environment/process-lifecycle observation, not an M31 gameplay/runtime defect.

## Compatibility contract

- Minecraft Java Edition 1.21.1 / NeoForge 21.1.244 / Java 21;
- `SkyWorldData` remains **v11**;
- payload protocol remains **1**;
- Basic Airship real container remains **91 slots**;
- accepted module slots A/B/C remain 28/29/36;
- slot **46** changes from reserved/disabled to conditional expedition module D; no accepted slot moves;
- dedicated logistics module remains slot **90**;
- `supply_manifest` remains unchanged;
- old M30 airship NBT without `expedition_retrofit` loads with retrofit disabled;
- Basic Scan 600 and ordinary Long-range Scan 1600 remain unchanged; expedition + Long-range Scan uses 2200;
- M30 Ember selection remains stable before M31 Blockade derivation;
- already-generated blocks are never regenerated or overwritten.

## M31 source identity

- M31 final accepted full-project SHA-256: `0804b5ba95b1e748294f2f2e3484817ba3342d72d4b2f363a8d9d669f728a026`;
- M30 final -> M31 final incremental SHA-256: `e45de4ad357d8b638e73ea7cc529dde771e02359eb6b29254c5a8f6a75f0f221`;
- accepted runtime JAR SHA-256: `4a02eb20f6d14727712278cb52d5d0cb6e071f031b7e9600f96ee215b9e53d91`.

## Retained non-blocking observations

- M19: an already-open second multiplayer supply menu does not live-refresh another player's ghost-target edit until reopened; server state remains authoritative and prior acceptance found no duplication/loss/stale-close overwrite.
- M26: future Deep Crystal presentation may strengthen the linear rift silhouette and concentrate some amethyst into geode-like formations; this remains deferred and may only affect newly generated content if implemented.
- M29: one first headless-client start hit an early NeoForge `DisplayWindow/FMLConfig` environment race before mod loading; an unchanged rerun passed.
- M31: one first local headless attempt hung because a previous-version process was still running; clearing that stale process allowed the unchanged code to pass.
- M31 terrain/presentation seam: a challenge island whose terrain was already generated before M31 is never rewritten. If deterministic M31 classification treats a previously STANDARD challenge island as Blockade, the old physical terrain can remain while scan/challenge presentation uses Blockade semantics.

## Next phase

**M32 — 6–15h integration closure.**

M32 starts from this final accepted M31 source. It is primarily an integration/flow/balance/compatibility closure milestone for the M26–M31 post-release vertical slice. Do not begin M33+ dangerous outer ring, End fragments, shulkers, ancient debris/Wither, large expedition ships or other long-term content before M32 is accepted unless the scope is explicitly changed.
