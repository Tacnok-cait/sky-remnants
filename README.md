# Sky Remnants / 天穹残岛

Sky Remnants is a Minecraft Java Edition 1.21.1 + NeoForge sky-island survival mod focused on island building, approachable automation/logistics, modular airship exploration, sparse valuable outer islands and voluntary combat challenges.

## Project status

Authoritative accepted baseline: **M42 — Far Horizon Observatory / 远穹观测站 — accepted and closed on 2026-08-14**.

The original M42 local checklist and the focused r2 distant-echo/core-XP recheck both passed. M43 is unlocked for one focused scope-selection step; no M43 runtime implementation is part of the M42 finalization.

M42 keeps the 4200+ staged long-range expedition loop, adds the Deep Scan distant-echo cue, and keeps the three detached archive platforms with the accepted reward bundle plus 4–8 Bottles o' Enchanting in the core cache. It adds no vessel tier, quest lock, energy network or persistence schema.

## Requirements

- Minecraft Java Edition 1.21.1
- NeoForge 21.1.244
- Java 21

Optional integrations: Jade and JEI. Neither is a hard dependency.

## M42 accepted validation

- JUnit **193/193**, 53 suites;
- GameTest **107/107 in 4.007 s**;
- release build + JAR verification: PASS;
- dedicated-server smoke: PASS;
- real Xvfb + Mesa llvmpipe client smoke: PASS;
- original M42 local acceptance: PASS;
- M42-r2 focused local recheck: PASS.

Important compatibility note: pre-M42 generated qualifying very-far DEEP ecology chunks are never rewritten and can lack the new Observatory structure/caches. Judge M42 structure/rewards on newly generated 4200+ terrain.

The exact M42 final accepted full-project ZIP is the authoritative buildable source artifact; GitHub records status/scope and is not a guaranteed byte-for-byte complete source mirror.

## License

Sky Remnants is **All Rights Reserved**. See `LICENSE` and `THIRD_PARTY_NOTICES.md`.
