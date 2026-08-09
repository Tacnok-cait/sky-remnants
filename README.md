# Sky Remnants / 天穹残岛

Minecraft Java Edition 1.21.1 + NeoForge 21.1.244 mod project.

## Authoritative baseline

**M22 final verified — accepted 2026-08-09.**

Authoritative accepted source archive:

- `skyremnants-m22-final-verified-full-project-20260809.zip`
- SHA-256 `09a957807867b201c52bd07453a3969d1aa2d4059f714c91a5ba0e95a0592cf8`

## Current branch candidate

**M23 — first-release visual identity. Automated + real-client validation passed; user-local Windows/visual acceptance pending.**

M23 adds no gameplay. It replaces vanilla visual placeholders with project-owned pixel art and a custom airship renderer while preserving the M22 gameplay/save/network surface.

Implemented:

- 32 project-owned 16×16 standalone item textures;
- 34 project-owned 16×16 block textures;
- 64×64 custom basic-airship entity texture;
- custom `BasicAirshipModel` + `BasicAirshipRenderer`;
- reinforced airship armor geometry;
- 128×128 project mod icon;
- distinct eye-level side panels for important machines.

Automated evidence:

- JUnit 71/71, 24 suites;
- clean build passed;
- production JAR 517,008 bytes / 441 entries / zero TestControl or GameTest forbidden entries;
- GameTest 65/65 in 3.360 s;
- dedicated server passed;
- real Xvfb + llvmpipe client passed resource/model/crash checks;
- real client + test server visual pass confirmed item icons, machine side panels and custom airship rendering.

Candidate artifacts:

- full project SHA-256 `fcee74d5adbfa0e44eace5e39215002fc79046783434813ccb215eb827442d69`;
- M22→M23 incremental SHA-256 `365c8007bfd4b4f3bdbd4f2f76410e3ff50605312964b1ea3cb2dcf4ba4706c2`;
- candidate JAR SHA-256 `396029baa6ff94a745de1853ad9425f391404ff61175068a5b2a7127c3c9830c`.

## Cross-conversation entry

Read:

1. `docs/DESIGN_BASELINE.md`
2. `docs/PROJECT_STATUS.md`
3. `docs/NEXT_WORK.md`
4. `docs/KNOWN_ISSUES.md`
5. `docs/M23_IMPLEMENTATION_NOTES.md`
6. `docs/M23_AUTOMATED_VALIDATION_20260809.md`
7. `docs/M23_ACCEPTANCE_CHECKLIST.md`

`main` remains M22 accepted until M23 user-local acceptance. Complete ZIP snapshots remain authoritative source artifacts while the repository is used as the cross-conversation status/candidate index.