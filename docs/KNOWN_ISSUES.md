# Known Issues and Observations

## Accepted observation: multiplayer supply menu snapshot

When two clients open the same airship supply menu, an already-open second client's view does not live-refresh the first client's supply-target change.

Verified behavior:

- server state remains authoritative;
- reopening the menu shows current data;
- closing an old menu does not overwrite newer state;
- no real-item duplication;
- no real-item loss.

This remains a non-blocking UI synchronization observation.

## Closed: deadlock recovery

M21 is accepted:

- lost starting lava has the expensive emergency lava-bucket recovery recipe;
- lost chicken/sheep stock can be recovered from qualifying distant ecology islands.

## Closed: development test code in production JAR

- M20 isolates TestControl.
- M22 isolates GameTest classes/resources.
- release-JAR verification guards both boundaries.

## M23 Rev2 candidate

The first M23 visual candidate is superseded by Rev2 after direct Minecraft 1.21.1 texture-size/pixel-density review.

Rev2 currently has no known functional blocker in automated/Linux validation. M22 remains authoritative until user-local visual acceptance.

## Deferred to M24 RC audit

- final root license-facing file/text (metadata currently remains `All Rights Reserved`);
- final distribution metadata/package audit;
- full old-save and dual-client matrix;
- Jade/JEI optional compatibility final pass;
- first-release RC packaging.
