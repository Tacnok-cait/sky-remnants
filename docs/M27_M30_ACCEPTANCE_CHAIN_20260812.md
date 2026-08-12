# M27–M30 Acceptance Chain — 2026-08-12

This record closes the post-release milestones M27 through M30 after continuous local acceptance.

## M27

- long-range scan / navigation / remote-outpost loop;
- Auto Worker mature-amethyst harvesting with budding-amethyst protection;
- `SkyWorldData` v10 -> v11 migration;
- local JUnit 93/93;
- local GameTest 71/71;
- build, dedicated server, migration and real-client acceptance PASS.

## M28

- Mist Marsh ecology;
- Slime/Creeper samples with player-kill-only acquisition;
- Hostile Mob Inducer append-only SLIME/CREEPER modes;
- schema remains v11;
- local JUnit 100/100;
- local GameTest 73/73;
- build, dedicated server, migration and real-client acceptance PASS.

## M29

- Ashen/Soul Rift Otherworld fragments;
- Quartz Mineral Sample cultivation;
- schema remains v11;
- user-accepted source included the intended 36 block-texture redraws;
- local JUnit 108/108;
- local GameTest 75/75;
- build, dedicated server, migration and real-client acceptance PASS.

Retained non-blocker: one first headless-client attempt hit an early NeoForge `DisplayWindow/FMLConfig` NPE before mod loading; an unchanged rerun passed and it was classified as an environment race.

## M30

- Crimson/Warped ecology fragments;
- Auto Worker `NETHER_WART` append-only ordinal 7;
- Ember Ruin Blaze/Magma Cube challenge reusing the Wind Eye pedestal;
- `SkyWorldData` remains v11;
- M31 airship retrofit/dockyard content intentionally excluded;
- JUnit 114/114;
- GameTest 77/77 in 2.552 s;
- build/release verification, dedicated-server smoke and real headless-client checks PASS;
- user-local final acceptance PASS.

## Current development gate

M30 is the authoritative accepted baseline. M31 is now unlocked. M32 remains blocked until M31 acceptance.
