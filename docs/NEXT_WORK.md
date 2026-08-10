# Next Work

Authoritative accepted baseline: **M24 / 1.0.0-rc.1 — accepted 2026-08-09**.

## Current next milestone: M25 — Post-release compatibility foundation

The first-release RC itself remains frozen. Post-release feature development has now been intentionally reopened through the recorded roadmap, but **M25 must be completed and accepted before any M26+ gameplay content is added**.

Read these files first:

1. `docs/PROJECT_STATUS.md` — authoritative accepted baseline and current project state;
2. `docs/POST_RELEASE_DEVELOPMENT_ROADMAP.md` — M25–M40 expansion route and acceptance gates;
3. `docs/KNOWN_ISSUES.md` — accepted non-blocking observations that must not be mistaken for data-integrity regressions.

## M25 scope

M25 is compatibility and migration infrastructure only. It must:

- branch from the user-returned M24 final accepted source baseline;
- establish an explicit post-release data/schema version strategy without silently breaking `SkyWorldData` v9 saves;
- document and test registry-ID freeze rules;
- add migration fixtures for an accepted M24 world copy or a faithful synthetic equivalent;
- add generic distant/outer-island distance or tier metadata while preserving existing first-release island results;
- establish M25+ JUnit/GameTest naming and release-package checks;
- keep first-release gameplay behavior unchanged.

## Compatibility contract to preserve

Until an explicit tested migration says otherwise:

- Minecraft 1.21.1 / NeoForge 21.1.244 / Java 21 remain the accepted baseline;
- Mod ID remains `skyremnants`;
- existing registry IDs remain frozen;
- existing network payload identities/semantics remain compatible;
- `SkyWorldData` v9 must load correctly;
- existing airship slot indices and inventory semantics remain valid;
- `supply_manifest` remains compatible;
- old generated chunks and islands are never regenerated or overwritten;
- single-player, dedicated-server, multiplayer synchronization, save compatibility and performance remain mandatory acceptance dimensions.

## M25 acceptance gate

Before M25 can close:

- M24 worlds load, save and reload without data loss;
- existing island IDs, machine inventories, airships, modules, manifests, challenge data and player scan state remain valid;
- newly generated distant chunks can use the post-release worldgen extension point without changing already-generated content;
- JUnit, clean build, release-JAR verification, GameTest, dedicated server and real Linux headless client all pass;
- the user performs final local Windows acceptance;
- the milestone ships with a full project, incremental update from M24, update notes, PowerShell build commands, acceptance checklist and known limitations.

## Explicit boundary

Do **not** begin M26 content early. No Deep Crystal Fault island, diamond sample/cultivation, Otherworld Fragment island, new hostile-mob sample, long-range scanner or airship retrofit belongs in M25.

If an RC hotfix is required while M25 is in progress, isolate it from the M25 feature branch and preserve the accepted M24 compatibility contract.
