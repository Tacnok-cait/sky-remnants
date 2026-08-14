# Sky Remnants Project Status

## Authoritative accepted baseline

**M42 — Far Horizon Observatory / 远穹观测站** — accepted and closed on 2026-08-14.

## Current candidate

**M43 — Smithing Reliquary / 锻造遗库** — candidate, awaiting user-local acceptance.

M43 appends one deep rare-ruin profile at ordinal 15 using only residual 3400+ DEEP ecology after accepted M28/M30/M42 selection. It does not take accepted M35 RUIN islands. The site provides one guaranteed vanilla Netherite Upgrade Smithing Template plus small smithing support materials, while explicitly excluding Ancient Debris, Netherite Scrap and Netherite Ingots so the accepted M36 debris route remains relevant.

Frozen contracts remain unchanged: `SkyWorldData` v11, protocol 1, Basic Airship 91 slots, Large Expedition Vessel data-v1/128 slots, both input payload schemas v1, M40 Dockyard Deployment, M41 Skybridge Builder and M42 Far Horizon.

Candidate validation: JUnit **199/199** (54 suites), GameTest **109/109 in 6.501 s**, post-clean build/release verification PASS, dedicated-server start/save/stop PASS, real Xvfb + llvmpipe client TitleScreen/screenshot/graceful-exit PASS, unexpected client errors/missing resources/new crashes 0.

Compatibility limit: pre-generated qualifying 3400+ residual DEEP ecology chunks are never rewritten and may keep old ecology terrain/fauna with no new Reliquary cache. Judge M43 on newly generated qualifying terrain.

The exact M43 candidate full-project ZIP is the authoritative buildable source artifact; GitHub remains a cross-conversation status index rather than a guaranteed complete source mirror.

**M44+ remains locked until M43 local acceptance.**
