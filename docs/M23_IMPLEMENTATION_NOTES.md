# M23 Implementation Notes — First-release visual identity

## Goal

M23 replaces the remaining first-release visual placeholders with a coherent Sky Remnants visual identity without changing gameplay, persistence, networking, recipes, collision, riding, inventory indices or progression.

Visual direction: vanilla-readable pixel art using weathered copper, dark stone, steel and oxidized/cyan accents; old machinery rather than heavy futuristic technology.

## Assets

- 32 project-owned 16×16 standalone item textures;
- 34 project-owned 16×16 block textures;
- 64×64 basic-airship entity texture;
- 128×128 mod icon.

Ten important machines receive distinct horizontal side-panel textures so they remain identifiable from normal player eye level.

## Custom airship renderer

M23 adds `BasicAirshipModel` and `BasicAirshipRenderer`. `SkyRemnantsClient` registers the custom model layer and renderer instead of the vanilla `BoatRenderer` visual placeholder. The existing reinforced state toggles extra armor geometry.

This is render-only. Airship movement, collision, riding, fuel, cargo/module slots, NBT and `supply_manifest` are unchanged.

## Mod identity

`skyremnants.png` is declared through `logoFile` in NeoForge metadata. Final license-facing release files/text remain intentionally deferred to the M24 RC audit; the existing metadata still declares `All Rights Reserved`.

## Tests

`M23VisualResourceTest` adds five resource-boundary tests for the project-owned item/block textures, pipe texture, airship renderer/model/texture and mod icon. Legacy M8/M9 assertions that required vanilla placeholder icons were updated to the new project-owned resource contract.