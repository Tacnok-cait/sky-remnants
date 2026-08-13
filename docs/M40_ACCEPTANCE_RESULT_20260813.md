# M40 Acceptance Result — 2026-08-13

Status: **accepted and closed**.

User-local acceptance PASS was reported on 2026-08-13 for the M40 Dockyard Deployment Module candidate. Finalization is documentation/status-only relative to the tested candidate; runtime Java/resources/build configuration are unchanged.

## Accepted validation

- JUnit: **181/181**, 51 suites;
- clean test/build + `verifyReleaseJarContents`: PASS;
- GameTest: **101/101 in 8.267 s**;
- dedicated-server smoke: PASS;
- real Xvfb + Mesa llvmpipe client smoke: PASS;
- user-local in-world acceptance: **PASS**.

## Compatibility retained

- `SkyWorldData` v11; payload protocol 1;
- Basic Airship 91 real slots and indices 28 / 29 / 36 / 46 / 90 unchanged;
- Large Expedition Vessel data version 1, 128 real slots, maximum 108 cargo unchanged;
- `airship_input` and `large_vessel_input` remain schema v1;
- no entity/block/menu/payload/world-profile migration.

M41 is unlocked for one focused endgame vertical slice.
