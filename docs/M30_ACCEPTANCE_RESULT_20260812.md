# M30 Local Acceptance Result — 2026-08-12

## Milestone

**M30 — Crimson/Warped ecology + Nether Wart automation + Ember Ruin Blaze challenge**

Final local status: **PASS / accepted**.

## User-local acceptance

The user reported that all M30 acceptance items passed. The two previously stated bullets are retained as scope/compatibility confirmations rather than defects:

1. M30 adds Crimson/Warped ecology fragments, Auto Worker `NETHER_WART` mode as append-only ordinal 7, and the Ember Ruin Blaze challenge reusing the existing Wind Eye pedestal. `SkyWorldData` remains v11.
2. M31 airship retrofit/dockyard work is intentionally excluded from M30.

No blocking defect was reported.

## Automated validation retained from the accepted candidate

The runtime/code/resource tree in the final accepted M30 is unchanged from the user-tested candidate. The candidate had already passed:

- JUnit: **114/114**, 35 suites, 0 failures/errors/skips;
- `build` + `verifyReleaseJarContents`: PASS;
- GameTest: **77/77 in 2.552 s**;
- dedicated-server smoke: PASS, normal stop/save, exit 0;
- real Linux Xvfb + Mesa llvmpipe client smoke/resource/model/crash checks: PASS;
- unexpected client errors: 0;
- missing model/texture regressions: 0;
- new crash reports: 0.

Because finalization changes documentation/status only, no fictional post-acceptance rerun is claimed.

## Accepted compatibility state

- Minecraft Java Edition 1.21.1;
- NeoForge 21.1.244;
- Java 21;
- `SkyWorldData` remains **v11**;
- no M30 schema migration;
- old external-island IDs/centers/radii/depths/broad kinds remain stable;
- accepted M28 Mist Marsh and M29 Ashen/Soul Rift selections remain stable;
- already-generated chunks are not regenerated;
- Auto Worker old ordinals 0–6 remain valid; `NETHER_WART` is append-only ordinal 7;
- no Blaze ordinary sample/inducer automation;
- airship payload protocol, container/slot semantics and `supply_manifest` remain unchanged;
- M31 airship retrofit/dockyard content is not present in M30.

## Result

M30 is accepted and closed. M31 may begin from the M30 final accepted source.
