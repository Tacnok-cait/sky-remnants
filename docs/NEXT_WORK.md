# Next Work

Authoritative user-accepted baseline: **M22 final verified / accepted 2026-08-09**.

## M23 — first-release visual identity

**Current status: implementation and Linux automated/real-client validation passed; user-local Windows/visual acceptance pending.**

Implemented scope:

1. project-owned item textures for the key resource/tool/airship families;
2. project-owned block material set and distinct side panels for important machines;
3. custom basic-airship model/renderer/texture with reinforced armor visual;
4. project mod icon;
5. visual-resource regression tests and real-client visual evidence.

M23 adds no gameplay and preserves the M22 gameplay/save/network surface.

## After M23 acceptance — M24 first-release RC closure

M24 adds no new progression systems. It should:

1. finalize release metadata, description, icon and license-facing files;
2. audit production JAR/package contents and bilingual resource completeness;
3. run the complete first-release regression matrix: JUnit, GameTest, dedicated server, real client, old-save migration, multiplayer data safety, Jade/JEI optional compatibility and Windows/Linux checks;
4. verify M2→M23 save compatibility and the accepted M19 supply-menu data-safety behavior;
5. produce the first-release Release Candidate package and final acceptance checklist.

## Explicitly out of scope before RC

Do not add 6–15h or 15h+ long-term systems: larger/multiblock airships, bosses, special dimensions, advanced power/fluid/wireless logistics, endgame equipment or new progression tiers.