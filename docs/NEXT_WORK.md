# Next Work

Authoritative accepted development baseline: **M26 — Deep Crystal Fault + diamond progression, accepted 2026-08-11**.

## Immediate milestone: M27

**M27 — Remote outposts, amethyst harvesting and long-range scanning**

Start only from the final accepted M26 source.

Primary goals:

1. extend the existing Worker with mature amethyst-cluster harvesting;
2. never allow the Worker to break budding amethyst;
3. expose clear no-target / blocked / missing-tool-style status using existing
   machine diagnostics rather than inventing maintenance gameplay;
4. add a long-range Scan Module using the existing modular-airship system;
5. target approximately 1400–1800 blocks of scan range, with exact value tuned
   during implementation/testing;
6. show exact island distance, broad category, 1–2 representative resource hints,
   approximate threat tier and visited/unvisited state without revealing complete
   loot tables;
7. allow a discovered island to become a selectable HUD navigation target;
8. validate a persistent remote-outpost loop built from existing Docking Base +
   Worker + Pipe + storage + optional Chunk Loader;
9. preserve chunk-loader quotas, server authority, save compatibility and existing
   M24–M26 registry/data/network contracts.

## M26 accepted observation carried forward

The following is recorded but is **not automatically part of M27 scope**:

- future Deep Crystal presentation could use a more strongly linear fault/rift
  silhouette;
- some amethyst could be grouped into more concentrated geode-like structures.

If this polish is later approved for implementation, it must only affect newly
generated content and must not regenerate or overwrite accepted old chunks.

## Scope boundary

Do **not** start M28 early. M28 Mist Marsh ecology, Slime Sample, Creeper Sample,
ordinary slimeball/gunpowder automation and any cow/pig management extension stay
outside M27 until M27 passes local acceptance.

Also keep M29+ Otherworld/Nether fragments and M31 airship retrofit content out
of this milestone.

## Required delivery for M27

Every M27 candidate must include:

- M26 final -> M27 incremental update package;
- complete M27 project package;
- update notes;
- Windows PowerShell build/run commands;
- explicit acceptance checklist;
- known limitations and migration impact;
- real automated validation results only for checks actually executed.
