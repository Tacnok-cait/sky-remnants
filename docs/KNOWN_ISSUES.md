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

## Closed: first-release deadlock recovery

M21 is accepted. Lost starting lava has an expensive emergency recovery recipe, and qualifying distant ecology islands provide one-time chicken/sheep recovery fauna.

## Closed: development test code in production JAR

M20 isolates TestControl. M22 isolates GameTest Java/classes and GameTest structure templates while retaining the development test suite. Release-JAR verification guards against regression.

## M23 candidate: visual identity

The former vanilla-boat/basic-item presentation debt is addressed by the current M23 candidate through project-owned item/block textures, a custom basic-airship model/renderer/texture, and a project mod icon.

M22 remains authoritative until M23 user-local visual acceptance passes.

## Deferred to M24 RC audit

The project still declares `All Rights Reserved`. Final license-facing release text/files, distribution metadata audit, complete old-save/multiplayer/Jade/JEI regression matrix and first-release RC packaging are deliberately deferred to M24 rather than expanding M23.