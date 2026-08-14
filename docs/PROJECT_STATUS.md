# Sky Remnants Project Status

## Authoritative accepted baseline

**M43 — Smithing Reliquary / 锻造遗库** — accepted and closed on 2026-08-14.

## Current candidate

**M44 — Heavy Core progression closure / 沉重核心进度闭环** — candidate, awaiting user-local acceptance.

M44 uses the vanilla Minecraft 1.21.1 Heavy Core and Mace rather than adding custom combat equipment. Each accepted Deep Convergence pedestal can award exactly one Heavy Core. Append-only pedestal NBT boolean `heavy_core_reward_claimed` defaults false on old saves, so a pre-M44 already-cleared pedestal can still earn its one core on the next successful clear.

The one Heavy-Core payout omits only ordinary Gold to stay within the accepted six output slots. Later clears restore the normal M39 Gold reward and never repeat Heavy Core. Deep Convergence scan hints now expose `Heavy Core / 沉重核心` + `Challenge / 挑战`.

Candidate validation: JUnit **205/205** (55 suites), GameTest **111/111 in 3.492 s**, final clean build/release verification PASS, dedicated-server `Done (0.352s)!` + normal save/stop PASS, real Xvfb + llvmpipe client TitleScreen/screenshot/graceful-exit PASS, unexpected client errors/missing resources/new crashes 0.

Frozen contracts remain unchanged: `SkyWorldData` v11, protocol 1, Basic Airship 91 slots, Large Expedition Vessel data-v1/128 slots, both input payload schemas v1 and the accepted M43 external-island profile set. M44 adds no custom Heavy Core/Mace ID and no new world-content selection.

The exact M44 candidate full-project ZIP is the authoritative buildable source artifact; GitHub remains a cross-conversation status index rather than a guaranteed complete source mirror.

**M45+ remains locked until M44 local acceptance.**
