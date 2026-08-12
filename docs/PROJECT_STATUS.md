# Sky Remnants Project Status

## Authoritative accepted baseline

**M30 — Crimson/Warped ecology + Nether Wart automation + Ember Ruin Blaze challenge**

Status: **accepted and closed on 2026-08-12**.

The authoritative runtime/development baseline is the M30 final accepted source produced from the accepted M29 source plus the accepted M30 implementation and documentation-only finalization.

M24 remains the immutable first-release RC reference. M25 is the post-release compatibility foundation. M26 added Deep Crystal/diamond. M27 advanced `SkyWorldData` from v10 to v11. M28, M29 and M30 retain v11.

## Accepted validation chain

- M27: JUnit 93/93, GameTest 71/71, build/release verification, dedicated server, v10→v11 migration and real-client acceptance PASS.
- M28: JUnit 100/100, GameTest 73/73, build/release verification, dedicated server, migration and real-client acceptance PASS.
- M29: JUnit 108/108, GameTest 75/75, build/release verification, dedicated server, migration and real-client acceptance PASS.
- M30: JUnit 114/114, GameTest 77/77 in 2.552 s, build/release verification, dedicated-server smoke and real Xvfb + llvmpipe client smoke/resource/crash checks PASS; user-local acceptance PASS on 2026-08-12.

## M30 delivered scope

- derived Crimson/Warped ecology fragments while preserving M28 Mist Marsh selections;
- controlled Nether Wart source;
- Auto Worker `NETHER_WART` mode appended at ordinal 7;
- Ember Ruin challenge profile reusing the existing Wind Eye pedestal/state machine;
- Blaze/Magma Cube encounter waves and Blaze-oriented rewards;
- Blaze remains outside ordinary reusable sample/inducer automation;
- scan presentation extended for Crimson/Warped/Ember content.

## Compatibility contract

- Minecraft Java Edition 1.21.1 / NeoForge 21.1.244 / Java 21;
- `SkyWorldData` current version remains **11**;
- no M30 schema migration;
- accepted external-island IDs/centers/radii/depths/broad kinds remain stable;
- already-generated chunks are not regenerated;
- accepted M28 Mist Marsh and M29 Ashen/Soul Rift choices remain stable;
- old Auto Worker ordinals 0–6 remain valid; `NETHER_WART` is append-only ordinal 7;
- airship inventory/slot semantics, payload protocol and `supply_manifest` remain unchanged;
- no M31 airship/dockyard migration exists in M30.

## M30 source identity

The exact accepted source artifact is recorded in `docs/M30_SOURCE_IDENTITY_20260812.md`.

- M30 final accepted full-project SHA-256: `7d096adb4314bd1ea9471d90994c47ca8b11ab46160b23642631a27052108365`;
- M30 accepted runtime JAR SHA-256: `18b8310bd41330a30521482b6ad7b4748994e6b1fd7963c4db6a5b5f2ccc19df`.

## Retained non-blockers

- M19: an already-open second multiplayer supply menu does not live-refresh another player's ghost-target edit until reopened; server state remains authoritative and prior acceptance found no duplication/loss/stale-close overwrite.
- M26: future Deep Crystal presentation may strengthen the linear rift silhouette and concentrate some amethyst into geode-like formations; this remains deferred and must only affect newly generated terrain if implemented.
- M29: one first headless-client start hit an early NeoForge `DisplayWindow/FMLConfig` environment race before mod loading; an unchanged rerun passed and the issue was classified as environmental/non-blocking.

## Next phase

**M31 — expedition airship retrofit, dockyard and blockade challenge.**

M31 must branch from this M30 final accepted source. M32 6–15h integration closure remains gated behind M31 acceptance.
