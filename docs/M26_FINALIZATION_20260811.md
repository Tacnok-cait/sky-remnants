# M26 Finalization — 2026-08-11

## Milestone

**M26 — Deep Crystal Fault + diamond progression**

Final status: **accepted and closed**.

## Authoritative baseline transition

Previous accepted baseline:

- M25 — Post-release compatibility foundation.

New accepted baseline:

- M26 — Deep Crystal Fault + diamond progression.

All M27 work must start from the M26 final accepted source package. M25 remains
the compatibility-foundation reference and M24 remains the immutable first-release
RC reference.

## Runtime implementation frozen at acceptance

The final accepted M26 runtime/code/resource content is byte-for-byte the same as
the user-tested M26 candidate. Finalization changes documentation/status only.

Therefore the already validated candidate production JAR is retained unchanged as
the M26 final accepted JAR:

- 532,594 bytes;
- 453 entries;
- SHA-256 `8a2791b77b2ab89932cd55cfd2c699d47bb7bf41d119aab06c5618df1fdfec05`.

No new build/runtime claim is made for the documentation-only finalization step.

## Acceptance evidence

Candidate automated validation:

- JUnit 87/87;
- clean build PASS;
- release-JAR verification PASS;
- GameTest 69/69 in 1.867 s;
- dedicated-server smoke PASS;
- Linux real headless-client smoke/resource/model/crash checks PASS.

User-local acceptance:

- explicitly reported **accepted** on 2026-08-11.

## Final compatibility state

- `SkyWorldData` v10;
- append-only Diamond Mineral Sample item ID;
- no new M26 network payload/protocol;
- no airship slot/index migration;
- no rewrite of accepted external-island IDs/coordinates/shapes;
- no regeneration of old chunks;
- existing Mineral Cultivation Bed modes preserved with append-only DIAMOND mode.

## Deferred non-blocking presentation observation

Future Deep Crystal generation may be visually improved with:

- a more clearly linear rift silhouette;
- more concentrated amethyst/geode formations in part of the island.

This is not a blocker, does not change M26 acceptance, and is not automatically
committed to M27. If implemented later it must be new-chunk-only and preserve old
terrain/save compatibility.

## Source archive identity

- M25 final accepted full-project SHA-256: `4b351b9d7a4e582e71763257a0d24b2a8eda9ccaa233cdf948df50c1efeebb7a`;
- M26 final incremental ZIP SHA-256: `015117698d1ed5036dab4330b0ce1c8d7c30a584076420bbb379db62882ce685`;
- M26 final accepted full-project SHA-256: `5e162406a23b5d84f2f1890ae8bc93cba0a710d621375a8ff3a899a874f948ec`.

## Next milestone

**M27 — Remote outposts, amethyst harvesting and long-range scanning.**

M28 remains blocked until M27 is accepted.
