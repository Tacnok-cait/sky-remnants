# Sky Remnants Project Status

## Authoritative accepted baseline

**M37 — Large Expedition Vessel Compatibility Foundation**

Status: **accepted and closed on 2026-08-12**.

M33–M37 have all passed user-local acceptance. The accepted milestone chain is recorded in `docs/M33_M37_ACCEPTANCE_CHAIN_20260812.md`. Each finalization step is documentation/status-only relative to the tested candidate/provisional source for that milestone.

## M33–M37 accepted scope

- M33: 3200-block Deep-range Scan Module and OUTER Storm Relay challenge while preserving Ember/Blockade ordering;
- M34: DEEP RESOURCE End Fracture with guaranteed first Ender Pearls, Chorus/End materials and low-frequency real Endermen;
- M35: DEEP RUIN Drifting End City, real persistent Shulkers, Enderman Sample and append-only Hostile Mob Inducer `ENDERMAN=7` with inducer-only teleport containment;
- M36: DEEP RESOURCE Ash Crown Forge, exactly two Ancient Debris per forge, real Wither Skeleton encounters and local tagged-Wither arena protection without global gamerule changes;
- M37: generic `DockableLogisticsVessel` facade and independent version-1 Large Expedition Vessel 128-slot contract, without registering a half-playable large vessel.

## Accepted M37 validation

- JUnit: **162/162**, 48 suites, 0 failures/errors/skips;
- GameTest: **92/92 in 2.177 s**, Gradle exit 0;
- clean build and `verifyReleaseJarContents`: PASS;
- dedicated server: PASS;
- real Xvfb + Mesa llvmpipe client: PASS;
- user-local M33–M37 acceptance: **PASS**.

## Compatibility contract at M37

- Minecraft Java Edition 1.21.1 / NeoForge 21.1.244 / Java 21;
- `SkyWorldData` remains **v11**;
- payload protocol remains **1**;
- Basic Airship `CONTAINER_SIZE` remains **91**;
- Basic Airship module slots remain **28 / 29 / 36 / 46**;
- Basic Airship logistics remains **90**;
- `supply_manifest` remains unchanged;
- Docking Base keeps legacy `bindAirship(...)`, `getDockedAirship()` and persisted `docked_airship` UUID compatibility;
- Large Expedition Vessel contract is independent version 1 with **128 real slots** and must not reinterpret Basic Airship indices;
- M37 still registers only `basic_airship` as a Sky Remnants vehicle entity;
- generated terrain/player builds are never retroactively rewritten.

## M37 source identity

- final accepted full-project SHA-256: `91520ce27a3d9e04815511ec4f8e2a7bfea980d9bce5314722e2bedf120eae2e`;
- M36 final → M37 final incremental SHA-256: `a69717bee3a2803cca70f6b410f59574a370f390b49752ab5aba5666187db986`;
- M37 provisional → final status patch SHA-256: `15f77fff56e4ff1ea641a44632a01ca4af540e84d97e215dbac7a1d214af8692`;
- accepted JAR SHA-256: `443ea918da4381b01b4a622985e8c90cf69f806a615a4d257856d098e5dca6b5`.

The exact accepted full-project ZIP is the authoritative source artifact. The GitHub connector records exact source identities and acceptance status but does not directly ingest local `/mnt/data` ZIP bytes.

## Retained non-blocking observations

- M19 multiplayer open-menu live-refresh observation remains; server state is authoritative and accepted testing found no duplication/loss.
- already-generated derived islands are never rewritten when a later deterministic profile applies new semantics;
- M34 Enderman and M36 Wither-Skeleton refill cooldowns are runtime-only and may reset after server restart;
- M36 Wither protection is deliberately local to tagged Ash Crown arena Withers; leaving the arena restores vanilla destruction;
- M37 contains no playable large-vessel entity yet.

## Next phase

**M38 — Large Expedition Vessel playable vertical slice.**

M38 must branch from M37 final accepted and implement the first actual large-vessel entity/item/menu/renderer against the frozen independent 128-slot contract. It must not expand or reinterpret the accepted Basic Airship 91-slot layout.
