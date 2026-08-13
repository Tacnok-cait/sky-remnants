# Sky Remnants Project Status

## Authoritative accepted baseline

**M38 — Large Expedition Vessel playable vertical slice**

Status: **accepted and closed on 2026-08-13**.

The exact M38 final accepted full-project ZIP is the authoritative accepted baseline. M38 introduced the first playable Large Expedition Vessel on its independent 128-slot data-v1 contract while preserving the Basic Airship 91-slot contract.

Final user-returned accepted source verification includes JUnit **169/169** and the gap-acceptance GameTest re-run **97/97**, plus clean build/release verification, dedicated-server, real client, in-world vessel, save/restart, Docking Base and native Windows two-client authority/reconnect acceptance.

## Current candidate

**M39 — Deep Convergence challenge vertical slice**

Status: **candidate — awaiting user-local acceptance**.

M39 adds one derived high-threat DEEP challenge profile only. It consumes DEEP broad-CHALLENGE islands left `STANDARD` after accepted Ember/Blockade selection, reuses the existing Wind Eye pedestal/state machine and adds no new key/currency/vehicle tier.

### M39 candidate scope

- append-only `ExternalIslandContentProfile.DEEP_CONVERGENCE`;
- append-only scan-presentation kind and bilingual Deep Convergence / 深域汇聚场 presentation;
- End/Nether convergence arena palette on newly generated M39 islands;
- start cost: Gold ×2 + Redstone ×8 + Corrupted Residue ×16;
- three mixed-role waves using Stray / Wither Skeleton / Breeze / Vindicator;
- first clear Totem of Undying, repeatable established-resource rewards;
- Ancient Debris/Netherite Scrap, Wither Skeleton Skulls and Shulker Shells intentionally excluded from pedestal rewards.

### Frozen compatibility contract

- Minecraft 1.21.1 / NeoForge 21.1.244 / Java 21;
- `SkyWorldData` remains **v11**;
- payload protocol remains **1**;
- Basic Airship real container remains **91**;
- Basic module/logistics indices remain **28 / 29 / 36 / 46 / 90**;
- Large Expedition Vessel remains data version **1**, **128** real slots, maximum **108** cargo;
- `airship_input` remains schema v1;
- `large_vessel_input` remains schema v1;
- `supply_manifest` and Docking Base persisted `docked_airship` meanings remain unchanged;
- no new M39 entity/item/block/menu/payload registration;
- generated terrain/player builds are never retroactively rewritten.

### M39 automated validation

- JUnit: **176/176**, 50 suites, 0 failures/errors/skips;
- release build + `verifyReleaseJarContents`: PASS after the documented offline cached-asset regeneration step;
- GameTest: **99/99 in 3.425 s**, Gradle exit 0;
- dedicated server: `Done (0.381s)!` → normal stop/save → Gradle exit 0;
- real Xvfb + Mesa llvmpipe client: TitleScreen/screenshot/graceful exit PASS;
- OpenGL 4.5 / llvmpipe;
- unexpected client errors 0;
- missing model/texture regressions 0;
- new crash reports 0.

## Next gate

**M40+ remains locked until M39 user-local acceptance.**

After M39 acceptance, choose the next single vertical slice from the frozen endgame-closure backlog. Do not silently combine advanced ship utility, equipment, extra vessel tiers and additional frontier content into one milestone.
