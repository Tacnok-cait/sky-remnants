# M23 Automated Validation — 2026-08-09

Environment: Minecraft 1.21.1, NeoForge 21.1.244, Java 21, Gradle 9.2.1, Linux Xvfb + Mesa llvmpipe. Offline validation helpers remained outside the project.

## Results

- JUnit: 71/71, 24 suites, zero failures/errors/skips.
- Final `clean build`: passed.
- Production JAR: 517,008 bytes, 441 entries, SHA-256 `396029baa6ff94a745de1853ad9425f391404ff61175068a5b2a7127c3c9830c`.
- Release boundary: zero TestControl/GameTest forbidden entries.
- JAR contains 67 project textures, one mod icon, custom airship renderer/model.
- GameTest: 65/65 in 3.360 s with normal save/exit.
- Dedicated server: reached Done, accepted stop, saved all dimensions.
- Real Xvfb client: resource/model checks passed, TitleScreen, screenshot, OpenGL 4.5, zero new crash reports, graceful exit 0.
- Real client + test server visual pass confirmed custom item icons, distinct machine side panels and custom `skyremnants:basic_airship` rendering.

One earlier strict headless exit produced a transient OpenAL `Stop: Invalid name parameter`. No whitelist was added; an identical rerun completed with `HEADLESS_CLIENT_UNEXPECTED_ERRORS=0`. No M23 resource/renderer error accompanied the transient audio shutdown message.

Compatibility remains unchanged: registry IDs, recipes, network payloads, `SkyWorldData` version 9, airship slots, `supply_manifest` and save format.