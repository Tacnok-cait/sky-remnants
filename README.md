# Sky Remnants / 天穹残岛

Minecraft Java Edition 1.21.1 + NeoForge 21.1.244.

## Accepted baseline

**M23 — First-release visual identity Rev2**

Status: **accepted and closed on 2026-08-09**.

M23 is presentation-only. It does not change gameplay, registry IDs, networking, NBT, SavedData schema, recipes, airship slots or save migration.

Accepted visual scope:

- 32 project-owned 16×16 standalone item textures;
- 34 project-owned 16×16 block textures;
- custom 64×64 basic-airship entity texture;
- custom `BasicAirshipModel` and `BasicAirshipRenderer`;
- reinforced-state armor geometry;
- 128×128 mod icon;
- distinct eye-level machine side panels;
- reproducible `scripts/generate-m23-textures.py`.

Validation before acceptance:

- JUnit 71/71;
- clean build passed;
- GameTest 65/65;
- dedicated server passed;
- real Linux Xvfb + llvmpipe client passed resource/model/crash checks and exited 0;
- user accepted the Rev2 visual direction on 2026-08-09.

No additional Windows build log was supplied for M23; the full Windows/legacy-save/compatibility sweep is part of M24 RC acceptance.

## Next

M24 is the first-release Release Candidate closure/audit milestone. No new 6–15h or 15h+ gameplay systems are added before RC.
