# Next Work

Authoritative accepted baseline: **M39 — Deep Convergence challenge vertical slice, accepted 2026-08-13**.

## Immediate milestone gate: M40

M40 is **unlocked for scope selection**. No M40 runtime implementation is part of M39 finalization.

Choose exactly one focused vertical slice from the frozen endgame-closure backlog:

- one deep rare ruin;
- one advanced construction/ship utility capability;
- one optional endgame equipment/tool family;
- one final long-range expedition loop.

Do not bundle all four into M40. M39 already establishes the repeatable high-threat DEEP challenge slice, so another generic arena should not be the default next step unless a concrete progression gap requires it.

## Compatibility gate inherited from M39

Preserve/re-test:

- `SkyWorldData` v11 unless a genuine persisted-world schema need is demonstrated;
- payload protocol 1 unless a genuinely new append-only payload type is required;
- Basic Airship 91-slot contract and indices 28 / 29 / 36 / 46 / 90;
- Large Expedition Vessel data-v1 128-slot contract and 108 maximum cargo;
- both existing input payload schemas v1;
- Docking Base `docked_airship` UUID compatibility;
- `supply_manifest` meaning;
- deterministic external-island identity/position/shape ordering;
- non-destructive generated-terrain policy.

## Retained terrain limitation

Do not “fix” old DEEP challenge islands by rewriting generated chunks. An old island can retain old terrain while newer Deep Convergence presentation is shown. **Judge M39 arena appearance on newly generated DEEP terrain.**

## Still out of scope unless separately approved

- autopilot or route finding;
- moving-block ships;
- power/cable networks;
- wear/maintenance systems;
- quest-locked linear progression;
- forced base raids;
- mandatory multiplayer crew roles.
