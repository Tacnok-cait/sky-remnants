# M30 Source Identity — 2026-08-12

This file records the exact accepted M30 source/runtime artifact identities used for future reconstruction and comparison.

## Accepted baseline

M29 final accepted full project:

- filename: `skyremnants-m29-final-accepted-full-project-20260812.zip`
- SHA-256: `f7ca6e7e15057ece4e39fde0f526b1c9194c22b68ea3cc8516423e7d11f00c0e`

## M30 final accepted source

- filename: `skyremnants-m30-final-accepted-full-project-20260812.zip`
- size: 760,005 bytes
- SHA-256: `7d096adb4314bd1ea9471d90994c47ca8b11ab46160b23642631a27052108365`

M29 final -> M30 final incremental:

- filename: `skyremnants-m30-final-accepted-update-from-m29-final-20260812.zip`
- size: 81,616 bytes
- SHA-256: `06d61948e716a748da54846c11c88eaeb1c37d28bc717811ff1bcc0b3deda653`

M30 candidate -> final documentation/status update:

- filename: `skyremnants-m30-final-status-update-from-candidate-20260812.zip`
- size: 7,624 bytes
- SHA-256: `f1f5011edd5476e9ccfc3a6075ca7895421b3dc3b1f38cdfaca0f90814313984`

## Accepted runtime JAR

The final accepted runtime JAR is byte-for-byte unchanged from the user-tested M30 candidate.

- filename: `skyremnants-1.0.0-rc.1-m30-final-accepted.jar`
- size: 558,511 bytes
- SHA-256: `18b8310bd41330a30521482b6ad7b4748994e6b1fd7963c4db6a5b5f2ccc19df`

## Overlay verification

Both reconstruction relationships were verified before finalization:

- M29 final + M30 final incremental = M30 final: missing 0 / extra 0 / different 0.
- M30 accepted candidate + final status update = M30 final: missing 0 / extra 0 / different 0.

The GitHub connector used for this status sync does not directly ingest local binary ZIP files, so this document records the exact accepted source identity rather than falsely claiming that the complete ZIP bytes are embedded in the repository.
