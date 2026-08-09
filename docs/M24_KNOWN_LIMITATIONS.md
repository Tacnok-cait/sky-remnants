# M24 RC Known Limitations / Closed Acceptance Gates

M24 does not have a known release-blocking gameplay or presentation defect after the Windows acceptance pass on 2026-08-09.

## Historical world migration — closed

Thirteen retained world copies covering available M2–M14 acceptance worlds reached dedicated-server ready state, saved and exited normally. The originals were not modified.

## Official Jade / JEI runtime — closed

- Jade `15.10.0+neoforge`, SHA-256 `803003BD24D3ECC67EBFD5CEA0A3F591804D9E118EBF6755347BD3F42D43D985`;
- JEI `19.21.0.247`, SHA-256 `413680B163B2F4477409512E393B7F33133C4C395D55BBDF877791008B3EF702`.

Jade loaded the Sky Remnants provider and JEI reached started state with Sky Remnants registration.

## Dual-client multiplayer — closed

Two independent Windows clients joined one dedicated server. Shared airship cargo/modules synchronized in both directions, scan state remained player-specific, supply-manifest edits remained server-authoritative, and cargo/modules/manifest survived a full client/server restart.

## Accepted non-blocker

If two clients keep the same airship supply menu open, the second already-open menu does not live-refresh the first client's ghost-target edit. Reopening reflects authoritative server state. Final M24 acceptance reconfirmed no duplication, loss or stale-close overwrite. This remains UI-only and is not an RC blocker.
