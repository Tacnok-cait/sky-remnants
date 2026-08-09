# M22 Finalization — 2026-08-09

M22 Production GameTest Isolation is **accepted and closed**.

Finalization is documentation/status-only. The accepted implementation is unchanged from the candidate used for local validation.

## Accepted evidence

- JUnit 66/66, 23 suites.
- `clean build` passed.
- Production JAR: 365 entries; zero TestControl/GameTest forbidden entries.
- GameTest 65/65 in 1.798 s.
- Dedicated server reached `Done (0.321s)!`, graceful stop/save.
- Real Linux Xvfb client reached TitleScreen and exited cleanly.
- User-local installation and validation passed on 2026-08-09.

## Compatibility

No migration is required. Registry IDs, recipes/gameplay, network payloads, `SkyWorldData` version 9, airship slot contracts and `supply_manifest` are unchanged.

## Next milestone

M23 — first-release presentation and RC closure. Do not expand long-term gameplay scope before the RC.
