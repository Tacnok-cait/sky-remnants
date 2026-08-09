# Sky Remnants — M23 Visual Identity Rev2 Candidate

Authoritative user-accepted baseline: **M22 final verified / accepted 2026-08-09**.

Current development: **M23 visual identity Rev2 — automated/Linux real-client validation passed; user-local Windows/visual acceptance pending.**

Rev2 supersedes the first M23 visual candidate. The redraw was based on a direct audit of the actual Minecraft 1.21.1 client texture dimensions and pixel density, while keeping all Sky Remnants art original.

## Rev2 summary

- 32 project-owned 16×16 item textures, redrawn;
- 34 project-owned 16×16 block textures, redrawn;
- existing custom 64×64 airship entity texture/model/renderer retained;
- 128×128 project mod icon;
- reproducible `scripts/generate-m23-textures.py` in the full source artifact;
- no gameplay/save/network/registry changes.

Minecraft 1.21.1 audit result:

- vanilla item PNG: 605 / 605 are 16×16;
- vanilla block PNG: 963 are 16×16; 49 are animated/multi-frame exceptions.

Rev2 artifacts:

- full project SHA-256 `da3b839285af45a47c06388d27f4146ad636a79f90ff1111ee74b69114eecd85`;
- M22→M23 Rev2 incremental SHA-256 `ca5c912ebe1640863751f99a50b36cdfaf02c420b8168031ce6d397ee26509a8`;
- candidate JAR SHA-256 `8833132d0947e5e2601d9c4b29d32cff0489742dd82957bb3ac9c9c58f46b5e6`.

## Cross-conversation entry

Read:

1. `docs/DESIGN_BASELINE.md`
2. `docs/PROJECT_STATUS.md`
3. `docs/NEXT_WORK.md`
4. `docs/KNOWN_ISSUES.md`
5. `docs/M23_VANILLA_TEXTURE_AUDIT_20260809.md`
6. `docs/M23_TEXTURE_REDRAW_REV2_20260809.md`
7. `docs/M23_AUTOMATED_VALIDATION_20260809.md`
8. `docs/M23_ACCEPTANCE_CHECKLIST.md`

M22 remains authoritative until user-local M23 acceptance. Complete ZIP artifacts remain the source authority while GitHub is the cross-conversation status/candidate index.
