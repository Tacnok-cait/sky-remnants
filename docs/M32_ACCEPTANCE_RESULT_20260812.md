# M32 Final Acceptance Result — 2026-08-12

## Decision

**M32 — 6–15h Integration Closure: ACCEPTED / CLOSED.**

The user explicitly confirmed **“M32通过”** on 2026-08-12 after the complete local Windows + WSL2 acceptance chain.

## Windows acceptance

- JUnit: **129/129**, 39 suites, 0 failures/errors/skips;
- `clean build`: PASS;
- Windows JAR SHA-256: `a5f88bbfaf498820764e50f0088deb9d2b9f42a4ed5a22c9d8945c6183253760`;
- GameTest: **81/81 in 3.910 s**;
- `verifyReleaseJarContents`: PASS;
- dedicated-server smoke: READY + graceful stop + exit 0;
- migration smoke from `M26 Deep Crystal Acceptance`: PASS;
- Sky Remnants ERROR/FATAL: 0;
- missing model/texture warnings: 0;
- crash reports: 0.

## WSL2 real-client acceptance

- headless control, TitleScreen, screenshot, graceful quit and client/Gradle exit 0;
- llvmpipe OpenGL 4.5;
- unexpected client errors: 0;
- missing model/texture errors: 0;
- crash reports: 0;
- in-world acceptance on the retained M26 acceptance world at `SkyWorldData` v11: PASS;
- stable in-world visual review: no missing texture or rendering anomaly.

The first headless attempt stalled at font loading because of stale previous-version process interference. Process cleanup + unchanged rerun passed. This is a non-blocking orchestration/environment observation, not an M32 defect.

## Accepted compatibility contract

- `SkyWorldData` v11;
- payload protocol 1;
- airship container 91;
- slots 28/29/36/46/90;
- `supply_manifest` unchanged;
- no schema/registry/enum/recipe/performance change in M32;
- M33+ frontier content excluded.

M32 finalization is documentation/status-only. Runtime code is unchanged from the accepted candidate.
