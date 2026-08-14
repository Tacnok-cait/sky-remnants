# Sky Remnants Project Status

## Authoritative accepted baseline

**M43 — Smithing Reliquary / 锻造遗库** — accepted and closed on 2026-08-14.

M43 passed the frozen candidate automation chain and the complete user-local acceptance checklist. The final accepted runtime is byte-identical to the tested candidate.

Accepted validation: JUnit **199/199** (54 suites), GameTest **109/109 in 6.501 s**, post-clean build/release verification PASS, dedicated-server start/save/stop PASS, real Xvfb + llvmpipe client smoke PASS, and user-local M43 acceptance **PASS**.

Frozen contracts remain unchanged: `SkyWorldData` v11, protocol 1, Basic Airship 91 slots, Large Expedition Vessel data-v1/128 slots, both input payload schemas v1, M40 Dockyard Deployment, M41 Skybridge Builder and M42 Far Horizon.

Accepted compatibility limit: pre-generated qualifying 3400+ residual DEEP ecology chunks are never rewritten and may retain old ecology terrain/fauna with no new Reliquary cache. Judge the vault/cache on newly generated qualifying terrain.

The exact M43 final accepted full-project ZIP is the authoritative buildable source artifact; GitHub remains a cross-conversation status index rather than a guaranteed complete source mirror.

**M44 is unlocked for one focused scope-selection step. M45+ remains gated behind M44 local acceptance.**
