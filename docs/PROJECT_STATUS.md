# Sky Remnants Project Status

## Authoritative accepted baseline

**M41 — Skybridge Builder / 天桥构筑器** — accepted and closed on 2026-08-14.

## Current candidate

**M42 — Far Horizon Observatory / 远穹观测站** — candidate, awaiting user-local acceptance.

M42 adds one staged 4200+ DEEP ecology expedition objective after the accepted M28/M30 selectors. It preserves `SkyWorldData` v11, protocol 1, Basic Airship 91 slots, Large Expedition Vessel data-v1/128 slots, M40 Dockyard Deployment and M41 Skybridge Builder.

Automated candidate validation: JUnit **193/193** (53 suites), GameTest **107/107 in 3.144 s**, clean build/release verification PASS, dedicated-server smoke PASS, real Xvfb + llvmpipe client smoke PASS, unexpected client errors/missing resources/new crashes 0.

Important compatibility limit: already-generated qualifying 4200+ DEEP ecology chunks are never rewritten and may lack the new Observatory structure/caches. Judge M42 structure/rewards on newly generated far terrain.

The exact M42 full candidate ZIP is the authoritative buildable source artifact; GitHub is currently a cross-conversation status index rather than a complete source mirror.

**M43+ remains locked until M42 local acceptance.**
