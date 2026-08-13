# Sky Remnants Project Status

## Authoritative accepted baseline

**M39 — Deep Convergence challenge vertical slice**

Status: **accepted and closed on 2026-08-13**.

The M39 final accepted full-project ZIP remains the authoritative accepted source baseline until M40 receives user-local acceptance.

## Current candidate

**M40 — Dockyard Deployment Module / 船坞部署模块**

Status: **candidate — awaiting user-local acceptance**.

M40 is one focused advanced construction/ship utility slice. A floating-anchored Large Expedition Vessel can use one new module, 24 accessible Stone Bricks and one existing Docking Base item to transactionally deploy a compact 5×5 docking platform and bind itself to the real Docking Base.

### Compatibility contract

- Minecraft 1.21.1 / NeoForge 21.1.244 / Java 21;
- `SkyWorldData` remains v11 and payload protocol remains 1;
- Basic Airship remains 91 real slots with accepted indices 28 / 29 / 36 / 46 / 90;
- Large Expedition Vessel remains data version 1, 128 real slots, maximum 108 cargo;
- both accepted input payload schemas remain v1;
- `supply_manifest` and Docking Base persisted `docked_airship` meanings remain unchanged;
- M40 adds only append-only item `skyremnants:dockyard_deployment_module`; no new block/entity/menu/payload/schema;
- no world-profile/terrain reassignment; generated terrain/player builds are never retroactively rewritten.

### M40 automated validation

- JUnit **181/181**, 51 suites, 0 failures/errors/skips;
- clean test/build + `verifyReleaseJarContents`: PASS;
- GameTest **101/101 in 8.267 s**, Gradle exit 0;
- dedicated server `Done (0.376s)!` → normal save/stop → exit 0;
- real Xvfb + Mesa llvmpipe TitleScreen/resource smoke: PASS;
- unexpected client errors 0; missing model/texture regressions 0; new crash reports 0.

## Retained limitations

M40 requires all 25 target cells to be air and deliberately never overwrites terrain/player blocks. Its automated client run does not provide an in-world platform beauty shot; local acceptance must judge 5×5 platform/vessel alignment. The accepted M39 pre-generated DEEP old-terrain/new-presentation seam remains unchanged.

## Next gate

**M41+ is locked until M40 user-local acceptance.**
