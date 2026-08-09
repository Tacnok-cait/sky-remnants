# Sky Remnants Project Status

## Authoritative accepted baseline

**M23 Visual Identity Rev2 — accepted and closed on 2026-08-09.**

The M23 final verified archive is the last user-accepted source baseline.

## Current candidate

**M24 — First-release Release Candidate closure / `1.0.0-rc.1`**

Status: **Linux automated RC core validation passed; final user-local Windows acceptance pending.**

M24 is release engineering only. It adds no gameplay systems and changes no registry IDs, recipes, network payloads, NBT/SavedData schemas, airship slot indices or save format. `SkyWorldData` remains version 9.

### Linux automated evidence

- JUnit 74/74 in 25 suites;
- final `clean build` and `verifyReleaseJarContents` passed;
- production JAR: 523,138 bytes / 444 entries / SHA-256 `1a0598642d9451d5c04a242c7e03bf3224779f3efdc2d1dd4018101f832c42ac`;
- zero TestControl/GameTest/Jade/JEI-stub release leakage;
- GameTest 65/65 in 1.893 s;
- dedicated server reached `Done (0.524s)!`, stopped and saved normally;
- real Linux Xvfb + llvmpipe client reached TitleScreen, passed resource/model/crash checks and exited 0;
- en_us / zh_cn remain 352 / 352 keys.

### Final Windows acceptance gates

M24 must not be declared accepted until the user closes:

1. retained historical-world migration on copies of available accepted worlds;
2. official Jade/JEI runtime compatibility;
3. one-server/two-client multiplayer and supply-manifest/data-safety regression;
4. final Windows presentation/log check.

See `M24_ACCEPTANCE_CHECKLIST.md`, `M24_AUTOMATED_VALIDATION_20260809.md` and `M24_KNOWN_LIMITATIONS.md`.
