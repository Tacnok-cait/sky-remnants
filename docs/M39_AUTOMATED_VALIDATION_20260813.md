# M39 Automated Validation — 2026-08-13

Validation target: M39 Deep Convergence candidate derived from the user-accepted M38 source/finalization baseline.

## Toolchain

- Minecraft Java Edition 1.21.1
- NeoForge 21.1.244
- Java 21
- Gradle 9.2.1
- ModDevGradle 2.0.143

The environment is offline. User-provided Gradle cache artifacts were used with temporary validation-only local repositories for the eight official LWJGL 3.3.3 Linux native JARs and `binarypatcher:2.1.2:fatjar`. Their hashes match the Minecraft 1.21.1 manifest where applicable. No temporary `/mnt/data` path is written into deliverable source or the release JAR.

## Results

- Java main/test/GameTest compilation: **PASS**.
- JUnit: **176/176**, 50 suites, 0 failures, 0 errors, 0 skipped.
- clean stage + release build: **PASS**.
- `verifyReleaseJarContents`: **PASS**.
- GameTest: **99/99 in 3.425 s**, all required tests passed, Gradle exit 0.
- Dedicated server: reached **`Done (0.381s)!`**, accepted normal `stop`, overworld/Nether/End all saved, Gradle exit 0.
- Real Xvfb + Mesa llvmpipe client smoke:
  - control ready: PASS;
  - real TitleScreen: PASS;
  - screenshot: PASS;
  - graceful Minecraft shutdown: PASS;
  - Gradle exit 0;
  - OpenGL 4.5 Core Profile / llvmpipe / Mesa 25.0.7-2;
  - unexpected client ERROR entries: 0 after the established exclusion of blocked Mojang/Yggdrasil auth-network failures;
  - missing model/texture/resource regression check: PASS;
  - new crash reports: 0.

The M38 final accepted source contains a gap-acceptance GameTest added after the original 96-test candidate chain, so M38 final source has 97 GameTests. M39 adds two more, yielding the actual 99-test result above.

## M39-specific runtime coverage

Automated checks verify:

- Deep Convergence consumes only deterministic DEEP broad-CHALLENGE leftovers;
- M33 OUTER Storm Relay space is not reclassified;
- the generated arena contains the intended Purpur/End Stone/Obsidian/Blackstone visual families;
- the existing Wind Eye pedestal registration/state-machine path is reused;
- scan kind is append-only;
- wave 3 contains Breeze / Wither Skeleton / Vindicator / Stray mixed roles;
- start cost is 2 gold + 8 redstone + 16 corrupted residue;
- first completion yields Totem of Undying;
- repeatable reward path does not expose Ancient Debris/Netherite Scrap, Wither Skeleton Skull or Shulker Shell;
- M38 Basic/Large vessel schema and slot contracts remain frozen.

## Asset-cache note

A normal `downloadAssets` refresh cannot resolve Mojang hosts from this environment. After `clean`, the generated `build/moddev/minecraft_assets.properties` was recreated from the already-validated cached Minecraft 1.21.1 asset index and the build proceeded with `downloadAssets` skipped. This is validation infrastructure only.
