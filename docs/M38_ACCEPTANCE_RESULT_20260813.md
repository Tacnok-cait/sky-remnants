# M38 Acceptance Result — 2026-08-13

Status: **accepted and closed**.

User explicitly reported local acceptance **PASS** for M38 on 2026-08-13. The authoritative accepted source object is the user-returned `skyremnants-m38-final-accepted-source-20260813.zip`.

## Retained validation evidence

The accepted source already records the completed local validation chain in `docs/M38_LOCAL_ACCEPTANCE_RESULT_20260813.md` and `docs/M38_GAP_ACCEPTANCE_RESULT_20260813.md`:

- JUnit: **169/169**, 49 suites, 0 failures/errors/skips;
- `clean build`: PASS;
- `verifyReleaseJarContents`: PASS;
- GameTest: original M38 candidate **96/96**; user-returned final accepted source gap re-run **97/97**;
- dedicated-server smoke: PASS with normal save/stop;
- real Xvfb + Mesa llvmpipe client smoke: PASS;
- in-world Large Expedition Vessel model/placement visual check: PASS;
- Large Expedition Vessel save → quit → restart persistence: PASS;
- real Docking Base interaction with the Large Expedition Vessel: PASS;
- retained M37 save regression load: PASS;
- two-player dedicated-server authority + native Windows disconnect/reconnect loop: PASS;
- missing model/texture regressions: 0;
- unexpected client errors: 0;
- crash reports: 0.

## Accepted scope

- append-only `skyremnants:large_expedition_vessel` entity/item/menu;
- append-only `skyremnants:large_vessel_input` payload schema v1;
- independent `large_vessel_data_version=1` 128-slot contract;
- 54 base cargo + three 18-slot expansion banks, maximum 108 actual cargo slots;
- six general module slots and dedicated logistics slot;
- independent fuel/furnace/anchor/logistics state;
- 600 / 1600 / 3200 scan roles, with 3200 intrinsic to the Large Expedition Vessel;
- Docking Base / pipe logistics through `DockableLogisticsVessel`;
- retained UUID behavior when a docked vessel entity loads after the Docking Base.

## Compatibility retained

- `SkyWorldData` remains v11;
- Basic Airship container remains 91 slots;
- Basic Airship module slots 28 / 29 / 36 / 46 and logistics slot 90 remain unchanged;
- Basic Airship NBT/menu/`airship_input` schema v1/`supply_manifest` meanings remain unchanged;
- Docking Base persisted key remains `docked_airship`;
- unknown future Large Expedition Vessel data versions are rejected rather than reinterpreted as v1.

Finalization is documentation/status-only. Runtime code/resources/build configuration are unchanged relative to the user-accepted source.
