# M26 Local Acceptance Result — 2026-08-11

## Result

**PASS — M26 accepted.**

The user explicitly reported the M26 Deep Crystal Fault + diamond progression
candidate as accepted on 2026-08-11. This closes the user-local acceptance gate
for M26.

No runtime/code correction was requested as part of acceptance.

## Automated candidate evidence retained

The accepted source is the same runtime candidate that already passed:

- JUnit 87/87;
- clean build;
- `verifyReleaseJarContents`;
- GameTest 69/69 in 1.867 s;
- fresh dedicated-server smoke and normal save/stop;
- real Linux Xvfb + Mesa llvmpipe client smoke;
- zero unexpected client errors;
- zero missing model/texture/resource regressions;
- zero new crash reports.

Production JAR SHA-256:

`8a2791b77b2ab89932cd55cfd2c699d47bb7bf41d119aab06c5618df1fdfec05`

## Accepted compatibility state

- `SkyWorldData` remains v10;
- no M26 persistent world-data schema bump;
- accepted M24/M25 external-island identity/shape parameters remain preserved;
- already-generated chunks are not overwritten;
- airship slot semantics, `supply_manifest` and network payload identity remain
  unchanged;
- Diamond Sample is catalytic and uses the existing Mineral Cultivation Bed;
- M27 long-range scan and automated amethyst harvesting remain out of M26 scope.

## Non-blocking user suggestion

The user recorded one future presentation suggestion while accepting M26:

- make the Deep Crystal fault/rift outline more strongly linear;
- cluster some amethyst into more concentrated geode-like formations.

This does **not** reopen M26. It is retained as a future worldgen/presentation
polish candidate. Any later change must respect existing generated chunks and
must not silently rewrite accepted terrain.
