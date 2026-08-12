# Sky Remnants / 天穹残岛

Sky Remnants is a Minecraft Java Edition 1.21.1 + NeoForge sky-island survival mod focused on island building, approachable automation and logistics, modular airship exploration, sparse valuable outer islands, and voluntary combat challenges.

## Accepted development baseline

**M32 — 6–15h Integration Closure — accepted and closed on 2026-08-12.**

M32 is the current authoritative post-release development baseline. It closes the M26→M31 6–15 hour progression slice, keeps `SkyWorldData` v11 / payload protocol 1 / the 91-slot airship contract unchanged, and fixes scanner feedback so Basic 600, Long-range 1600 and Expedition Long-range 2200 ranges are presented correctly.

Read `docs/PROJECT_STATUS.md`, `docs/NEXT_WORK.md`, `docs/M32_ACCEPTANCE_RESULT_20260812.md`, `docs/M32_FINALIZATION_20260812.md` and `docs/M32_SOURCE_IDENTITY_20260812.md` before continuing development.

## Requirements

- Minecraft Java Edition 1.21.1
- NeoForge 21.1.244 project baseline
- Java 21

Optional integrations: Jade and JEI. Neither is a hard dependency.

## M32 accepted validation

- automated JUnit 129/129, 39 suites;
- automated GameTest 81/81 in 2.338 s;
- clean build + release-JAR verification PASS;
- dedicated-server smoke PASS;
- real Linux Xvfb + Mesa llvmpipe client smoke PASS;
- user-local Windows JUnit 129/129 and GameTest 81/81 in 3.910 s;
- user-local M26 retained-world migration smoke PASS;
- user-local WSL2 main-menu + in-world real-client acceptance PASS;
- explicit user final acceptance on 2026-08-12.

M32 finalization is documentation/status-only. The reference accepted candidate JAR remains byte-identical; independent Windows and Linux builds may have different archive SHA values, so the final accepted source ZIP is authoritative.

## M32 source identity

- M32 final accepted full-project SHA-256: `edc4e8a574f5845cd073fb96d2d19b5aa3ce04d2d6e989dc1e329370772ce59b`
- M31 final → M32 final incremental SHA-256: `4a6c9dd61990da5d268f131aa82afb96f9763b35c93680dad48f3f794b41be04`
- reference accepted JAR SHA-256: `120b9ab4d1138f997883e1c7cbdb326aab46cb88a8f03a4a254b2c586bd8ef3f`
- user-local Windows accepted build JAR SHA-256: `a5f88bbfaf498820764e50f0088deb9d2b9f42a4ed5a22c9d8945c6183253760`

## Next phase

**M33 planning — Dangerous Outer Ring.** M33 implementation waits for the post-M32 scope plan to be frozen. End fragments, Shulker content, ancient debris/Wither and large expedition ships remain separate later milestones.

## License

Sky Remnants is **All Rights Reserved**. See `LICENSE` and `THIRD_PARTY_NOTICES.md`.
