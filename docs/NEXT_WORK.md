# Next Work

Authoritative accepted baseline: **M43 — Smithing Reliquary / 锻造遗库, accepted 2026-08-14**.

Current implementation: **M44 — Heavy Core progression closure / 沉重核心进度闭环 — candidate**.

## Immediate gate

Do not begin M45+ implementation. First complete M44 user-local acceptance.

Focus checks: Deep Convergence scan exposes `Heavy Core / 沉重核心`; a fresh pedestal awards exactly one vanilla Heavy Core; the one core payout stays within six output slots by omitting ordinary Gold only; later clears restore Gold and never repeat Heavy Core; a pre-M44 already-cleared pedestal can still claim one core because missing `heavy_core_reward_claimed` defaults false; save/reload keeps the claimed flag; vanilla Heavy Core + Breeze Rod crafts and behaves as the ordinary vanilla Mace.

Preserve `SkyWorldData` v11, protocol 1, both accepted vehicle contracts, both input payload schemas v1, M40–M43 behavior, M43 external-island ordering and the non-destructive generated-terrain policy.

Still out of scope: custom action-combat controls, autopilot/route finding, moving-block ships, power/cable networks, wear/maintenance, quest locks, forced raids and mandatory crew roles.

**M45+ remains locked until M44 acceptance.**
