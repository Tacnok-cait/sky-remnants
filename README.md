# Sky Remnants / 天穹残岛

Sky Remnants is a Minecraft Java Edition 1.21.1 + NeoForge sky-island survival mod focused on island building, approachable automation and logistics, modular airship exploration, sparse valuable outer islands, and voluntary combat challenges.

## Accepted development baseline

**M31 — Expedition Airship Retrofit, Dockyard and Blockade Challenge — accepted and closed on 2026-08-12.**

M31 is the current authoritative post-release development baseline. M32 — 6–15h integration closure — is the next milestone and must start from this final accepted M31 source.

M31 keeps `SkyWorldData` v11, payload protocol 1 and the 91-slot airship container. It adds the Expedition Retrofit Kit, Docking Base retrofit interaction, expedition-only module slot 46, 2200-block expedition long-range scanning and the voluntary Blockade Outpost challenge while preserving accepted M30 Ember selections and all older slot meanings.

Read `docs/PROJECT_STATUS.md`, `docs/NEXT_WORK.md`, `docs/M31_ACCEPTANCE_RESULT_20260812.md`, `docs/M31_FINALIZATION_20260812.md` and `docs/M31_SOURCE_IDENTITY_20260812.md` before continuing development.

## Requirements

- Minecraft Java Edition 1.21.1
- NeoForge 21.1.244 project baseline
- Java 21

Optional integrations: Jade and JEI. Neither is a hard dependency.

## M31 accepted validation

Accepted candidate automated validation:

- JUnit 121/121, 37 suites;
- clean build + `verifyReleaseJarContents` PASS;
- GameTest 79/79 in 2.677 s;
- dedicated-server smoke PASS;
- real Linux Xvfb + Mesa llvmpipe client smoke/resource/model/crash checks PASS.

User-local M31 acceptance was explicitly reported PASS on 2026-08-12. The first local headless attempt hung because a previous-version process was still running; after clearing the stale process, the unchanged M31 code passed. This is retained as a non-blocking environment observation, not an M31 defect.

M31 finalization is documentation/status-only. Runtime code and the accepted candidate JAR are unchanged.

## M31 source identity

- M31 final accepted full-project SHA-256: `0804b5ba95b1e748294f2f2e3484817ba3342d72d4b2f363a8d9d669f728a026`
- M30 final -> M31 final incremental SHA-256: `e45de4ad357d8b638e73ea7cc529dde771e02359eb6b29254c5a8f6a75f0f221`
- Accepted M31 runtime JAR SHA-256: `4a02eb20f6d14727712278cb52d5d0cb6e071f031b7e9600f96ee215b9e53d91`

## Next milestone

**M32 — 6–15h integration closure.** M33+ remains locked until M32 acceptance.

## License

Sky Remnants is **All Rights Reserved**. See `LICENSE` and `THIRD_PARTY_NOTICES.md`.
