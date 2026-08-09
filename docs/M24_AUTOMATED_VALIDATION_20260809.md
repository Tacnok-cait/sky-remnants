# M24 Automated Validation — 2026-08-09

M24 is release engineering only; no gameplay/save/network/registry migration is introduced.

## Linux automated RC core

- JUnit: 74/74, 25 suites, 0 failures/errors/skips.
- `clean build` + `verifyReleaseJarContents`: PASS.
- production JAR: `skyremnants-1.0.0-rc.1.jar`, 523,138 bytes, 444 entries, SHA-256 `1a0598642d9451d5c04a242c7e03bf3224779f3efdc2d1dd4018101f832c42ac`.
- TestControl/GameTest/Jade/JEI-stub release leakage: 0.
- GameTest: 65/65 in 1.893 s, normal save/exit.
- dedicated server: `Done (0.524s)!`, normal stop/save.
- real Linux Xvfb + llvmpipe client: TitleScreen, screenshot, graceful quit, exit 0, unexpected errors 0, resource/model check PASS, crash-report check PASS.
- en_us / zh_cn: 352 / 352 keys.

## Not closed in this Linux workspace

- historical M2→M23 world migration: retained user world folders are not present;
- fresh official Jade/JEI runtime: accepted official JARs are not present and download hosts are unavailable;
- dual-client Linux orchestration: attempted after repairing helper paths, but outer execution timed out before a complete acceptance sequence; no mod data-integrity failure was observed, but this is **not counted as PASS**.

These remain final Windows M24 acceptance gates.
