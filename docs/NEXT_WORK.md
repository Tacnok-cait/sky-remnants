# Next Work

Authoritative accepted development baseline: **M30 — accepted 2026-08-12**.

## Immediate milestone: M31

**M31 — expedition airship retrofit, dockyard and blockade challenge**

Start only from the M30 final accepted source.

Primary goals:

1. extend the existing modular airship rather than introducing a moving-block ship system;
2. provide a meaningful expedition retrofit for longer 6–15h travel without routine autopilot;
3. implement a dockyard/retrofit interaction that remains intuitive and does not create a maintenance loop;
4. introduce a voluntary blockade-style challenge that rewards advanced expedition capability;
5. preserve M30 world-generation selections and all M24–M30 accepted resource loops;
6. make any new airship slot, entity-NBT, Data Component or payload change explicit and migration-safe;
7. validate singleplayer, dedicated server, multiplayer inventory authority, save/restart behavior and performance.

## Compatibility gate before implementation

Before changing the airship, freeze and re-check:

- entity registry ID;
- payload IDs and protocol version;
- current real container size and all accepted slot indices;
- module inventory persistence;
- storage-module inventories;
- fuel state;
- docking state;
- `supply_manifest`;
- existing M27 long-range scanner/navigation state;
- old M24–M30 saves and player-owned airships.

If M31 needs persistent structural expansion, define the migration first, then implement the new feature. Do not silently reinterpret existing indices or tags.

## Scope boundary

Do not start M32 integration closure before M31 acceptance.

Keep M33+ dangerous outer ring, End fragments, shulkers, ancient debris/Wither and large expedition ships outside M31.

The deferred M26 Deep Crystal visual-polish suggestion remains non-blocking and out of M31 unless separately approved.

## Required delivery

Every M31 candidate must include:

- M30 final → M31 incremental update package;
- complete M31 project package;
- update notes;
- Windows PowerShell commands;
- explicit acceptance checklist;
- known limitations and migration impact;
- only validation results that were actually executed.
