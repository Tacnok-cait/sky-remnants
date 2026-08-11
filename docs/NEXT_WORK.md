# Next Work

Authoritative accepted development baseline: **M25 — Post-release compatibility foundation, accepted 2026-08-11**.

## Immediate milestone: M26

**M26 — Deep Crystal Fault + diamond progression**

Start only from the final accepted M25 source.

Primary goals:

1. inspect and preserve the M25 compatibility contract before worldgen changes;
2. add the Deep Crystal Fault outer-island content for the 6–15h progression band;
3. introduce the first diamond acquisition/progression loop without turning diamond into an immediate high-throughput basic resource;
4. use the M25 derived distance/tier extension point instead of rewriting accepted M24 island placement IDs/coordinates/shapes;
5. preserve already-generated chunks and historical M24/M25 saves;
6. add migration/worldgen/resource tests required by any new persistent data;
7. keep registry IDs, airship slot semantics, `supply_manifest` and existing network payloads stable unless an explicit reviewed migration is unavoidable.

## Scope boundary

Do **not** start M27 early. M27 remote outposts, long-range scan expansion and
amethyst progression remain outside M26 until M26 passes local acceptance.

Also keep later M28+ ecology/mob samples, Nether fragments, airship retrofit and
other post-release systems out of this milestone.

## Required delivery for M26

Every M26 candidate must include:

- M25 -> M26 incremental update package;
- complete M26 project package;
- update notes;
- Windows PowerShell build/run commands;
- explicit acceptance checklist;
- known limitations and migration impact;
- real automated validation results only for checks actually executed.
