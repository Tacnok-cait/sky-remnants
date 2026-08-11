# M25 Final Accepted Source Delta

This directory stores the exact binary-safe M24 final -> M25 final accepted incremental archive.

## Authoritative hashes

- M24 final accepted full project SHA-256: `0136bbcaecf0ac3b52222884950d723a4bea7567ad296df7719913b9f2ed88c5`
- M25 final accepted incremental ZIP: `skyremnants-m25-final-accepted-update-from-m24-final-20260811.zip`
- incremental ZIP size: `69180` bytes
- incremental ZIP SHA-256: `606f8caab22033a9df864f400f8351626369de1aa6e74ffc50bdecf7065a5aca`
- M25 final accepted full project SHA-256 after applying the delta: `4b351b9d7a4e582e71763257a0d24b2a8eda9ccaa233cdf948df50c1efeebb7a`

The ZIP is Base64-encoded and stored as 13 files. Parts `00` through `08` are followed by `09a`, `09b`, `09c`, then `10`; lexical filename order is the required concatenation order. Concatenate them without inserting separators, decode Base64, then verify the incremental SHA-256 before applying it over the M24 final accepted source.

Use `reconstruct-m25-update.ps1` on Windows PowerShell.

## Milestone state

M25 — Post-release compatibility foundation — was accepted on 2026-08-11. `SkyWorldData` v9 is explicitly migrated to v10, accepted registry/network/airship contracts remain frozen, and the outer-island distance/tier metadata is derived/read-only. M26 Deep Crystal Fault + diamond progression is the next milestone.

Do not use historical M20 bootstrap branches as an M25 source baseline.