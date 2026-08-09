# M23 Texture Redraw Rev2 — 2026-08-09

The first M23 candidate solved vanilla-resource ownership but remained too flat/icon-like after visual review. Rev2 redraws the project textures after auditing the actual Minecraft 1.21.1 client texture set.

## Rev2 redraw

Without changing resource IDs, model IDs, registries or gameplay, Rev2 redraws:

- 32 item textures at 16×16;
- 34 block textures at 16×16;
- the 128×128 project mod icon.

The existing custom 64×64 basic-airship entity texture/model/renderer remains in place.

## Pixel language

- irregular object silhouettes instead of flat cards;
- roughly 5–10 visible shade steps for standalone items where appropriate;
- one-pixel highlight/shadow edges;
- weathered copper, dark stone, old steel and restrained oxidized/redstone/mineral accents;
- block seams, rivets, wear, material noise and recessed machine panels;
- no anti-aliasing or smooth gradients.

Related item families remain visually grouped while symbols, accent colors and local geometry preserve quick recognition.

## Reproducibility

The full source artifact includes `scripts/generate-m23-textures.py`, which regenerates the project-owned item/block PNG set and mod icon from project-relative paths. It contains no validation-environment absolute paths.

## Copyright boundary

No Minecraft vanilla PNG is copied into this generator or the project. Vanilla assets were inspected only as a dimensional/style-density reference.

## Compatibility

Rev2 changes visual assets only. Registry IDs, recipes, payloads, NBT/SavedData, `SkyWorldData` version 9, airship slots, `supply_manifest` and save format remain unchanged.
