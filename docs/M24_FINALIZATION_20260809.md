# M24 Finalization — 2026-08-09

## Result

M24 `1.0.0-rc.1` is **accepted and closed**.

The user-returned final accepted source is authoritative for runtime code and visual assets. Final archival restored older accepted milestone closure documents that were missing from the return archive and updated status documentation only; no Java, JSON, PNG, NBT, recipe, registry, network or save-format behavior was changed after the Windows acceptance source was returned.

## Windows acceptance

The pass closed all previously outstanding RC gates: 75/75 JUnit, 65/65 GameTest, clean build, release-JAR verification, dedicated server, 13 retained historical-world migration copies, official Jade/JEI runtime, one-server/two-client shared-data safety and restart persistence, plus final presentation/log review.

## Linux revalidation of returned source

- JUnit 75/75;
- build + release-JAR verification PASS;
- production JAR 523,414 bytes / 446 entries;
- Linux JAR SHA-256 `5fc0377ad3b395cf527a0c9c13a5881fe36b9ef9b9627e5217c835c32e0b1c69`;
- forbidden TestControl/GameTest/Jade/JEI-stub entries 0;
- project textures 32 item / 36 block / 1 entity;
- GameTest 65/65 in 2.502 s;
- fresh dedicated server `Done (13.065s)!`, normal stop/save;
- real Xvfb + llvmpipe client TitleScreen/screenshot/graceful exit 0;
- unexpected errors 0; resource/model check PASS; new crash reports 0.

The Windows accepted JAR and Linux rebuilt JAR have different archive bytes/hashes and are tracked separately. The final source ZIP is the authoritative source baseline.

## Compatibility

No M24 migration is introduced. Registry IDs, recipes/progression, network payloads, `SkyWorldData` v9, airship slot indices and `supply_manifest` remain compatible with the accepted first-version baseline.
