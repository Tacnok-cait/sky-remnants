# M24 Windows Local Acceptance Result — 2026-08-09

## Result

M24 `1.0.0-rc.1` passed the complete local Windows RC acceptance chain. No release-blocking gameplay, data-safety, compatibility or presentation defect was found.

## Automated chain

- JUnit: 25 suites, 75 tests, 0 failures, 0 errors, 0 skipped;
- clean build: PASS;
- final GameTest rerun: 65/65 required tests in 2.412 s;
- `verifyReleaseJarContents`: PASS;
- dedicated server: READY, GRACEFUL_STOP and exit code 0;
- accepted Windows production JAR: 523,427 bytes, SHA-256 `EF77AFA6D7ABBD640C106434ED471AEAE04C1081D57FC0D405AB487E6B6C05D1`.

The candidate documentation originally stated 74 tests. The actual final source contains 75; the accepted documentation was corrected.

## Historical migration

Thirteen retained world copies were tested through a real dedicated-server load/save/stop cycle, covering available M2–M14 acceptance worlds. Result: 13/13 PASS. No migration-specific severe error, missing model/texture or new crash report was found.

## Official Jade / JEI runtime

- Jade `15.10.0+neoforge`, SHA-256 `803003BD24D3ECC67EBFD5CEA0A3F591804D9E118EBF6755347BD3F42D43D985`;
- JEI `19.21.0.247`, SHA-256 `413680B163B2F4477409512E393B7F33133C4C395D55BBDF877791008B3EF702`.

The compatibility dedicated server started/stopped normally. A real Windows client loaded the accepted review world; Jade loaded `com.skyremnants.compat.jade.SkyRemnantsJadePlugin`, JEI reached `JEI_STARTED`, registered Sky Remnants content and built 1,733 ingredients.

## Two-client data safety

One dedicated server and two independent clients (`PlayerA` and `PlayerB`) ran concurrently. Shared cargo/modules synchronized in both directions, supply targets remained server-authoritative without consuming real items, the accepted M19 already-open-menu snapshot remained UI-only, scan state remained player-specific, and cargo/modules/manifest persisted exactly across a full client/server restart.

## Presentation and logs

Four Windows screenshots received final visual review. Result: PASS with no P0/P1 issue. Copper hull, oxidized-teal lift chamber and steel reinforcement remained recognizable; no UV mismatch, stretching, missing face or purple/black error texture appeared; cargo/supply UI remained aligned and readable; crash-report count was zero.
