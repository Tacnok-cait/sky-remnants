# Known Issues and Observations

## Accepted observation: multiplayer supply menu snapshot

When two clients open the same airship supply menu, an already-open second client's view does not live-refresh the first client's change.

Verified behavior:

- server state remains authoritative;
- reopening the menu shows current data;
- no duplication;
- no loss;
- no overwrite from closing the old menu.

This is recorded as a UI synchronization observation, not a data safety issue.

## Release notes

No known save migration is required from M19/M20.
