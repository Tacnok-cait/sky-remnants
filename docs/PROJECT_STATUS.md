# Sky Remnants Project Status

## Authoritative accepted baseline

**M45 — Endgame Closure & Release Hardening / 终局闭环与发布硬化** — accepted and closed on 2026-08-15.

M45 passed the frozen candidate automation chain and user-local acceptance. Finalization is documentation/status-only; the final accepted runtime JAR is byte-identical to the tested candidate and to M44 final accepted.

Accepted validation: JUnit **210/210** (56 suites), GameTest **112/112 in 3.463 s**, final clean test/build + release verification PASS, dedicated-server start/save/stop PASS, real Xvfb + llvmpipe client TitleScreen/screenshot/graceful-exit PASS, and user-local M45 acceptance **PASS**.

M45 adds no gameplay family and changes no production runtime Java/resources/registries/recipes/worldgen. Frozen contracts remain unchanged: `SkyWorldData` v11, protocol 1, Basic Airship 91 slots, Large Expedition Vessel data-v1/128 slots, both input payload schemas v1, external-island profiles through Smithing Reliquary ordinal 15, M44 Heavy Core flag semantics and all accepted M40–M44 behavior.

Accepted known limitations remain: non-destructive old-terrain seams from M39/M42/M43 are not rewritten, the long-standing M19 already-open multiplayer supply-menu refresh limitation remains, and historical M16 furnace telemetry timing flakiness remains an observation despite the final M45 112/112 GameTest pass.

The exact M45 final accepted full-project ZIP is the authoritative buildable source artifact; GitHub remains a cross-conversation status index rather than a guaranteed complete source mirror.

**M46 is unlocked for one fresh scope-selection step. Do not automatically add another endgame island/equipment family without a demonstrated design gap or an explicitly approved new direction.**
