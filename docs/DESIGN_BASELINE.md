# Sky Remnants Design Baseline

## Fixed technical baseline

- Minecraft Java Edition 1.21.1
- NeoForge 21.1.244
- Java 21
- Gradle 9.2.1
- Mod ID `skyremnants`
- Core mod has no hard dependency on JEI, Jade, Sophisticated Storage or FTB Quests.

## Core design rules

- Sky islands are the world shape, not the whole gameplay loop.
- Preserve vanilla-style freedom and intuitive interaction.
- No mandatory quest/profession recipe locks.
- Automation reduces repetitive work instead of creating maintenance work.
- No heavy energy/cable network or material-tier pipe ladder.
- Machines do not wear out; normal stoppages are missing input/output/tool or blocked workspace.
- Combat remains vanilla-input combat and is mainly player-initiated.
- Enemy difficulty should come from behavior, composition, terrain and mechanics rather than endless HP scaling.
- Void falls preserve inventory, return the player to the latest safe platform, and leave the player at 1 HP.
- Airships use expansion slots for storage/crafting/furnace/fuel/scanning/docking/logistics.
- Single-player, dedicated server, multiplayer synchronization, save compatibility and performance are required considerations.

## First-release boundary

The first release targets the complete 0–6 hour vertical slice:

- starting islands and void rescue;
- stone/basic material loop;
- iron/copper and wet geology;
- simple item logistics;
- farming/animals;
- hostile resource automation;
- voluntary challenge content;
- smart assembly;
- basic airship/external islands;
- chunk loading;
- airship navigation/scanning/logistics/supply targets;
- release hardening.

Long-term 6–15h and 15h+ systems (advanced dangerous regions, larger ships, bosses, special dimensions, broad endgame equipment) remain post-first-release unless explicitly re-scoped.
