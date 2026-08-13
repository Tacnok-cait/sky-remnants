# M39 Update Notes — 2026-08-13

Status: **candidate — awaiting user-local acceptance**.

M39 is intentionally a narrow endgame-closure slice. It adds one repeatable high-threat DEEP challenge without opening the later M40+ ship-utility/equipment backlog.

## Deep Convergence / 深域汇聚场

A new append-only `ExternalIslandContentProfile.DEEP_CONVERGENCE` is assigned only to `DEEP` broad `CHALLENGE` islands that remained `STANDARD` after the accepted M30 Ember Ruin and M31 Blockade Outpost decisions. M33 Storm Relay is OUTER-only, so its accepted island space is not consumed.

The island keeps the existing deterministic island identity/position/shape contract. New terrain presentation combines End- and Nether-adjacent materials already used by accepted deep-ring content: Purpur, End Stone Bricks, Obsidian/Crying Obsidian and Polished Blackstone Bricks.

## Challenge implementation

M39 reuses the existing Wind Eye Trial pedestal registration, nine-slot inventory, server state machine, participant tracking, failure rules and cooldown. It does **not** register a new challenge block, BlockEntity, menu, key item or currency.

Start cost for Deep Convergence:

- Gold Ingot ×2
- Redstone ×8
- Corrupted Residue ×16

Three-wave single-player plan:

1. Wither Skeleton ×2 + Stray ×2
2. Breeze ×2 + Wither Skeleton ×2 + Stray ×2
3. Breeze ×3 + Wither Skeleton ×3 + Vindicator ×2 + Stray ×2

Existing multiplayer count scaling remains in force. Enemy max health is not inflated by M39; pressure comes from knockback, ranged fire, melee pursuit and role combinations.

## Rewards

Deep Convergence uses already-established resource families rather than creating another token tier:

- Blaze Rods
- Ender Pearls
- Amethyst Shards
- Gold Ingots
- Corrupted Residue
- first clear: one Totem of Undying
- repeat clear: 10% Totem of Undying, otherwise experience bottles

Repeatable output deliberately excludes Ancient Debris / Netherite Scrap, Wither Skeleton Skulls and Shulker Shells so their accepted exploration/encounter value is not converted into a generic pedestal farm.

## Scan/UI

`AirshipScanPresentation` appends one new presentation kind after Ash Crown Forge:

- `island_kind.skyremnants.deep_convergence`
- English: `Deep Convergence`
- Chinese: `深域汇聚场`

No older scan-kind ordinal is shifted.

## Compatibility boundary

Unchanged from M38 final accepted:

- Minecraft 1.21.1 / NeoForge 21.1.244 / Java 21
- `SkyWorldData` v11
- payload protocol constant `1`
- Basic Airship real container 91 slots
- Basic Airship module/logistics indices 28 / 29 / 36 / 46 / 90
- Large Expedition Vessel data version 1 / 128 real slots
- `airship_input` schema v1
- `large_vessel_input` schema v1
- `supply_manifest` semantics
- Docking Base persisted `docked_airship` compatibility

No vehicle/entity/item registry ID is added in M39.
