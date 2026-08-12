# Sky Remnants / 天穹残岛

Sky Remnants is a Minecraft Java Edition 1.21.1 + NeoForge sky-island survival mod focused on island building, approachable automation and logistics, modular airship exploration, sparse valuable outer islands, and voluntary combat challenges.

## Accepted development baseline

**M37 — Large Expedition Vessel Compatibility Foundation — accepted and closed on 2026-08-12.**

M33–M37 have all passed user-local acceptance. The exact accepted source artifacts are the local final full-project ZIPs recorded in `docs/M33_M37_ACCEPTANCE_CHAIN_20260812.md`; finalization for each milestone is documentation/status-only relative to its tested candidate/provisional checkpoint.

M37 preserves the accepted Basic Airship 91-slot contract and introduces a narrow generic docking/logistics facade plus an independent version-1 Large Expedition Vessel data contract. M37 deliberately does **not** register a half-playable large-vessel entity.

## Requirements

- Minecraft Java Edition 1.21.1
- NeoForge 21.1.244
- Java 21

Optional integrations: Jade and JEI. Neither is a hard dependency.

## M37 accepted validation

- JUnit **162/162**, 48 suites;
- GameTest **92/92 in 2.177 s**;
- clean build + release-JAR verification PASS;
- dedicated-server smoke PASS;
- real Xvfb + Mesa llvmpipe client PASS;
- user-local M33–M37 acceptance PASS.

## M37 source identity

- final accepted full-project SHA-256: `91520ce27a3d9e04815511ec4f8e2a7bfea980d9bce5314722e2bedf120eae2e`;
- M36 final → M37 final incremental SHA-256: `a69717bee3a2803cca70f6b410f59574a370f390b49752ab5aba5666187db986`;
- accepted M37 JAR SHA-256: `443ea918da4381b01b4a622985e8c90cf69f806a615a4d257856d098e5dca6b5`.

The exact accepted binary source ZIP remains the authoritative local artifact. The current GitHub connector records its identity and acceptance chain but does not directly ingest local `/mnt/data` ZIP bytes.

## Next milestone

**M38 — Large Expedition Vessel playable vertical slice.**

M38 must implement the first actual large-vessel entity/item/menu/renderer against the independent 128-slot M37 contract without reinterpreting the Basic Airship 91-slot layout.

## License

Sky Remnants is **All Rights Reserved**. See `LICENSE` and `THIRD_PARTY_NOTICES.md`.
