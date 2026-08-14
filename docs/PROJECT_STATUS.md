# Sky Remnants Project Status

## Authoritative accepted baseline

**M41 — Skybridge Builder / 天桥构筑器** — accepted and closed on 2026-08-14.

## Current candidate

**M42 — Far Horizon Observatory / 远穹观测站 — candidate r2**.

The original M42 candidate passed the full user-local acceptance. Based on that feedback, r2 keeps the 4200+ two-stage expedition and three-platform layout, and makes only two zero-migration polish changes:

- Deep Scan now shows a distant-echo cue when the current results do not resolve a Far Horizon Observatory, pointing the player toward an outer staging point + rescan;
- the Far Horizon core cache keeps Heart of the Sea ×1, Nautilus Shell ×8 and Sea Lantern ×4–6, and adds Bottle o' Enchanting ×4–8 as a small universal third-platform reward.

No registry ID, payload, ContainerData, Data Component, SavedData, vehicle inventory, world identity/position, or persisted schema changed. Pre-generated qualifying 4200+ DEEP ecology chunks remain non-destructively untouched and may lack the Observatory structure/caches.

Candidate r2 validation: JUnit **193/193** (53 suites), GameTest **107/107 in 4.007 s**, clean build/release verification PASS, dedicated-server smoke PASS, real Xvfb + llvmpipe client TitleScreen/resource/graceful-exit smoke PASS, unexpected client errors/missing resources/new crashes 0.

Only two focused local rechecks remain: distant-echo readability and the core-cache 4–8 Bottle o' Enchanting addition.

The exact M42 r2 full candidate ZIP is the authoritative buildable source artifact; GitHub remains a cross-conversation status index rather than a complete source mirror.

**M43+ remains locked until the M42 r2 focused recheck passes.**
