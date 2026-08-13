# Sky Remnants / 天穹残岛

Sky Remnants is a Minecraft Java Edition 1.21.1 + NeoForge sky-island survival mod focused on island building, approachable automation/logistics, modular airship exploration, sparse valuable outer islands and voluntary combat challenges.

## Project status

Authoritative accepted baseline: **M41 — Skybridge Builder / 天桥构筑器 — accepted and closed on 2026-08-14**.

Current candidate: **M42 — Far Horizon Observatory / 远穹观测站**. M43+ remains locked until M42 user-local acceptance.

M42 adds one 4200+ staged long-range expedition objective on leftover DEEP ecology space. It adds no vessel tier, quest lock, energy network or persistence schema.

Read `docs/PROJECT_STATUS.md`, `docs/NEXT_WORK.md` and the M42 candidate notes under `docs/`.

## Requirements

- Minecraft Java Edition 1.21.1
- NeoForge 21.1.244
- Java 21

Optional integrations: Jade and JEI. Neither is a hard dependency.

## M42 candidate validation

- JUnit **193/193**, 53 suites;
- GameTest **107/107 in 3.144 s**;
- `clean test build` + `verifyReleaseJarContents`: PASS;
- dedicated-server smoke: PASS (`Done (0.415s)!` → normal save/stop);
- real Xvfb + Mesa llvmpipe client TitleScreen/resource smoke: PASS;
- unexpected client errors: 0;
- missing model/texture/resource regressions: 0;
- new crash reports: 0.

Important compatibility note: pre-M42 generated qualifying very-far DEEP ecology chunks are never rewritten and can lack the new Observatory structure/caches. Judge M42 structure/rewards on newly generated 4200+ terrain.

The exact M42 full candidate ZIP is the authoritative candidate source artifact; GitHub records status/scope and is not a byte-for-byte complete source mirror at this point.

## License

Sky Remnants is **All Rights Reserved**. See `LICENSE` and `THIRD_PARTY_NOTICES.md`.
