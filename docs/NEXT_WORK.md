# Next Work

Authoritative accepted baseline: **M39 — Deep Convergence challenge vertical slice, accepted 2026-08-13**.

Current implementation: **M40 — Dockyard Deployment Module / 船坞部署模块 — candidate**.

## Immediate gate

Do not begin M41+ implementation. First complete M40 user-local acceptance.

Focus checks:

1. Basic Airship 91-slot and Large Expedition Vessel 128-slot regression on an M39 accepted save copy;
2. Dockyard Deployment Module endgame recipe and Large-Vessel-only installation;
3. install Anchor Module, carry 24 Stone Bricks, hold one Docking Base, engage floating anchor and sneak-use the Large Vessel;
4. confirm a 5×5 platform appears with the real Docking Base at center and exactly 24 Stone Bricks + one Docking Base are consumed in Survival;
5. occupy any target cell and confirm deployment refuses without overwrite/material loss;
6. save/reload Docking Base ↔ Large Vessel binding and ordinary logistics when the Logistics Module is present;
7. judge real platform/vessel visual alignment locally.

## Scope-selection note retained for M41+

A naive new DEEP rare ruin cannot simply take a leftover DEEP RUIN profile: accepted M29 selection runs first and accepted M35 Drifting End City consumes the remaining DEEP RUIN space. Any later rare-ruin work must introduce a genuinely non-reinterpreting contract rather than stealing accepted M35 islands.

Still out of scope: autopilot/route finding, moving-block ships, power/cable networks, wear/maintenance, quest locks, forced raids, mandatory crew roles and broad automatic outpost construction.
