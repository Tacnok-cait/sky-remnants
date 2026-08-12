# Next Work

Authoritative accepted development baseline: **M37 — Large Expedition Vessel Compatibility Foundation, accepted 2026-08-12**.

## Immediate milestone: M38

**M38 — Large Expedition Vessel playable vertical slice**

Start only from the final accepted M37 source.

### Frozen M37 compatibility foundation

- Basic Airship remains the accepted 91-slot vehicle contract;
- Basic Airship module slots 28/29/36/46 and logistics slot 90 are frozen;
- Basic Airship NBT/menu/payload/`supply_manifest` semantics are not reinterpreted;
- Docking Base now has a narrow `DockableLogisticsVessel` facade while retaining legacy Basic-Airship accessors and persisted UUID key;
- future Large Expedition Vessel uses independent `large_vessel_data_version=1`;
- Large Expedition Vessel real container contract is 128 slots: base cargo 0–53, fuel 54, modules 55–60, logistics 61, furnace service 62–64, reserved 65–73, expansion cargo 74–127;
- maximum large-vessel cargo after expansion is 108 slots;
- M37 deliberately registers no large-vessel entity yet.

## M38 scope

1. register the first playable Large Expedition Vessel entity and placement item using new append-only registry IDs;
2. implement the independent 128-slot inventory exactly as frozen by M37, with explicit entity-NBT/data-version persistence;
3. implement a dedicated menu/screen rather than reusing Basic Airship real slot indices;
4. reuse proven airship flight/input concepts where safe, but do not silently overload old payload semantics if the new vessel requires different state;
5. provide a simple dedicated renderer/model appropriate for the larger vessel without a moving-block construction system;
6. make the new vessel compatible with the generic Docking Base/logistics facade and existing fuel/logistics concepts;
7. provide larger cargo/endurance/module choice as the vertical-slice value; no autopilot, no power network, no maintenance wear and no required crew-role system;
8. preserve all M33–M37 world/resource/challenge content and old saves;
9. validate entity save/reload, inventory persistence, docking/release, dedicated-server authority, multiplayer inventory handling, real-client rendering and performance;
10. do not begin M39+ endgame integration before M38 local acceptance.

## Migration gate

Before gameplay expansion, define and test the new entity registry ID, `large_vessel_data_version`, inventory serialization and menu/network identity. No accepted Basic Airship field or slot may be repurposed for the new vessel.

## Required delivery

M38 must include the M37 final → M38 incremental package, complete M38 project, update notes, PowerShell commands, explicit acceptance checklist, known limitations/migration impact, and only validation results actually executed.
