# M24 First-release RC Acceptance Checklist

Status: **accepted and closed on 2026-08-09.**

## Automated build boundary

- [x] JUnit 75/75;
- [x] `clean build` passes;
- [x] GameTest remains 65/65;
- [x] `verifyReleaseJarContents` passes;
- [x] dedicated server reaches ready state and stops/saves normally.

## Release JAR

- [x] output is `skyremnants-1.0.0-rc.1.jar`;
- [x] Mod list shows project icon/version/authors/description;
- [x] JAR contains `META-INF/LICENSE` and `META-INF/THIRD_PARTY_NOTICES.md`;
- [x] no TestControl, GameTest, Jade/JEI stub classes or editor/cache files are packaged;
- [x] en_us and zh_cn resources load without missing keys/models/textures.

## Historical save migration

- [x] 13 retained world copies spanning available M2–M14 acceptance worlds loaded, saved and stopped normally;
- [x] no migration-specific severe errors or new crash reports were found.

## Official optional compatibility runtime

- [x] core mod works without Jade/JEI hard dependencies;
- [x] Jade 15.10.0+neoforge loads the Sky Remnants provider;
- [x] JEI 19.21.0.247 reaches started state and registers Sky Remnants content;
- [x] no `snownee.*` or `mezz.*` stubs are packaged inside Sky Remnants.

## Multiplayer / data safety

- [x] two clients join one dedicated server;
- [x] shared airship inventory/module state remains authoritative;
- [x] supply-manifest changes do not duplicate, lose or stale-overwrite real items;
- [x] accepted M19 already-open second-menu behavior remains UI-only;
- [x] scan state remains player-specific;
- [x] cargo/modules/manifest survive full client/server restart.

## Final presentation

- [x] final M23/M24 project textures and challenge-pedestal sides render correctly;
- [x] custom basic/reinforced airship renders correctly;
- [x] cargo/supply UI remains aligned and readable;
- [x] no missing model/texture or purple/black error texture;
- [x] final Windows review found no P0/P1 presentation issue and crash-report count was zero.

All release gates are closed. See `M24_LOCAL_ACCEPTANCE_RESULT_20260809.md` and `M24_FINALIZATION_20260809.md`.
