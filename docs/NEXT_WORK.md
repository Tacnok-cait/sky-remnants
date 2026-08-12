# Next Work

Authoritative accepted development baseline: **M31 — Expedition Airship Retrofit, Dockyard and Blockade Challenge, accepted 2026-08-12**.

## Immediate milestone: M32

**M32 — 6–15h integration closure**

Start only from the final accepted M31 source.

M32 is not a new content-sprawl milestone. Its purpose is to close the full M26→M31 6–15 hour post-release slice as one reliable progression loop.

## Primary goals

1. run the full retained-save migration/compatibility chain through M31, including v10→v11 and all accepted append-only IDs/ordinals;
2. validate the intended 6–15h progression from Deep Crystal discovery through remote outposts, Mist Marsh, Otherworld fragments, Crimson/Warped ecology, Ember Ruin and Expedition retrofit;
3. verify resource pacing and remove accidental hard gates, dead time or circular dependencies without introducing task/quest recipe locks;
4. validate Basic 600 / Long-range 1600 / Expedition Long-range 2200 scan roles and navigation usability across the intended distance bands;
5. validate remote outpost, Docking Base, pipe, storage and constrained Chunk Loader behavior during repeated long-distance travel;
6. validate ordinary-resource automation boundaries: diamond remains slow, amethyst uses immovable budding nodes, slime/gunpowder remain ordinary automation, Blaze remains challenge/expedition value at this stage;
7. validate multiplayer server authority, airship inventories/modules/retrofit state, challenge first-clear rewards and restart persistence;
8. run dedicated-server, real-client and retained-world regression testing across the complete M26–M31 feature set;
9. tune presentation/status text or numerical values only where evidence from the integrated flow shows a clear problem;
10. produce an M32 closure report defining the accepted 6–15h baseline before dangerous-outer-ring work starts.

## Compatibility freeze

M32 should preserve unless a verified defect requires an explicit migration:

- Minecraft 1.21.1 / NeoForge 21.1.244 / Java 21;
- `SkyWorldData` v11;
- payload protocol 1;
- airship real container size 91;
- module slots 28/29/36/46 and logistics slot 90;
- `supply_manifest`;
- M27 visited/navigation state;
- M28 Mist Marsh, M29 Otherworld, M30 Ember and M31 Blockade deterministic selection order;
- all accepted registry IDs and append-only enum meanings;
- already-generated terrain and player builds.

If M32 discovers a real schema problem, do not silently alter it: version the schema, provide migration code and add retained-save tests.

## Scope boundary

Do **not** pull these into M32 merely because they are next on the roadmap:

- M33+ dangerous outer ring;
- End fragments;
- End City / Shulker progression;
- ancient debris / Wither progression;
- large expedition ships/endgame ship construction;
- deferred M26 Deep Crystal visual polish unless separately approved.

M32 should close and stabilize what already exists before extending the content frontier.

## Required M32 delivery

Every M32 candidate should include:

- M31 final → M32 incremental package;
- complete M32 project package;
- update/integration notes;
- Windows PowerShell build/run commands;
- explicit 6–15h acceptance checklist;
- retained-save and compatibility results;
- known limitations;
- automated validation results only for checks actually executed.
