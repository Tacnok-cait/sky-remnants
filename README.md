# Sky Remnants / 天穹残岛

Sky Remnants is a Minecraft Java Edition 1.21.1 + NeoForge sky-island survival mod focused on island building, approachable automation/logistics, modular airship exploration, sparse valuable outer islands and voluntary combat challenges.

## Project status

Authoritative accepted baseline: **M39 — Deep Convergence challenge vertical slice — accepted and closed on 2026-08-13**.

M40 is unlocked for one focused endgame vertical slice; no M40 runtime implementation is included in the M39 finalization.

## Accepted M39 validation

- JUnit **176/176**, 50 suites;
- GameTest **99/99 in 3.425 s**;
- release build + `verifyReleaseJarContents` PASS;
- dedicated-server smoke PASS;
- real Xvfb + Mesa llvmpipe client smoke PASS;
- unexpected client errors 0;
- missing model/texture regressions 0;
- crash reports 0;
- user-local M39 gameplay/visual acceptance PASS.

### Retained terrain compatibility note

Already-generated DEEP challenge islands are not rewritten. An old island can therefore show old terrain together with newer Deep Convergence presentation. **Use newly generated DEEP terrain to judge the M39 arena appearance.**

## Requirements

- Minecraft Java Edition 1.21.1
- NeoForge 21.1.244
- Java 21

Optional integrations: Jade and JEI. Neither is a hard dependency.

## License

Sky Remnants is **All Rights Reserved**. See `LICENSE` and `THIRD_PARTY_NOTICES.md`.
