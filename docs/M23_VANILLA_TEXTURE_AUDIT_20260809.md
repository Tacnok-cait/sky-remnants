# M23 Minecraft 1.21.1 Vanilla Texture Audit — 2026-08-09

The M23 Rev2 redraw was preceded by a direct inspection of the actual Minecraft Java Edition 1.21.1 client JAR reconstructed from the project's validated local cache.

Audit JAR SHA-1: `30c73b1c5da787909b2f73340419fdf13b9def88`.

## Item textures

`assets/minecraft/textures/item/*.png`:

- 605 total;
- 605 / 605 are 16×16.

## Block textures

`assets/minecraft/textures/block/*.png`:

- 963 are 16×16;
- 49 are non-16×16 multi-frame/animated resources.

The exceptions are primarily vertical animation strips or special multi-frame assets such as fire, water/lava, sculk, prismarine, command-block faces and plant animations. Ordinary static building/machine faces remain 16×16.

## Project decision

Sky Remnants first-release art uses:

- ordinary item textures: 16×16;
- ordinary static block-face textures: 16×16;
- basic airship entity texture: 64×64;
- mod icon: 128×128.

Vanilla textures were used only to measure dimensions, silhouette occupancy and pixel/shading density. Mojang PNGs are not copied, modified, redistributed or packaged in the Sky Remnants source/JAR artifacts.
