# Sky Remnants / 天穹残岛

Sky Remnants is a Minecraft Java Edition 1.21.1 + NeoForge sky-island survival mod focused on island building, approachable automation/logistics, modular airship exploration, sparse valuable outer islands and voluntary combat challenges.

## Project status

Authoritative accepted baseline: **M44 — Heavy Core progression closure / 沉重核心进度闭环 — accepted and closed on 2026-08-15**.

Current candidate: **M45 — Endgame Closure & Release Hardening / 终局闭环与发布硬化**.

M45 deliberately adds no new player-facing gameplay. It adds cross-milestone endgame regression coverage and strengthens release-JAR content verification after the accepted M39–M44 endgame slices. Production runtime Java/resources/registries/recipes/worldgen are unchanged, and the M45 release JAR is byte-identical to M44 final accepted.

Candidate validation: JUnit **210/210**, GameTest **112/112**, final clean test/build + release verification PASS, dedicated-server smoke PASS and real Xvfb + Mesa llvmpipe client smoke PASS.

**M46+ remains locked until M45 user-local acceptance.**

The exact M45 candidate full-project ZIP is the authoritative buildable source artifact; GitHub records cross-conversation status and is not a guaranteed byte-for-byte complete source mirror.

## Requirements

- Minecraft Java Edition 1.21.1
- NeoForge 21.1.244
- Java 21

Optional integrations: Jade and JEI. Neither is a hard dependency.

## License

Sky Remnants is **All Rights Reserved**. See `LICENSE` and `THIRD_PARTY_NOTICES.md`.
