# Sky Remnants — Post-M32 Development Roadmap — 2026-08-12

Status: **post-M32 implementation plan**. M32 remains the immutable accepted baseline. This document defines future work; it is not part of the M32 runtime artifact.

## Fixed direction carried forward

The previously frozen long-term direction remains unchanged:

- M33+: dangerous outer ring;
- M34+: End fragments;
- M35+: drifting End City / Shulker progression;
- M36+: ancient debris / Wither progression;
- M37+: large expedition vessels and endgame integration.

Long-term rules remain: no required normal Nether/End dimension route, no routine Elytra progression, ordinary resources may become automatable after discovery, Shulker Shells/Ancient Debris/Wither Skeleton Skulls retain exploration value, airships remain the core long-distance vehicle, and no autopilot/moving-block ship/power network/maintenance loop/forced base raid is introduced.

## Architecture observations from M32

Accepted distance tiers are OPENING <700, EXPEDITION 700–1599, OUTER 1600–2999 and DEEP >=3000. Accepted scanner ranges are 600 / 1600 / 2200.

M30/M31 already consume most DEEP `CHALLENGE` islands through Ember then Blockade selection. Later milestones therefore must not depend on large amounts of leftover DEEP CHALLENGE space. Future content is deliberately distributed across broad kinds without stealing accepted profiles:

- M33: leftover OUTER challenge space;
- M34: remaining DEEP resource space;
- M35: remaining DEEP ruin space;
- M36: remaining DEEP resource space after M34.

No milestone may remap an island already classified by an accepted earlier milestone.

# M33 — Dangerous Outer Ring / Deep Survey Bridge

Purpose: establish the first 15h+ dangerous outer-ring layer and create a navigation bridge from the accepted 2200-block expedition range into DEEP, without adding End content early.

M33 is intentionally narrow: **one new scanner tier + one voluntary outer-ring challenge family + compatibility tests**.

### Deep-range Scan Module

Proposed ID: `skyremnants:deep_range_scan_module`.

- append-only item ID;
- uses an existing general module slot;
- requires Expedition retrofit to function;
- mutually exclusive with Basic/Long-range scan modules;
- no fifth module slot and no 91-slot-container change;
- target scan radius: **3200 blocks**.

Ordinary crafting uses only accepted M26–M31 materials: Long-range Scan Module, diamonds, amethyst, Breeze Rod(s), Blaze Rod and redstone/copper. Do not create a multi-part survey-component tech tree.

Compact scan policy becomes generic: Basic nearest-first; Long-range keeps one nearby landmark and prioritizes unvisited >600 targets; Deep-range keeps one nearby landmark and prioritizes unvisited >2200 targets. No scrolling map/search UI in M33.

### Storm Relay / 风暴中继站

Working profile: `STORM_RELAY`.

Selection order:

1. preserve M30 Ember exactly;
2. preserve M31 Blockade exactly;
3. consume only CHALLENGE islands still STANDARD;
4. OUTER band only, with preference for roughly 2200–2999;
5. no DEEP selection in M33.

Implementation direction:

- reuse Wind Eye pedestal/state machine;
- append a TrialProfile rather than adding a new challenge Block/BE/Menu unless proven necessary;
- use existing vanilla enemies such as Breeze, Stray/Skeleton, Pillager and Vindicator;
- difficulty comes from knockback, crossfire, terrain and cover, not health inflation.

First clear grants Deep-range Scan Module x1 as the fast combat route. Ordinary crafting remains the non-combat alternative, so M34 is not challenge-locked. Repeat rewards remain in already accepted material families and must not leak End resources.

Persistence target: no `SkyWorldData` bump, no payload change, no slot migration, `supply_manifest` unchanged.

Required tests freeze M32 compatibility, Ember/Blockade selection, OUTER-only Storm Relay selection, scanner mutual exclusion, 600/1600/2200/3200 ranges, >2200 compact-row prioritization, module save/reload, no M34 resource leakage and retained-world/server/multiplayer authority.

# M34 — End Fragments / First Deep-Band End Resources

Working profile: `END_FRACTURE`.

- DEEP only;
- RESOURCE broad kind;
- preserve Deep Crystal first and consume only remaining STANDARD resource islands.

Planned content: End Stone, Obsidian accents/nodes, Chorus plants/flowers, real Endermen and controlled first Ender Pearl availability. No Shulker, End City or Elytra in M34.

M34 guarantees first Ender Pearl acquisition, not necessarily final bulk automation. Before M35, run a technical spike on Enderman automation through the existing Hostile Mob Inducer. Preferred route is an append-only Enderman sample/inducer mode only if induced Endermen can be contained intuitively without changing natural Enderman behavior. If that cannot be done reliably, carry the renewable-pearl decision explicitly into M35 instead of shipping a fragile farm.

Prefer no `SkyWorldData` bump.

# M35 — Drifting End City / Shulker Progression

Working profile: `DRIFTING_END_CITY`.

- DEEP RUIN only;
- preserve M29 Ashen/Soul Rift first;
- consume only RUIN islands still STANDARD after M29.

Planned content: compact drifting End City, real Shulkers, Purpur/End materials and high-value exploration/ship/building loot.

Shulker Shells remain exploration/challenge value: no Shulker sample, no ordinary Inducer Shulker mode and no shell cultivation.

M35 does not make Elytra a normal repeatable loot source.

M35 must close the ordinary Ender Pearl automation decision. Preferred route, if the spike passes, is append player-kill Enderman sample + Inducer Enderman mode with teleport restriction only for inducer-tagged Endermen inside the work area; natural Endermen remain vanilla. If unreliable, use a simpler existing-system alternative rather than adding a broad unrelated machine network.

# M36 — Ash Crown Forge / Ancient Debris + Wither

Working profile: `ASH_CROWN_FORGE`.

- DEEP RESOURCE islands;
- preserve Deep Crystal first;
- preserve M34 End Fracture second;
- consume only resource islands still STANDARD afterward.

Outer/mining section: basalt/blackstone/soul materials and small controlled Ancient Debris presence. No Ancient Debris sample or renewable machine recipe.

Optional fortress/core section: real Wither Skeletons; skulls remain player/exploration/challenge drops; no Wither Skeleton sample/inducer mode. Boss activation remains voluntary and physically separated from player bases.

Use the vanilla Wither combat model only if a generated challenge site can contain it without globally altering normal mob griefing. M36 requires an arena-containment technical spike. If challenge-specific terrain protection is necessary, scope it only to the active generated arena; never disable global mob griefing and never create forced base attacks.

Ancient Debris/Netherite remains exploration-heavy, Wither Skeleton Skulls remain rare, and Nether Star remains boss-level value.

# M37+ — Large Expedition Vessel and Endgame Integration

Split rather than build as one oversized milestone.

## M37 — large-vessel compatibility foundation

- decide entity/data model first;
- do not expand/reinterpret the accepted Basic Airship 91-slot layout;
- prefer a new large-vessel entity/inventory contract over silently converting old airships;
- define Docking Base/logistics/chunk-loading compatibility;
- define save/version tests and multiplayer authority;
- no moving-block construction, autopilot or required multiplayer crew-role system.

## M38 — Large Expedition Vessel vertical slice

Target larger cargo, more module choice, long-distance endurance and existing fuel/logistics concepts without power networks or maintenance wear. Exact slot counts wait for M37 compatibility work.

## M39+ — Endgame exploration/challenge closure

Integrate M34–M36 resources into optional deep ruins, repeatable high-threat challenges, advanced construction/ship utility and optional endgame equipment/tools. Do not turn this into a quest-locked linear campaign; prepared players may still attempt higher-tier content early and advanced equipment may strongly overpower earlier regions.

## Global gates

Each implementation milestone still requires incremental + full project packages, update notes, PowerShell commands, acceptance checklist, known limitations/migration impact, actual automated validation, retained-world verification, dedicated server, real client and multiplayer/server-authority checks where relevant.

Schema/registry/persistence changes must be explicit and append-only where possible. If a new schema version is genuinely required, migration is implemented/tested before gameplay expansion continues.

## Immediate next action

**Implement M33 only.** M34 remains locked until M33 local acceptance, and later milestones remain sequentially gated.
