# Sky Remnants Project Status

## Authoritative accepted baseline

**M44 — Heavy Core progression closure / 沉重核心进度闭环** — accepted and closed on 2026-08-15.

M44 passed the frozen candidate automation chain and user-local acceptance. The final accepted runtime is byte-identical to the tested candidate.

## Current candidate

**M45 — Endgame Closure & Release Hardening / 终局闭环与发布硬化** — candidate, awaiting user-local acceptance.

M45 intentionally adds no new gameplay family. The accepted post-M39 endgame backlog is now materially closed by M39 repeatable challenge, M40/M41 construction utilities, M42 long-range expedition, M43 smithing relic progression and M44 vanilla Mace closure. M45 hardens those systems together through cross-milestone JUnit/GameTest coverage and stronger release-JAR content checks.

Candidate validation: JUnit **210/210** (56 suites), GameTest **112/112 in 3.463 s**, final clean test/build + release verification PASS, dedicated-server `Done (0.369s)!` + normal save/stop PASS, real Xvfb + llvmpipe client TitleScreen/screenshot/graceful-exit PASS, unexpected client errors/missing resources/new crashes 0.

M45 changes no production runtime Java/resources/registries/recipes/worldgen. Its release JAR is byte-identical to M44 final accepted: SHA-256 `a58bb98ebd31679d0f8209dcf66fcbd1723f079e28b84696096e47a88454770c`.

Frozen contracts remain unchanged: `SkyWorldData` v11, protocol 1, Basic Airship 91 slots, Large Expedition Vessel data-v1/128 slots, both input payload schemas v1 and all accepted world-content ordering through M44.

The exact M45 candidate full-project ZIP is the authoritative buildable source artifact; GitHub remains a cross-conversation status index rather than a guaranteed complete source mirror.

**M46+ remains locked until M45 local acceptance.**
