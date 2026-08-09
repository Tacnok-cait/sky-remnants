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

## Closed milestones

- M21: emergency lava recovery and distant chicken/sheep recovery are accepted.
- M20: TestControl is isolated from production JARs.
- M22: GameTest Java/classes/structures are isolated from production JARs.
- M23: vanilla visual placeholders are replaced by the accepted Rev2 project visual identity.

## M24 RC acceptance boundary

The current Linux workspace does not contain the historical M2→M23 user worlds or the previously accepted official Jade/JEI runtime JARs. M24 will provide automated coverage and Windows acceptance tooling, but the final historical-save and official compatibility-runtime checks must be executed on the user's retained Windows environment.
