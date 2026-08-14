# Sky Remnants / 天穹残岛

Sky Remnants is a Minecraft Java Edition 1.21.1 + NeoForge sky-island survival mod focused on island building, approachable automation/logistics, modular airship exploration, sparse valuable outer islands and voluntary combat challenges.

## Project status

Authoritative accepted baseline: **M43 — Smithing Reliquary / 锻造遗库 — accepted and closed on 2026-08-14**.

Current candidate: **M44 — Heavy Core progression closure / 沉重核心进度闭环**. M44 supplies one vanilla Heavy Core per Deep Convergence pedestal instead of inventing a custom endgame weapon, closing the existing Breeze Rod → vanilla Mace route.

Candidate validation: JUnit **205/205**, GameTest **111/111**, final clean release verification PASS, dedicated-server smoke PASS and real Xvfb + Mesa llvmpipe client smoke PASS.

M44 adds only append-only pedestal NBT `heavy_core_reward_claimed`; old missing data defaults false. `SkyWorldData` stays v11, protocol stays 1, vehicle contracts and the M43 world-content profile set are unchanged.

**M45+ remains locked until M44 user-local acceptance.**

The exact M44 candidate full-project ZIP is the authoritative buildable source artifact; GitHub records cross-conversation status and is not a guaranteed byte-for-byte complete source mirror.

## Requirements

- Minecraft Java Edition 1.21.1
- NeoForge 21.1.244
- Java 21

Optional integrations: Jade and JEI. Neither is a hard dependency.

## License

Sky Remnants is **All Rights Reserved**. See `LICENSE` and `THIRD_PARTY_NOTICES.md`.
