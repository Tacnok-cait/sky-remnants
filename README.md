# Sky Remnants / 天穹残岛

Sky Remnants is a Minecraft Java Edition 1.21.1 + NeoForge sky-island survival mod focused on island building, approachable automation/logistics, modular airship exploration, sparse valuable outer islands and voluntary combat challenges.

## Project status

Authoritative accepted baseline: **M38 — Large Expedition Vessel playable vertical slice — accepted and closed on 2026-08-13**.

Current candidate: **M39 — Deep Convergence challenge vertical slice**. M40+ remains locked until M39 user-local acceptance.

M39 adds one repeatable high-threat DEEP challenge profile while preserving both accepted vessel contracts. Read:

- `docs/PROJECT_STATUS.md`
- `docs/NEXT_WORK.md`
- `docs/M39_UPDATE_NOTES_20260813.md`
- `docs/M39_MIGRATION_CONTRACT_20260813.md`
- `docs/M39_AUTOMATED_VALIDATION_20260813.md`
- `docs/M39_ACCEPTANCE_CHECKLIST_20260813.md`
- `docs/M39_KNOWN_LIMITATIONS_20260813.md`

## Requirements

- Minecraft Java Edition 1.21.1
- NeoForge 21.1.244
- Java 21

Optional integrations: Jade and JEI. Neither is a hard dependency.

## M39 candidate validation

- JUnit **176/176**, 50 suites;
- GameTest **99/99 in 3.425 s**;
- release build + `verifyReleaseJarContents` PASS;
- dedicated-server smoke PASS (`Done (0.381s)!` → normal save/stop);
- real Xvfb + Mesa llvmpipe client TitleScreen/resource smoke PASS;
- unexpected client errors: 0;
- missing model/texture/resource regressions: 0;
- new crash reports: 0.

The M39 arena itself still requires user-local in-world visual/combat acceptance; the automated client run verifies the real client lifecycle and resources but stops at TitleScreen.

## License

Sky Remnants is **All Rights Reserved**. See `LICENSE` and `THIRD_PARTY_NOTICES.md`.
