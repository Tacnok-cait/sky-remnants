# Next Work

Authoritative user-accepted baseline: **M22 final verified / accepted 2026-08-09**.

## M23 — first-release presentation and RC closure

M22 is closed. Do not reopen TestControl/GameTest packaging unless a regression is found.

M23 is the final pre-RC milestone and must not expand the long-term gameplay scope.

### Planned scope

1. Replace the vanilla oak-boat airship visual placeholder with a project-specific visual if it can be done without changing airship physics, networking, storage slots, NBT or save migration.
2. Audit release metadata/package contents, mod description/icon/license-facing files and production-only JAR boundaries.
3. Run the full first-release regression matrix: unit tests, GameTest, dedicated server, real client, old-save migration, multiplayer data safety, Jade/JEI optional compatibility, and Windows/Linux client checks.
4. Produce the first-release Release Candidate package and acceptance checklist.

### Explicitly out of scope

Do not add 6–15h or 15h+ long-term systems before the first-release RC: larger/multiblock airships, bosses, special dimensions, advanced power/fluid/wireless logistics, endgame equipment or new progression tiers.

The accepted M19 multiplayer supply-menu snapshot observation remains a known non-blocking UI issue unless M23 testing reveals a data-safety regression.
