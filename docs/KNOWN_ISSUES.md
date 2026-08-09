# Known Issues and Observations

## Accepted non-blocking observation: multiplayer supply-menu snapshot

When two clients keep the same airship supply menu open, the second already-open client does not live-refresh the first client's ghost-target edit.

Final M24 multiplayer acceptance reconfirmed:

- server state remains authoritative;
- reopening shows current shared data;
- closing an old menu does not overwrite newer state;
- no real-item duplication or loss;
- supply target persistence survives full client/server restart.

This remains UI-only and is not a first-release blocker.

## Closed before / during M24

- M21 deadlock recovery: closed and accepted;
- M20 TestControl production isolation: closed and accepted;
- M22 GameTest production isolation: closed and accepted;
- M23 visual identity / vanilla-placeholder debt: closed and accepted;
- M24 release metadata, license-facing files and production-JAR audit: closed;
- historical-world migration gate: 13/13 retained copies passed;
- official Jade/JEI runtime gate: closed;
- dual-client shared-airship/data-safety gate: closed;
- final Windows presentation/log gate: closed.

No known release-blocking gameplay, data-safety, compatibility or presentation defect remains in the accepted `1.0.0-rc.1` source.
