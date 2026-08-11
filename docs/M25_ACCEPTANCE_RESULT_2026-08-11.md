# M25 Final Acceptance Result — 2026-08-11

Milestone: **M25 — Post-release compatibility foundation**

Final status: **PASS / ACCEPTED**.

## Final gate

The user reported the complete local M25 acceptance run as passed on 2026-08-11. This closes the remaining user-local/historical-world gate that was intentionally left pending after automated Linux validation.

The final acceptance therefore combines:

- Linux automated validation from the M25 candidate;
- user-local final acceptance, including the retained M24-world compatibility gate.

## Retained automated evidence

- JUnit: 80/80;
- clean build: PASS;
- release-JAR verification: PASS;
- GameTest: 67/67 in 1.903 s;
- dedicated-server smoke: PASS;
- real Xvfb + llvmpipe client smoke/resource/crash checks: PASS;
- unexpected client errors: 0;
- missing model/texture regressions: 0;
- new crash reports: 0.

## Accepted migration boundary

- M24 `SkyWorldData` v9 -> M25 v10 is accepted;
- existing M24 persistent fields retain their established semantics;
- accepted registry IDs remain frozen;
- airship slots 0-90 remain unchanged;
- `supply_manifest` remains unchanged;
- `skyremnants:airship_input` / protocol `1` remain unchanged;
- derived external-island distance metadata does not remap accepted M24 island ids, positions or shapes.

## Scope confirmation

M25 contains no M26 gameplay content. M26 is the next milestone and must begin from this accepted M25 source baseline.
