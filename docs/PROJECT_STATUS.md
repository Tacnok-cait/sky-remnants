# Sky Remnants Project Status

## Authoritative accepted baseline

**M26 — Deep Crystal Fault + diamond progression**

Status: **accepted and closed on 2026-08-11**.

The authoritative runtime/development baseline is the M26 final accepted source,
produced from the M25 final accepted archive plus the accepted M26 Deep Crystal
Fault / diamond-progression implementation and final acceptance documentation.

M24 remains the immutable first-release RC reference baseline. M25 remains the
post-release compatibility/migration foundation. M26 is now the current baseline
for all subsequent feature work.

## M26 acceptance evidence

### User-local final acceptance

- User explicitly reported M26 as **accepted** on 2026-08-11.
- The M26 candidate's retained-save/gameplay acceptance gate is therefore closed.
- M26 is no longer a candidate/pending milestone.

### Linux automated validation retained from the accepted candidate

- JUnit: **87/87**, 0 failures/errors/skips;
- clean build: PASS;
- `verifyReleaseJarContents`: PASS;
- GameTest: **69/69 in 1.867 s**;
- production JAR: 532,594 bytes / 453 entries / SHA-256
  `8a2791b77b2ab89932cd55cfd2c699d47bb7bf41d119aab06c5618df1fdfec05`;
- dedicated server: reached `Done (0.354s)!`, then stopped and saved normally;
- real Xvfb + Mesa llvmpipe client: TitleScreen, screenshot and graceful exit PASS;
- unexpected client errors: 0;
- missing model/texture/resource regressions: 0;
- new crash reports: 0.

## M26 delivered scope

- Deep Crystal Fault content profile for distant resource islands, weighted most
  strongly in the 700–1599 block expedition band without a hard distance wall;
- deepslate/tuff/calcite/amethyst geology and shallow fault presentation;
- controlled natural diamond ore and budding-amethyst nodes;
- one renewable-use `skyremnants:diamond_mineral_sample` in the island cache;
- existing Mineral Cultivation Bed extended with catalytic Diamond Sample support;
- diamond cultivation target: 48 cobblestone + 4 coal/charcoal, 14,400 ticks,
  diamond x1 (theoretical 5 diamonds/hour at 20 TPS);
- existing scan presentation can identify Deep Crystal Fault while scanner radius
  remains unchanged at 600 blocks;
- post-release resource/registry tests updated to allow append-only additions while
  preserving the historical M24 compatibility floor.

## Compatibility contract retained

- Minecraft Java Edition 1.21.1;
- NeoForge 21.1.244 baseline;
- Java 21;
- M24/M25 accepted registry IDs remain valid;
- `SkyWorldData` remains version **10**; M26 adds no new persisted world-data field;
- accepted external-island IDs/centers/radii/depths/broad kinds are not remapped;
- already-generated chunks are never regenerated or overwritten;
- airship payload id/protocol, real container slots 0–90, module slots 28/29/36,
  logistics slot 90 and `supply_manifest` remain unchanged;
- existing Mineral Cultivation Bed modes keep their ordinal/meaning; DIAMOND is
  append-only.

## Source archive

The exact M25 final -> M26 final accepted incremental archive is stored in
`.source-archives/m26-final/` as binary-safe Base64 parts with a reconstruction
script and SHA-256 manifest.

- M25 final accepted full-project SHA-256: `4b351b9d7a4e582e71763257a0d24b2a8eda9ccaa233cdf948df50c1efeebb7a`;
- M26 final incremental SHA-256: `015117698d1ed5036dab4330b0ce1c8d7c30a584076420bbb379db62882ce685`;
- M26 final accepted full-project SHA-256: `5e162406a23b5d84f2f1890ae8bc93cba0a710d621375a8ff3a899a874f948ec`.

## Accepted non-blocking observations

### M19 multiplayer supply-menu snapshot

An already-open second supply menu does not live-refresh another client's
`ghost-target` edit until reopened. Server state remains authoritative and prior
acceptance established no duplication/loss/stale-close overwrite.

### M26 Deep Crystal presentation polish

User acceptance included a **non-blocking future suggestion**:

- strengthen the island's linear fault/rift silhouette;
- allow part of the amethyst to form more concentrated geode-like structures.

This is recorded as future worldgen/presentation polish, not an M26 blocker and
not an automatic M27 scope expansion. Any later implementation must affect only
newly generated chunks/islands and must not regenerate accepted M26/M25 terrain.

## Next phase

**M27 — Remote outposts, amethyst harvesting and long-range scanning.**

M27 must branch from this accepted M26 source. Its scope is limited to extending
existing Worker/Docking Base/Pipe/Chunk Loader/scan systems for the remote
amethyst-outpost loop and long-range scan functionality. Do not begin M28 Mist
Marsh / slime / creeper expansion before M27 itself is accepted.
