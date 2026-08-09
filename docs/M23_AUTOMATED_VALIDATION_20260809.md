# M23 Rev2 Automated Validation — 2026-08-09

Candidate: M23 Visual Identity Texture Redraw Rev2, based on accepted M22.

## Vanilla texture audit

Actual cached Minecraft 1.21.1 client JAR SHA-1: `30c73b1c5da787909b2f73340419fdf13b9def88`.

- vanilla item PNG: 605 / 605 are 16×16;
- vanilla block PNG: 963 are 16×16;
- 49 block exceptions are animated/multi-frame resources.

Vanilla PNGs were inspected only as a technical/style reference and are not copied into the Sky Remnants artifacts.

## Results

- JUnit: 71/71, 24 suites, zero failures/errors/skips.
- `clean build`: passed.
- Production JAR: 522,223 bytes, 442 entries, SHA-256 `8833132d0947e5e2601d9c4b29d32cff0489742dd82957bb3ac9c9c58f46b5e6`.
- Release boundary: zero TestControl/GameTest forbidden entries.
- JAR textures: 32 item + 34 block + 1 entity = 67 project textures; mod icon present.
- GameTest: 65/65 in 2.835 s with normal save/exit.
- Dedicated server: reached `Done (0.483s)!`, accepted stop, saved all dimensions, Gradle exit 0.
- Real Xvfb client: control ready, TitleScreen, screenshot, graceful stop, exit 0, llvmpipe OpenGL 4.5.
- Client unexpected errors: 0.
- Resource/model log check: PASS.
- New crash report check: PASS.

Rev2 changes the project visual PNG set and adds a reproducible texture generator in the full source artifact. Gameplay/save/network/registry semantics are unchanged: `SkyWorldData` version 9, airship slots, `supply_manifest`, recipes and payloads remain unchanged.
