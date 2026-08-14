# Sky Remnants Project Status

## Authoritative accepted baseline

**M42 — Far Horizon Observatory / 远穹观测站** — accepted and closed on 2026-08-14.

The original M42 local checklist passed, then the candidate-r2 focused recheck also passed: the distant-echo Deep Scan cue is accepted and the core Barrel correctly adds 4–8 Bottles o' Enchanting. No runtime change was made after that acceptance.

Accepted validation: JUnit **193/193** (53 suites), GameTest **107/107 in 4.007 s**, clean build/release verification PASS, dedicated-server smoke PASS, real Xvfb + llvmpipe client smoke PASS, unexpected client errors/missing resources/new crashes 0.

Frozen contracts remain unchanged: `SkyWorldData` v11, protocol 1, Basic Airship 91 slots, Large Expedition Vessel data-v1/128 slots, both input payload schemas v1, M40 Dockyard Deployment and M41 Skybridge Builder.

Accepted compatibility limit: already-generated qualifying 4200+ DEEP ecology chunks are never rewritten and may lack the Observatory structure/caches. Judge structure/rewards on newly generated qualifying far terrain. The distant-echo cue is only a progression hint and does not expose exact out-of-range coordinates.

The exact M42 final accepted full-project ZIP is the authoritative buildable source artifact; GitHub remains a cross-conversation status index rather than a guaranteed complete source mirror.

**M43 is unlocked for one focused scope-selection step. M44+ remains gated behind M43 local acceptance.**
