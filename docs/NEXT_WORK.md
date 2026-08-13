# Next Work

Authoritative accepted baseline: **M40 — Dockyard Deployment Module / 船坞部署模块, accepted 2026-08-13**.

Current implementation: **M41 — Skybridge Builder / 天桥构筑器 — candidate**.

## Immediate gate

Do not begin M42+ implementation. First complete M41 user-local acceptance.

Focus checks:

1. M40 accepted save and both vessel inventory/schema regressions remain normal;
2. Skybridge Builder crafting cost feels appropriate for optional late-game convenience;
3. main-hand builder + offhand ordinary simple full block places at most 8 horizontal blocks;
4. survival material consumption exactly matches blocks actually placed;
5. an obstruction stops placement before that cell, with no overwrite and no skipping behind it;
6. vertical faces, chests and stateful blocks such as logs are rejected without consumption;
7. item texture/tooltips/actionbar feedback are readable in the real client;
8. no client error/model/texture/crash regression.

## Retained future constraints

A future DEEP rare ruin still may not steal accepted M35 Drifting End City islands. Any such content needs a genuinely non-reinterpreting selection contract.

## Locked later work

M42+ remains locked until M41 acceptance. Do not silently bundle final long-range expedition objectives, new equipment families, another vessel tier or automation/power systems into M41.
