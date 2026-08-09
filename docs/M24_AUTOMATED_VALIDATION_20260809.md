# M24 Automated / Cross-platform Validation — 2026-08-09

M24 is release engineering and acceptance closure. It changes release metadata, license-facing files, package-boundary verification, visual acceptance fixes and acceptance tooling without changing registry IDs, recipes/progression, network payloads, NBT/SavedData schemas, airship slot indices or save format.

## Final returned source — Linux revalidation

- JUnit: 75/75, 25 suites, 0 failures/errors/skips;
- build + `verifyReleaseJarContents`: PASS;
- production JAR: 523,414 bytes / 446 entries / SHA-256 `5fc0377ad3b395cf527a0c9c13a5881fe36b9ef9b9627e5217c835c32e0b1c69`;
- TestControl/GameTest/Jade/JEI-stub leakage: 0;
- project textures in JAR: 32 item / 36 block / 1 entity;
- GameTest: 65/65 in 2.502 s, normal save/exit;
- fresh dedicated server: `Done (13.065s)!`, normal stop, all dimensions saved;
- real Xvfb + llvmpipe client: TitleScreen, screenshot, graceful quit, exit 0;
- unexpected client errors 0, resource/model check PASS, crash-report check PASS.

The final count is 75 because the M23 visual resource suite gained one challenge-pedestal side-texture test in the returned accepted source.

## Windows final acceptance

The Windows pass closed all gates that could not be closed in the earlier Linux candidate run:

- JUnit 75/75, clean build, GameTest 65/65 in 2.412 s and release-JAR verification PASS;
- 13/13 retained historical-world copies load/save/stop PASS;
- Jade 15.10.0+neoforge and JEI 19.21.0.247 runtime PASS;
- one dedicated server + two independent clients shared-airship/data-safety and restart-persistence PASS;
- final presentation/log review PASS with no P0/P1 visual issue and crash-report count 0.

The Windows accepted JAR and Linux rebuilt JAR have separate archive byte hashes. The final returned source archive is the authoritative source baseline.

## Result

M24 `1.0.0-rc.1` is **accepted and closed**. No known release-blocking gameplay, data-safety, compatibility or presentation defect remains in the accepted source.
