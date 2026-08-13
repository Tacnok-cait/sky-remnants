# Sky Remnants / 天穹残岛

Sky Remnants is a Minecraft Java Edition 1.21.1 + NeoForge sky-island survival mod focused on island building, approachable automation/logistics, modular airship exploration, sparse valuable outer islands and voluntary combat challenges.

## Project status

Authoritative accepted baseline: **M39 — Deep Convergence — accepted and closed on 2026-08-13**.

Current candidate: **M40 — Dockyard Deployment Module / 船坞部署模块**. M41+ remains locked until M40 user-local acceptance.

M40 adds one Large Expedition Vessel-only construction utility: from a safe floating anchor it can transactionally deploy a compact 5×5 Stone Brick pad with the existing real Docking Base at center. The feature refuses any occupied target cell, consumes materials only after successful binding, and does not alter either accepted vehicle inventory schema.

Candidate validation: JUnit **181/181**; GameTest **101/101**; release verification, dedicated-server smoke and real Xvfb + llvmpipe client resource smoke PASS; unexpected client errors/missing resources/crash reports 0.

The exact M40 full candidate ZIP remains the authoritative candidate source artifact; GitHub records cross-conversation status and scope rather than claiming byte-for-byte ZIP ingestion.

## Requirements

- Minecraft Java Edition 1.21.1
- NeoForge 21.1.244
- Java 21

Optional integrations: Jade and JEI. Neither is a hard dependency.

## License

Sky Remnants is **All Rights Reserved**. See `LICENSE` and `THIRD_PARTY_NOTICES.md`.
