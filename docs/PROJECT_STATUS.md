# Sky Remnants Project Status

## Authoritative accepted baseline

**M40 — Dockyard Deployment Module / 船坞部署模块**

Status: **accepted and closed on 2026-08-13**.

M40 passed candidate automation and user-local acceptance. The exact M40 final accepted full-project ZIP is the authoritative baseline from which M41 was developed.

## Current candidate

**M41 — Skybridge Builder / 天桥构筑器**

Status: **candidate — awaiting user-local acceptance**.

M41 adds one optional endgame handheld construction convenience tool. It deliberately does not add another vessel module, vessel tier, automation network, energy system or world-content profile.

### M41 candidate scope

- append-only item ID `skyremnants:skybridge_builder`;
- main hand: builder; offhand: supplied building blocks;
- horizontal side-face use extends a straight bridge line by up to **8** blocks;
- survival consumes exactly the number of blocks actually placed; creative `instabuild` does not consume;
- stops before the first occupied, protected or unsupported target and never overwrites or skips across it;
- accepts only simple full-collision blocks with no block entity and no block-state properties;
- dedicated item model/16x16 texture, bilingual tooltip/messages and one shaped recipe from existing endgame materials.

### Frozen compatibility contract

- Minecraft 1.21.1 / NeoForge 21.1.244 / Java 21;
- `SkyWorldData` remains **v11**;
- payload protocol remains **1**;
- Basic Airship remains **91 real slots**, accepted indices **28 / 29 / 36 / 46 / 90**;
- Large Expedition Vessel remains data version **1**, **128 real slots**, maximum **108 cargo**;
- `airship_input` remains schema v1;
- `large_vessel_input` remains schema v1;
- M40 Dockyard Deployment behavior is unchanged;
- `supply_manifest` and Docking Base persisted `docked_airship` meanings remain unchanged;
- M41 adds no block/entity/menu/payload/Data Component/SavedData/world-profile schema;
- generated terrain/player builds are never retroactively rewritten.

### M41 automated validation

- JUnit: **186/186**, 52 suites, 0 failures/errors/skips;
- clean + cached asset regeneration + build + `verifyReleaseJarContents`: PASS;
- GameTest: **104/104 in 3.383 s**, Gradle exit 0;
- dedicated server: `Done (8.040s)!` -> normal stop/save -> Gradle exit 0;
- real Xvfb + Mesa llvmpipe client: TitleScreen/screenshot/graceful exit PASS;
- unexpected client errors: 0;
- missing model/texture/resource regressions: 0;
- new crash reports: 0.

## Retained known limitations

- pre-generated DEEP challenge islands may retain old terrain with newer Deep Convergence presentation; judge that terrain on newly generated DEEP islands;
- Skybridge Builder v1 is horizontal and straight-line only;
- stateful blocks such as logs are rejected intentionally instead of guessing orientation;
- block-entity materials such as chests are rejected;
- the real headless-client run validates client lifecycle/resources, not in-world first-person Skybridge Builder feel.

## Next gate

**M42+ remains locked until M41 user-local acceptance.**
