# Sky Remnants Project Status

## Authoritative accepted baseline

**M41 — Skybridge Builder / 天桥构筑器**

Status: **accepted and closed on 2026-08-14**.

M41 passed the frozen candidate automation chain and the complete user-local acceptance checklist. The exact M41 final accepted full-project ZIP remains the authoritative accepted source artifact.

## Accepted validation

- JUnit: **186/186**, 52 suites;
- GameTest: **104/104 in 3.383 s**;
- release build/JAR verification: PASS;
- dedicated-server smoke: PASS;
- real Xvfb + Mesa llvmpipe client smoke: PASS;
- user-local M41 acceptance checklist: **PASS**.

## Frozen compatibility contract

- Minecraft 1.21.1 / NeoForge 21.1.244 / Java 21;
- `SkyWorldData` remains v11; payload protocol remains 1;
- Basic Airship remains 91 real slots with indices 28 / 29 / 36 / 46 / 90;
- Large Expedition Vessel remains data version 1, 128 real slots, maximum 108 cargo;
- existing input payload schemas remain v1;
- M40 Dockyard Deployment behavior remains unchanged;
- M41 adds no block/entity/menu/payload/Data Component/SavedData/world-profile schema;
- generated terrain/player builds are never retroactively rewritten.

## Accepted limitations

Skybridge Builder v1 remains horizontal, straight-line and eight-block maximum. Stateful/orientation-sensitive blocks and block-entity materials are intentionally rejected. The accepted pre-generated DEEP old-terrain/new-presentation seam remains unchanged.

## Next phase

**M42 is unlocked for one focused vertical slice.** Prefer one final long-range expedition objective/loop without adding another vessel tier or bundling unrelated equipment, automation/power systems or destructive world reinterpretation.
