# Sky Remnants / 天穹残岛 — Post-release Development Roadmap

Status: design baseline for post-first-release development, recorded 2026-08-10.

## 1. Authoritative starting point

Development starts from the accepted M24 / `1.0.0-rc.1` source baseline. M24 itself remains frozen except for release/hotfix work.

Technical baseline remains:

- Minecraft Java Edition 1.21.1
- NeoForge 21.1.244 accepted project baseline
- Java 21
- Mod ID `skyremnants`
- Jade / JEI optional only
- single-player, dedicated-server, multiplayer, save compatibility and performance are mandatory acceptance dimensions

The complete user-returned M24 final accepted source ZIP remains the authoritative runtime source snapshot. This repository is the cross-conversation status and design index unless/until a complete binary-safe source import is maintained here.

## 2. Post-release design rules

The post-release expansion must preserve the existing project direction:

1. No power grid, voltage tiers, cable network or fluid-pipe technology tree.
2. No material-tier machine ladder or routine machine maintenance.
3. Existing machines should gain new supported resources/behaviors before new machine classes are invented.
4. Basic renewable resources should become easy to automate after first discovery.
5. Exploration remains valuable through first-discovery samples, large one-time hauls, immovable production nodes, rare construction/ship parts and voluntary challenge rewards.
6. Combat remains voluntary and uses vanilla-style player controls.
7. Difficulty comes mainly from enemy combinations, terrain and mechanics rather than unlimited health scaling.
8. Recipes remain resource-gated rather than quest/progression-locked.
9. Airship flight remains a core exploration activity; do not add routine autopilot in the 6–15h expansion.
10. Existing save IDs, Data Components, NBT, `SkyWorldData`, airship slot semantics and network payloads must not be silently broken. Any schema change requires an explicit migration version and migration test.
11. Do not require Nether or End access solely to obtain vanilla progression materials. Distant outer islands may contain dimension-origin materials as fragmented foreign-biome/island remnants.
12. Elytra is not part of normal medium-term loot because it can invalidate the airship exploration role. Ancient debris/netherite, shulker shells and similar high-value materials remain exploration/challenge resources rather than ordinary infinite cultivation targets unless separately approved.

## 3. Long-term resource model

Post-release resources are divided into four functional categories.

### A. Fully automatable basic resources

Examples: stone, wood, crops, iron, copper, gold, ordinary animal products and ordinary hostile-mob drops.

Once the player obtains the first valid source/sample, repeated manual harvesting should not remain necessary.

### B. Slowly automatable rare resources

Example: diamond.

A first sample may enable low-rate Mineral Cultivation Bed production. Exploration still provides a much larger immediate haul.

### C. Immovable outer-island production nodes

Example: budding amethyst.

The valuable source cannot simply be moved home, encouraging a remote outpost using the existing Docking Base, Worker, Pipes and Chunk Loader.

### D. Low-frequency high-value expedition/challenge resources

Examples: shulker shells, ancient debris, wither skeleton skulls, advanced airship-frame parts and special challenge materials.

These should mainly pay for durable/permanent upgrades rather than recurring maintenance consumables.

## 4. Release train overview

### Expansion A — 6–15h: Expedition Network

Goal: turn the first-release airship and automation systems into a network of useful remote outposts and introduce the first dimension-fragment resources without opening full Nether/End dimensions.

Proposed milestones: M25–M32.

### Expansion B — 15–25h: Dangerous Outer Ring

Goal: add higher-risk island groups, fuller Nether-fragment content, first End-fragment content, advanced ordinary-mob automation and stronger equipment/ship choices without dynamic level scaling.

Proposed milestones: M33–M36.

### Expansion C — 25h+: Large Expeditions and High-value Challenges

Goal: support long expeditions, a distinct large airship role, rare End/Nether materials and optional high-end repeated challenges while preserving the sandbox/building loop.

Proposed milestones: M37–M40.

The exact public version numbers are intentionally not locked by this roadmap; they should be chosen when each expansion is feature-complete and release-tested.

---

# Expansion A — 6–15h / M25–M32

## M25 — Post-release compatibility foundation

### Scope

- branch from the M24 accepted source baseline;
- add an explicit post-release data/schema version strategy;
- document registry-ID freeze rules;
- add migration test fixtures for at least one M24 accepted world copy or synthetic equivalent;
- add generic outer-island distance/tier metadata without changing existing first-release island results;
- establish new GameTest/JUnit naming and release-package checks for M25+ content;
- keep M24 first-release behavior unchanged.

### Acceptance

- M24 worlds load/save/reload without loss;
- existing island IDs, machine inventories, airships, modules, manifests, challenge data and player scan state remain valid;
- old generated chunks are not regenerated or overwritten;
- newly generated distant chunks can use the new expansion island pool;
- unit tests, clean build, GameTest, dedicated server and real headless client pass.

### Why first

Every later worldgen/content milestone will depend on save-compatible distant-island generation. Migration infrastructure must exist before new persistent data is written.

## M26 — Deep Crystal Fault Island and diamond progression

### Scope

Add a distant `Deep Crystal Fault` resource island, normally weighted into roughly the 700–1600 block exploration band without a hard invisible boundary.

Content:

- deepslate/tuff/calcite/amethyst geology;
- a small controlled amount of natural diamond ore/diamond loot;
- one renewable-use Diamond Mineral Sample;
- budding amethyst nodes that remain vanilla-like and cannot simply be mined/moved normally;
- worldgen variants and scan-category support.

Extend the existing Mineral Cultivation Bed:

- Diamond Sample support;
- low-rate diamond output;
- no new diamond-specific machine.

Initial balance target for an ordinary midgame production setup: roughly 3–6 diamonds/hour before later tuning.

### Acceptance

- first discovery can produce diamond without combat gating;
- diamond cultivation persists/restarts correctly;
- sample is not consumed if the existing sample model is catalytic;
- no duplication through unload/reload or recipe interruption;
- same-seed distant generation remains deterministic;
- existing first-release island generation remains unchanged in already-generated areas.

## M27 — Remote outposts, amethyst harvesting and long-range scanning

### Scope

Extend existing systems rather than adding a new logistics technology.

Worker:

- add mature amethyst-cluster harvesting mode;
- never break budding amethyst;
- clear blocked/no-target status reporting.

Long-range Scan Module:

- proposed scan radius approximately 1400–1800 blocks;
- exact island distance;
- broad island category;
- 1–2 representative resource hints;
- approximate threat tier;
- visited/unvisited state;
- selectable HUD navigation target.

Outpost loop:

- Docking Base + Worker + Pipe + storage + optional Chunk Loader must support a persistent remote amethyst operation.

### Acceptance

- player can establish a remote amethyst outpost and leave it running under the normal chunk-loading rules;
- chunk-loader quotas still apply;
- unloaded areas do not simulate illegal work;
- worker does not destroy the permanent node;
- long-range scanning does not reveal complete loot tables;
- scan data remains player-specific in multiplayer where current design requires it.

## M28 — Mist Marsh Ecology and ordinary hostile-resource expansion

### Scope

Add `Mist Marsh` ecology islands with:

- mangrove/mud/clay/swamp vegetation;
- slime encounters/source;
- optional environmental variants;
- no mandatory combat blocking ecological collection.

Extend existing Hostile Mob Inducer through the existing sample model:

- Slime Sample support;
- Creeper Sample support;
- ordinary automated slimeball and gunpowder production;
- Creepers retain meaningful explosion risk unless the player designs a safe kill system.

Where current Husbandry Manager architecture already supports extension safely, add cow/pig management rather than creating a second animal machine.

### Acceptance

- samples require a valid first encounter/kill according to existing sample rules;
- automated environmental kills do not incorrectly mint samples;
- inducer population caps and server performance safeguards still work;
- creeper farms cannot duplicate drops through explosion/entity edge cases;
- ecology resources can be collected without completing a challenge.

## M29 — Otherworld Fragment worldgen foundation and first Nether-material islands

### Scope

Introduce an explicit `Otherworld Fragment` island family. These are fragments/material ecosystems embedded in the main Sky Remnants world, not portals or miniature replacement dimensions.

First island set:

### Ashen Fragment

Possible materials:

- netherrack;
- blackstone;
- basalt;
- magma blocks;
- controlled lava;
- nether quartz ore;
- glowstone clusters.

### Soul Rift Fragment

Possible materials:

- soul sand;
- soul soil;
- basalt;
- bone blocks;
- blue-fire-compatible environment;
- small glowstone presence.

Mineral Cultivation Bed may gain Quartz Sample support after first discovery. Glowstone should initially retain stronger expedition value unless later tuning proves repetitive.

### Acceptance

- player can obtain quartz/soul materials without entering the Nether;
- no actual Nether access is required by this milestone;
- quartz sample/cultivation follows existing machine semantics;
- islands are visually and structurally distinct from ordinary Overworld geology;
- no change to existing M24 world preset identity or old generated chunks.

## M30 — Crimson/Warped ecology, Nether wart and Blaze Ruin

### Scope

Add ecology fragments containing controlled first-access sources of:

- crimson fungus/nylium-related vegetation;
- warped fungus/nylium-related vegetation;
- weeping/twisting vines;
- nether wart blocks/lighting vegetation where appropriate;
- nether wart as a controlled progression resource;
- soul sand from M29 completes vanilla-style wart farming.

Existing Worker should support nether wart where technically consistent with its crop model.

Add a voluntary `Blaze Ruin` / `Ember Ruin` encounter location:

- real Blaze access;
- blaze rods enter medium-term progression;
- Brewing Stand and potion systems become naturally available;
- Blaze should NOT automatically become a normal inducer target in M30 unless balance testing explicitly approves it.

### Acceptance

- Nether wart can be brought home and farmed using understandable vanilla rules;
- blaze rods require real expedition/challenge contact at this stage;
- ordinary ecology gathering is not challenge-gated;
- brewing progression works without a Nether portal;
- challenge reset/failure follows existing no-base-raid philosophy.

## M31 — Expedition airship retrofit, Drifting Dockyard and Blockade Outpost

### Scope

Do not create a material-tier airship ladder.

Add one durable `Expedition Hull Retrofit` path for the accepted reinforced/basic airship architecture, subject to implementation review of current slot persistence.

Target effects:

- approximately 4 module slots total;
- additional base storage;
- modest fuel-efficiency improvement;
- modest handling/speed improvement only;
- no durability/maintenance system;
- no autopilot.

Add `Drifting Dockyard` ruins:

- ship-module/metal/logistics loot;
- several layout variants;
- one exploration-side alternative source for the major retrofit part.

Add `Blockade Outpost` voluntary combat island:

- mixed vanilla-style enemy composition;
- terrain, cover, Breeze/Creeper/ranged pressure rather than massive health scaling;
- first-clear major retrofit component as the fast/clear acquisition route;
- exploration route remains a slower alternative.

### Acceptance

- upgrading an existing accepted airship preserves inventory/modules/state or performs an explicit tested migration;
- no slot-index corruption of old M24 ships;
- multiplayer driving/inventory authority remains server-side;
- logistics and supply manifest remain persistent;
- exploration path and combat path can both eventually obtain the retrofit component;
- no mandatory base attack is introduced.

## M32 — 6–15h integrated vertical-slice closure

### Scope

No major new system. Integration, balance and acceptance only.

Validate the intended 6–15h loop:

1. first-release base already stable;
2. obtain long-range scanning capability;
3. discover Deep Crystal / Mist Marsh / Otherworld fragments;
4. obtain diamond and at least one Nether-origin material family;
5. establish at least one useful remote outpost;
6. add slime/gunpowder or another ordinary mob resource to automation;
7. obtain potion access;
8. complete or bypass the Blockade combat route through exploration;
9. complete Expedition Hull Retrofit;
10. return to base with production and expedition networks both meaningful.

### Acceptance gate

- migration from M24 accepted save/state passes;
- no registry-ID breakage;
- all new worldgen is deterministic and does not rewrite generated islands;
- JUnit/clean build/release-JAR checks pass;
- all GameTests pass;
- fresh dedicated server smoke passes;
- real Linux headless client resource/model/crash checks pass;
- one-server/two-client smoke covers airship, scanning and shared inventories;
- user performs final Windows runClient/gameplay acceptance;
- deliver full project, incremental update from the last accepted milestone, update notes, PowerShell build commands, acceptance checklist and known limitations.

---

# Expansion B — 15–25h / M33–M36

## M33 — Dangerous Outer Ring framework and higher-threat island set

### Scope

- farther island weighting, approximately beyond the normal Expansion A band without hard barriers;
- fixed threat tiers, not player-level scaling;
- storm/high-wind terrain, larger hostile outposts, deep ruins and rare building-material islands;
- advanced ordinary mob encounters such as Witch where appropriate;
- preserve high-level gear dominance over earlier regions.

### Acceptance

- no infinite health scaling;
- players can retreat or bypass nonessential combat;
- distant generation remains deterministic and sparse;
- server/entity budgets remain controlled.

## M34 — End Fragment foundation

### Scope

Add `End Fragment` island family without requiring entry to the End dimension:

- end stone;
- chorus plants/flowers;
- purpur remnants;
- obsidian fragments;
- real Enderman encounters;
- short environmental records.

After a valid first Enderman encounter/kill, the existing inducer may gain Enderman Sample support if containment/performance tests are satisfactory.

Normal End Fragments do NOT provide Elytra.

### Acceptance

- chorus can be propagated through understandable vanilla rules;
- ender pearls become sustainably obtainable without trivializing first discovery;
- Enderman automation respects teleport/entity limits;
- no Elytra enters ordinary loot.

## M35 — Drifting End City Fragment and shulker-shell loop

### Scope

Add a rare End-city-like fragment:

- purpur structures;
- limited Shulkers;
- high-value loot;
- advanced airship/building materials;
- Shulker Shells available as repeat expedition/challenge loot.

Shulkers do not become ordinary Hostile Mob Inducer targets by default.

### Acceptance

- Shulker Boxes become possible but remain a meaningful expedition reward;
- no shell duplication through entity reset/unload;
- airship storage modules remain useful despite Shulker Boxes;
- normal world logistics are not replaced by a new digital-storage system.

## M36 — Ancient-debris / Wither progression and 15–25h closure

### Scope

Add very rare high-value Nether-fragment content such as:

- ancient-debris-bearing `Ancient Scorch` islands;
- ash-fortress fragments with Wither Skeletons;
- soul-sand availability already established;
- vanilla Wither summoning remains valid once the player obtains three skulls.

Rules:

- no ordinary Ancient Debris Mineral Sample/cultivation by default;
- Wither Skeletons do not automatically become an inducer target;
- Netherite and Nether Star remain high-value expedition/combat rewards;
- no custom fake replacement for the vanilla Wither is required.

### Closure acceptance

- 15–25h resource loop works without full Nether/End access;
- high-value materials remain scarce but not unique/lose-once;
- no recurring maintenance requirement is created;
- M24/M32 saves migrate correctly;
- full multiplayer/performance/client validation repeats.

---

# Expansion C — 25h+ / M37–M40

## M37 — Large Expedition Airship

### Scope

Only after the smaller airship loop has proven valuable.

Create a distinct vehicle role rather than a direct material upgrade:

- one driver;
- optional passengers;
- much larger base cargo;
- approximately 5–6 module slots;
- high fuel range;
- slower acceleration/turning;
- larger collision footprint and harder docking.

Small/reinforced/expedition-retrofit airships remain better for local agile travel.

Do NOT implement a moving-block ship construction system in this phase.

### Acceptance

- no shared-inventory/module duplication;
- passenger sync is stable on dedicated server;
- save/reload/docking/collision all pass;
- old airships remain useful rather than obsolete.

## M38 — High-value voluntary challenge framework

### Scope

Add one or more high-end repeatable challenges/Boss-scale encounters.

Rules:

- explicit player activation;
- no base raids;
- fixed threat level;
- mechanics/terrain/composition over giant health pools;
- rewards focus on durable ship modules, special equipment/tools, trophies and building materials;
- normal foundational resources are never locked behind these fights.

### Acceptance

- failure cannot damage the home base through unloaded/remote side effects;
- rewards cannot be duplicated by disconnect/restart;
- multiplayer scaling remains moderate and deterministic;
- high-tier gear clearly overpowers early regions.

## M39 — Long-term systems integration and world/save audit

### Scope

No feature expansion unless required to close a discovered gap.

Audit:

- M24 → M32 → M36 → current migrations;
- worldgen boundaries between old/new chunks;
- all airship generations and slot migrations;
- remote outpost chunk tickets;
- large pipe networks;
- animal/hostile entity caps;
- challenge cooldown persistence;
- official Jade/JEI optional runtime;
- one-server/multiple-client data authority;
- resource/model/texture completeness;
- server and headless-client performance.

## M40 — Long-term release-candidate closure

Release-engineering-only milestone analogous to M24.

- freeze gameplay;
- run full automated regression;
- run retained historical-world migration copies;
- verify official optional integrations;
- verify multiplayer/restart persistence;
- final presentation/log review;
- package full project, standard incremental update, verified JAR, hashes, notes and acceptance documents;
- update GitHub project status only after user local acceptance.

---

# 5. Standard workflow for every new milestone

Each milestone M25+ follows the same sequence.

## Step 1 — Re-establish accepted baseline

Before coding:

- read `docs/PROJECT_STATUS.md` and this roadmap;
- use the latest user-accepted full source, not an unaccepted candidate;
- compare against the previous accepted milestone;
- identify registry/NBT/Data Component/SavedData/network/worldgen migration impact;
- do not broaden scope beyond the milestone.

## Step 2 — Write implementation boundary

Before modifying code, record:

- exact feature list;
- explicit non-goals;
- new/changed registry IDs;
- persistent data changes;
- worldgen implications;
- multiplayer/network implications;
- expected tests;
- old-save migration behavior.

If a design decision conflicts with the accepted roadmap, resolve it explicitly instead of silently replacing the roadmap.

## Step 3 — Implement the smallest vertical slice

Prefer one complete usable path over several half-finished systems.

Implementation order generally:

1. data model / registration;
2. server-authoritative logic;
3. persistence/migration;
4. worldgen/data resources;
5. networking/menu sync if needed;
6. client rendering/UI;
7. compatibility providers;
8. tests;
9. visual resources.

## Step 4 — Automated validation

Where the current environment allows, run:

1. JUnit/unit tests;
2. `clean build`;
3. release-JAR content verification;
4. GameTest;
5. dedicated-server startup/save/stop;
6. Linux Xvfb + Mesa/llvmpipe real-client smoke;
7. model/texture/resource-key/error/crash checks.

Never claim a test passed if it was not actually executed.

## Step 5 — Save/multiplayer validation

For any persistent/networked change:

- load a copy of the previous accepted save;
- verify new data defaults safely;
- save/restart/reload;
- test one dedicated server + at least two clients for shared mutable state where relevant;
- verify client UI snapshots cannot overwrite newer server state;
- verify no inventory/entity/module duplication.

## Step 6 — Package candidate

Every milestone candidate provides:

1. incremental update package from the previous accepted milestone;
2. complete project package;
3. update/implementation notes;
4. Windows PowerShell build/run commands;
5. explicit acceptance checklist;
6. known limitations;
7. hashes for user-facing packages/JAR where appropriate.

Incremental packages must overlay the previous accepted source without deleting the user's Gradle Wrapper/caches.

## Step 7 — User local acceptance

User-local Windows `build` / `runClient` / gameplay results are the final acceptance authority for behavior that cannot be conclusively validated in the development environment.

A candidate is NOT the new baseline until the user explicitly accepts it.

## Step 8 — Close milestone and update project record

After explicit acceptance:

- archive accepted full source and incremental package;
- update `docs/PROJECT_STATUS.md`;
- record test/acceptance results;
- record migration/schema versions;
- note accepted non-blocking observations;
- set the next milestone only then.

# 6. New-conversation startup instruction

In a new conversation, start with:

> Continue Sky Remnants post-release development from the accepted M24 baseline. Read `docs/PROJECT_STATUS.md` and `docs/POST_RELEASE_DEVELOPMENT_ROADMAP.md` from the connected GitHub repository first. Begin M25 only; inspect the latest accepted source before making changes and do not expand scope into M26.

If a later milestone has already been accepted, replace `M24`/`M25` with the latest accepted baseline and next milestone recorded in `PROJECT_STATUS.md`.

# 7. Immediate next action

The next development milestone is **M25 — Post-release compatibility foundation**.

M25 is intentionally infrastructure/migration-first. It should not add Deep Crystal, Nether fragments, End fragments or new airship gameplay yet. Those begin only after M25 passes local acceptance.
