# Next Work

Authoritative user-accepted baseline: **M22 final verified / accepted 2026-08-09**.

## Current — M23 Visual Identity Rev2

**Automated/Linux real-client validation passed; user-local Windows/visual acceptance pending.**

The first M23 visual candidate is superseded by Rev2.

Rev2 is visual-only:

1. audit actual Minecraft 1.21.1 item/block PNG dimensions;
2. redraw all 32 standalone item textures at 16×16;
3. redraw all 34 block textures at 16×16;
4. retain the custom basic-airship renderer/model and reinforced visual armor;
5. retain the project mod icon;
6. keep gameplay/save/network/registry behavior unchanged.

Do not merge/close M23 until user-local visual acceptance passes.

## After M23 acceptance — M24 first-release RC closure

M24 adds no new progression systems. It should:

1. finalize license-facing files and release metadata;
2. audit production JAR/package contents and bilingual resources;
3. run full first-release regression: JUnit, GameTest, dedicated server, Windows/Linux real clients, old saves, dual-client data safety, optional Jade/JEI;
4. verify M2→M23 compatibility and M19 supply-menu data safety;
5. produce first-release RC artifacts and final acceptance checklist.

## Explicitly out of scope before RC

No larger/multiblock airships, bosses, special dimensions, advanced power/fluid/wireless logistics, endgame equipment or new progression tiers.
