# Next Work

Authoritative accepted baseline: **M24 / 1.0.0-rc.1 — accepted 2026-08-09**.

## Immediate mode: release / bug fixes only

The first-version feature slice is frozen. Do not add new progression systems to this RC line unless a release-blocking regression requires a narrowly scoped fix.

Priorities:

1. preserve registry IDs, `SkyWorldData` v9, network payloads and existing save compatibility;
2. fix only reproducible release defects found against the accepted M24 baseline;
3. keep the release-JAR TestControl/GameTest/compat-stub boundary enforced;
4. retain Windows + Linux smoke coverage for any RC hotfix;
5. retain the M19 supply-menu snapshot issue as a non-blocking UI observation unless data safety changes.

## Post-first-release roadmap

Only after the first release is intentionally reopened for feature development should the project resume 6–15h / 15h+ content such as larger airships, harder external regions, advanced equipment, bosses/endgame or other previously deferred systems. These are not part of `1.0.0-rc.1`.
