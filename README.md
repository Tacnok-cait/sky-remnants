# Sky Remnants / 天穹残岛

Sky Remnants is a Minecraft Java Edition 1.21.1 + NeoForge sky-island survival mod focused on island building, approachable automation and logistics, modular airship exploration, sparse valuable outer islands, and voluntary combat challenges.

## Accepted development baseline

**M25 — Post-release compatibility foundation — accepted and closed on 2026-08-11.**

M24 / `1.0.0-rc.1` remains the immutable first-release RC reference. M25 is the current post-release development baseline and adds compatibility/migration infrastructure without adding M26 gameplay content.

M25 establishes explicit `SkyWorldData` v9 -> v10 migration, freezes accepted registry/network/airship contracts, and adds derived outer-island distance/tier metadata without changing accepted M24 island IDs, coordinates or shapes.

## Requirements

- Minecraft Java Edition 1.21.1
- NeoForge 21.1.244 project baseline
- Java 21

Optional integrations: Jade and JEI. Neither is a hard dependency.

## Verification

M25 automated validation passed JUnit 80/80, clean build and release-JAR verification, GameTest 67/67, dedicated-server smoke, and a real Xvfb + llvmpipe client smoke. User-local final acceptance passed on 2026-08-11, including the retained M24-world migration gate.

Read `docs/PROJECT_STATUS.md`, `docs/NEXT_WORK.md`, `docs/M25_ACCEPTANCE_RESULT_2026-08-11.md` and `docs/M25_FINALIZATION_20260811.md` first in a new development conversation.

## Binary-safe M25 source delta

The exact M24-final -> M25-final incremental archive is stored under `.source-archives/m25-final/` as Base64 parts with a PowerShell reconstruction script and SHA-256 manifest. The incremental SHA-256 is `606f8caab22033a9df864f400f8351626369de1aa6e74ffc50bdecf7065a5aca`; the resulting M25 final accepted full-project SHA-256 is `4b351b9d7a4e582e71763257a0d24b2a8eda9ccaa233cdf948df50c1efeebb7a`.

## Next milestone

**M26 — Deep Crystal Fault + diamond progression.** Do not start M27 remote-outpost / long-range scanner / amethyst scope before M26 acceptance.

## License

Sky Remnants is **All Rights Reserved**. See `LICENSE` and `THIRD_PARTY_NOTICES.md` in the complete source artifact.
