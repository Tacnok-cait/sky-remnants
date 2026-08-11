# Sky Remnants Project Status

## Authoritative accepted baseline

**M25 — Post-release compatibility foundation**

Status: **accepted and closed on 2026-08-11**.

The authoritative runtime/development baseline is the M25 final accepted source
produced from the M24 final accepted archive plus the M25 compatibility-foundation
implementation and the final acceptance/status documentation.

M24 remains the immutable first-release RC reference baseline; M25 is the current
post-release development baseline for all subsequent feature work.

## M25 acceptance evidence

### User-local final acceptance

- User reported the complete M25 local acceptance run as **PASS** on 2026-08-11.
- A copied accepted M24 world was used as the migration acceptance gate.
- M25 is therefore no longer a candidate/pending milestone.

### Linux automated validation retained from the candidate

- JUnit: **80/80**, 0 failures/errors;
- clean build: PASS;
- `verifyReleaseJarContents`: PASS;
- GameTest: **67/67 in 1.903 s**;
- production JAR: 527,392 bytes / 449 entries / SHA-256
  `302e6e31968fd7c144ef5d0f18367536df0846eda3e51bead5de33852c797e22`;
- dedicated server: reached `Done (0.384s)!`, then stopped/saved normally;
- real Xvfb + Mesa llvmpipe client: TitleScreen, screenshot and graceful exit PASS;
- unexpected client errors: 0;
- missing model/texture/resource regressions: 0;
- new crash reports: 0.

## M25 compatibility contract

- Minecraft Java Edition 1.21.1;
- NeoForge 21.1.244 baseline;
- Java 21;
- M24 accepted registry IDs remain frozen;
- airship payload id remains `skyremnants:airship_input` with protocol version `1`;
- airship real container size remains 91, accepted slots 0-90 unchanged;
- module slots 28, 29, 36 and logistics slot 90 remain unchanged;
- `supply_manifest` remains unchanged;
- M24 `SkyWorldData` version 9 is explicitly migrated to M25 version 10;
- v9 -> v10 preserves accepted field meanings and gameplay state;
- newer-than-supported world-data versions are rejected instead of silently downgraded;
- outer-island distance/tier metadata is derived/read-only and does not alter the
  accepted M24 island id/position/shape algorithm.

## Source archive

The exact M24 final -> M25 final accepted incremental archive is stored in
`.source-archives/m25-final/` as binary-safe Base64 parts with a reconstruction
script and SHA-256 manifest.

- M25 incremental SHA-256: `606f8caab22033a9df864f400f8351626369de1aa6e74ffc50bdecf7065a5aca`;
- M25 final accepted full-project SHA-256: `4b351b9d7a4e582e71763257a0d24b2a8eda9ccaa233cdf948df50c1efeebb7a`.

## M25 scope closure

M25 added compatibility/migration infrastructure only. It did **not** add:

- Deep Crystal Fault or diamond progression;
- new island families/resources/mob samples;
- scanner gameplay expansion;
- airship retrofit content;
- new blocks/items/entities/menus/recipes for M26 gameplay.

## Known non-blocker retained

The accepted M19 behavior remains: an already-open second supply menu does not
live-refresh another client's ghost-target edit until reopened. Server state is
authoritative; previous multiplayer acceptance established no duplication, loss,
stale-close overwrite or persistence failure.

## Next phase

**M26 — Deep Crystal Fault + diamond progression.**

M26 must branch from this accepted M25 source. Before adding content, re-check the
M25 compatibility contract and existing worldgen extension point. Do not begin M27
remote-outpost/scanner expansion until M26 itself is implemented and accepted.
