# Sky Remnants / 天穹残岛

Sky Remnants is a Minecraft Java Edition 1.21.1 + NeoForge sky-island survival mod focused on island building, approachable automation and logistics, modular airship exploration, sparse valuable outer islands, and voluntary combat challenges.

## Accepted development baseline

**M30 — Crimson/Warped ecology + Nether Wart automation + Ember Ruin Blaze challenge — accepted and closed on 2026-08-12.**

M30 retains `SkyWorldData` v11, keeps accepted island identity stable, appends Auto Worker `NETHER_WART` at ordinal 7, and reuses the existing Wind Eye pedestal/state machine for the Ember Ruin Blaze challenge. M31 airship retrofit/dockyard content is intentionally not part of M30.

Read `docs/PROJECT_STATUS.md`, `docs/NEXT_WORK.md`, `docs/M30_ACCEPTANCE_RESULT_20260812.md`, `docs/M30_FINALIZATION_20260812.md` and `docs/M30_SOURCE_IDENTITY_20260812.md` before continuing development.

## Requirements

- Minecraft Java Edition 1.21.1
- NeoForge 21.1.244 project baseline
- Java 21

Optional integrations: Jade and JEI. Neither is a hard dependency.

## Accepted M30 validation

- JUnit 114/114, 35 suites;
- build + `verifyReleaseJarContents` PASS;
- GameTest 77/77 in 2.552 s;
- dedicated-server smoke PASS;
- real Linux Xvfb + Mesa llvmpipe client smoke/resource/model/crash checks PASS;
- user-local final acceptance PASS on 2026-08-12.

The finalization step is documentation-only; the accepted runtime JAR is unchanged from the tested M30 candidate.

## M30 source identity

The exact accepted full-project artifact is identified in `docs/M30_SOURCE_IDENTITY_20260812.md`.

- M30 final accepted full-project SHA-256: `7d096adb4314bd1ea9471d90994c47ca8b11ab46160b23642631a27052108365`
- Accepted M30 runtime JAR SHA-256: `18b8310bd41330a30521482b6ad7b4748994e6b1fd7963c4db6a5b5f2ccc19df`

## Next milestone

**M31 — expedition airship retrofit, dockyard and blockade challenge.**

## License

Sky Remnants is **All Rights Reserved**. See `LICENSE` and `THIRD_PARTY_NOTICES.md`.
