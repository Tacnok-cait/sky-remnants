# Sky Remnants / 天穹残岛

Sky Remnants is a Minecraft Java Edition 1.21.1 + NeoForge sky-island survival mod focused on island building, approachable automation and logistics, modular airship exploration, sparse valuable outer islands, and voluntary combat challenges.

## Accepted development baseline

**M26 — Deep Crystal Fault + diamond progression — accepted and closed on 2026-08-11.**

M24 / `1.0.0-rc.1` remains the immutable first-release RC reference. M25 established the post-release compatibility/migration foundation. M26 is now the current authoritative post-release development baseline.

M26 adds the first 6–15h resource expansion while preserving the M25 compatibility contract: distant Deep Crystal Fault resource content, one renewable-use Diamond Mineral Sample, low-rate diamond cultivation through the existing Mineral Cultivation Bed, and Deep Crystal scan presentation without increasing the existing 600-block scanner radius.

`SkyWorldData` remains v10. Accepted M24/M25 island IDs/coordinates/shapes, airship slot semantics, `supply_manifest` and existing payload identity remain unchanged. Already-generated chunks are not regenerated or overwritten.

## Requirements

- Minecraft Java Edition 1.21.1
- NeoForge 21.1.244 project baseline
- Java 21

Optional integrations: Jade and JEI. Neither is a hard dependency.

## Verification

M26 accepted-candidate automated validation passed JUnit 87/87, clean build and release-JAR verification, GameTest 69/69 in 1.867 s, dedicated-server smoke, and a real Xvfb + llvmpipe client smoke/resource/model/crash check. User-local final acceptance was explicitly reported PASS on 2026-08-11.

Read `docs/PROJECT_STATUS.md`, `docs/NEXT_WORK.md`, `docs/M26_ACCEPTANCE_RESULT_2026-08-11.md` and `docs/M26_FINALIZATION_20260811.md` first in a new development conversation.

## Binary-safe M26 source delta

The exact M25-final -> M26-final incremental archive is stored under `.source-archives/m26-final/` as Base64 parts with a PowerShell reconstruction script and SHA-256 manifest.

- M25 final accepted full-project SHA-256: `4b351b9d7a4e582e71763257a0d24b2a8eda9ccaa233cdf948df50c1efeebb7a`
- M26 final incremental ZIP SHA-256: `015117698d1ed5036dab4330b0ce1c8d7c30a584076420bbb379db62882ce685`
- M26 final accepted full-project SHA-256: `5e162406a23b5d84f2f1890ae8bc93cba0a710d621375a8ff3a899a874f948ec`
- Accepted M26 JAR SHA-256: `8a2791b77b2ab89932cd55cfd2c699d47bb7bf41d119aab06c5618df1fdfec05`

## Accepted non-blocking M26 observation

Future Deep Crystal presentation may benefit from a more strongly linear fault/rift silhouette and more concentrated amethyst/geode formations. This is recorded as a non-blocking future polish candidate, not an automatic M27 scope expansion, and any later implementation must not regenerate accepted old chunks.

## Next milestone

**M27 — Remote outposts, amethyst harvesting and long-range scanning.** Do not start M28 Mist Marsh / slime / creeper expansion before M27 acceptance.

## License

Sky Remnants is **All Rights Reserved**. See `LICENSE` and `THIRD_PARTY_NOTICES.md` in the complete source artifact.
