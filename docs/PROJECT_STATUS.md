# Sky Remnants Project Status

## Authoritative accepted baseline

**M24 — First-release RC closure / 1.0.0-rc.1**

Status: **accepted and closed on 2026-08-09**.

The authoritative runtime source is the user-returned M24 final accepted source, followed only by historical/status-document restoration for archival completeness.

## Windows final acceptance

- JUnit 75/75, 25 suites;
- clean build and `verifyReleaseJarContents`: PASS;
- GameTest 65/65 in 2.412 s;
- dedicated server ready / graceful stop / exit 0;
- 13 retained historical-world copies: 13/13 load/save/stop PASS;
- Jade 15.10.0+neoforge and JEI 19.21.0.247 runtime: PASS;
- one real dedicated server + two independent clients: shared-airship/data-safety and restart persistence PASS;
- final Windows visual/log review: PASS, no P0/P1 presentation defect, crash reports 0.

## Linux revalidation of returned accepted source

- JUnit 75/75;
- build + release-JAR verification: PASS;
- production JAR: 523,414 bytes / 446 entries / SHA-256 `5fc0377ad3b395cf527a0c9c13a5881fe36b9ef9b9627e5217c835c32e0b1c69`;
- forbidden TestControl/GameTest/Jade/JEI-stub entries: 0;
- GameTest 65/65 in 2.502 s;
- fresh dedicated server reached `Done (13.065s)!`, stopped and saved all dimensions;
- real Xvfb + llvmpipe client reached TitleScreen, passed model/resource/crash checks and exited 0.

## Final acceptance fixes retained

The Windows-accepted source includes final presentation corrections beyond the initial RC candidate: revised basic-airship geometry/UV usage and reinforced silhouette, distinct meadow/wind challenge-pedestal side textures, refreshed project-owned pixel art and the corresponding M23 resource-test updates.

## Compatibility

- Minecraft Java Edition 1.21.1;
- NeoForge 21.1.244 baseline;
- Java 21;
- no registry ID changes;
- no M24 recipe/progression changes;
- no network payload changes;
- `SkyWorldData` remains version 9;
- no M24 save migration;
- airship slots and `supply_manifest` unchanged.

## Known non-blocker

The accepted M19 supply-menu snapshot behavior remains UI-only: an already-open second menu does not live-refresh another client's ghost-target edit until reopened. Final M24 multiplayer acceptance reconfirmed no duplication, loss, stale-close overwrite or persistence failure.

## Next phase

First-version feature development is frozen. Continue in release/bug-fix mode; 6–15h and 15h+ progression systems belong to post-first-release milestones.
