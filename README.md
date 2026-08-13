# Sky Remnants / 天穹残岛

Sky Remnants is a Minecraft Java Edition 1.21.1 + NeoForge sky-island survival mod focused on island building, approachable automation/logistics, modular airship exploration, sparse valuable outer islands and voluntary combat challenges.

## Project status

Authoritative accepted baseline: **M40 — Dockyard Deployment Module / 船坞部署模块 — accepted and closed on 2026-08-13**.

Current candidate: **M41 — Skybridge Builder / 天桥构筑器**. M42+ remains locked until M41 user-local acceptance.

M41 adds one optional endgame handheld construction tool. It does not add a vessel tier, power system, new world profile or new persistent schema.

Read `docs/PROJECT_STATUS.md`, `docs/NEXT_WORK.md` and the M41 candidate notes under `docs/`.

## Requirements

- Minecraft Java Edition 1.21.1
- NeoForge 21.1.244
- Java 21

Optional integrations: Jade and JEI. Neither is a hard dependency.

## M41 candidate validation

- JUnit **186/186**, 52 suites;
- GameTest **104/104 in 3.383 s**;
- release build + `verifyReleaseJarContents`: PASS;
- dedicated-server smoke: PASS (`Done (8.040s)!` -> normal save/stop);
- real Xvfb + Mesa llvmpipe client TitleScreen/resource smoke: PASS;
- unexpected client errors: 0;
- missing model/texture/resource regressions: 0;
- new crash reports: 0.

The exact M41 full candidate ZIP remains the authoritative candidate source artifact; GitHub records cross-conversation status and scope rather than claiming byte-for-byte ZIP ingestion.

## License

Sky Remnants is **All Rights Reserved**. See `LICENSE` and `THIRD_PARTY_NOTICES.md`.
