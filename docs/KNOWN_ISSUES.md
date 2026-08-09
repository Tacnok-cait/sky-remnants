# Known Issues and Observations

## Accepted non-blocking observation: multiplayer supply-menu snapshot

When two clients keep the same airship supply menu open, the second already-open client does not live-refresh the first client's supply-target edit.

Verified behavior:

- server state remains authoritative;
- reopening the second menu shows current shared data;
- no real-item duplication;
- no data loss;
- closing an old menu does not overwrite the newer server manifest.

This remains a UI synchronization observation, not a data-integrity problem.

## Release state

- M21 requires no save migration.
- M22 candidate changes only development/release packaging boundaries and is not expected to require migration.
