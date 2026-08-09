# Next Work

Authoritative user-accepted baseline: **M21 final verified / accepted 2026-08-09**.

## M22 — production GameTest isolation

Current scope is release engineering only. Do not add gameplay.

Goals:

1. Keep GameTest Java/data available to development `runGameTestServer`.
2. Remove GameTest Java/data from the production JAR.
3. Preserve the complete 65/65 GameTest suite.
4. Expand release-JAR verification so future builds fail if GameTest support leaks back into production.
5. Preserve single-player, dedicated-server, multiplayer, save, registry, network and airship behavior unchanged.

Automated Linux validation has passed for the current M22 candidate; user-local Windows acceptance remains required before M22 becomes authoritative.

## After M22 acceptance

### M23 — first-release presentation and RC closure

- replace the vanilla oak-boat airship visual placeholder if feasible without changing airship physics/save data;
- release metadata/package audit;
- full migration/regression pass across single-player, dedicated server, multiplayer, Jade/JEI and Windows/Linux client runs;
- produce the first-release RC.

Long-term 6–15h and 15h+ gameplay remains post-first-release.
