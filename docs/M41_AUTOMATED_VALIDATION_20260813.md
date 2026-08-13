# M41 Automated Validation — 2026-08-13

Validation target: M41 Skybridge Builder candidate derived from the M40 final accepted source.

## Final frozen-code results

- Java main/test/GameTest compilation: **PASS**;
- JUnit: **186/186**, 52 suites, 0 failures, 0 errors, 0 skipped;
- clean + cached Minecraft 1.21.1 asset-property regeneration: PASS;
- release build + `verifyReleaseJarContents`: PASS;
- GameTest: **104/104 in 3.383 s**, Gradle exit 0;
- dedicated server: reached **`Done (8.040s)!`**, normal `stop`, overworld/End/Nether saved, Gradle exit 0;
- real Xvfb + Mesa llvmpipe client: TitleScreen/screenshot/graceful shutdown PASS;
- unexpected client errors: 0;
- missing model/texture/resource regressions: 0;
- new crash reports: 0.

M41 server GameTests verify exact eight-block placement/consumption, obstruction stop/no-overwrite/no-skip semantics, and rejection of vertical use, chest material and orientation-sensitive Oak Log material without consumption.

An early obstruction test failed because its fixture did not explicitly clear the intended target prefix; the fixture was corrected and production overwrite rules were not loosened. The final full rerun passed 104/104.
