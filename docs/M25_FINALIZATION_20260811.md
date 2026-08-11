# M25 Finalization — 2026-08-11

M25 is formally closed after user-local acceptance passed.

This finalization records the accepted compatibility foundation and source-archive identity. It does not add M26 gameplay content.

## Accepted baseline transition

- Previous accepted development baseline: M24 / first-release RC.
- New accepted development baseline: **M25 compatibility foundation**.
- Next milestone: **M26 Deep Crystal Fault + diamond progression**.

The M24 final source remains the immutable historical first-release reference, but all new post-release development must branch from M25.

## Source identity

- M24 final accepted full-project SHA-256: `0136bbcaecf0ac3b52222884950d723a4bea7567ad296df7719913b9f2ed88c5`;
- M24 final -> M25 final incremental SHA-256: `606f8caab22033a9df864f400f8351626369de1aa6e74ffc50bdecf7065a5aca`;
- M25 final accepted full-project SHA-256: `4b351b9d7a4e582e71763257a0d24b2a8eda9ccaa233cdf948df50c1efeebb7a`.

The exact incremental archive is retained under `.source-archives/m25-final/` in binary-safe Base64 parts with a reconstruction script and manifest.

## Candidate runtime artifact retained

The finalization documentation does not rebuild or alter the already tested M25 runtime JAR. Candidate automated-validation JAR SHA-256 remains:

`302e6e31968fd7c144ef5d0f18367536df0846eda3e51bead5de33852c797e22`
