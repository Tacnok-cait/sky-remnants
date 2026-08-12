# Next Work

Authoritative accepted development baseline: **M32 — 6–15h Integration Closure, accepted 2026-08-12**.

Detailed roadmap: `docs/POST_M32_DEVELOPMENT_ROADMAP.md`.

## Immediate milestone: M33

**M33 — Dangerous Outer Ring / Deep Survey Bridge**

Start only from the final accepted M32 source.

### Frozen M33 scope

1. add one Deep-range Scan Module targeting **3200 blocks**;
2. Deep-range operation requires Expedition retrofit;
3. preserve the existing 91-slot airship and slots 28/29/36/46/90;
4. keep Basic/Long-range/Deep-range scanner modules mutually exclusive;
5. generalize compact scan rows so Deep-range prioritizes unvisited targets beyond 2200 while retaining one nearby landmark;
6. add one OUTER-only `STORM_RELAY` challenge profile after the accepted Ember → Blockade decisions;
7. prefer roughly 2200–2999 distance and do not consume DEEP islands in M33;
8. reuse the existing Wind Eye pedestal/state machine;
9. first Storm Relay clear may grant the Deep-range Scan Module while ordinary crafting from already accepted M26–M31 materials remains an alternative;
10. add no End/Enderman/Shulker/Ancient Debris/Wither content in M33;
11. target no `SkyWorldData` bump, no payload migration and no airship-slot migration.

### M33 compatibility gate

Before implementation, freeze/re-test:

- `SkyWorldData` v11;
- payload protocol 1;
- external island id/position/radius/depth/broad kind determinism;
- M26 Deep Crystal, M28 Mist Marsh, M29 Otherworld, M30 Ember and M31 Blockade selection ordering;
- scan presentation append-only ordinals/hints;
- airship inventory/module/logistics persistence;
- challenge first-clear/cooldown persistence;
- retained M32 OUTER/DEEP terrain behavior;
- dedicated-server and multiplayer module authority.

## Locked later milestones

- M34 — End Fractures / first deep-band End resources;
- M35 — Drifting End City / Shulkers / Ender Pearl automation closure;
- M36 — Ash Crown Forge / Ancient Debris + Wither;
- M37+ — large expedition vessel and endgame integration.

Do not implement M34+ before M33 local acceptance.
