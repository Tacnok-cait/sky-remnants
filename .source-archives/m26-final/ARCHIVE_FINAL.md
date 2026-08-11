# M26 final accepted source archive

This directory preserves the exact **M25 final accepted -> M26 final accepted** incremental source ZIP in a GitHub-text-safe form.

## Authoritative reconstruction entry point

Use:

- `manifest-final.json`
- `reconstruct-m26-update-final.ps1`

The earlier `manifest.json` / reconstruction helper were created before upload verification finished and are superseded by the `*-final` files above.

During verification the original 12,000-character `m26-update.part-11.b64` was deliberately split into four smaller files:

- `m26-update.part-11a.b64`
- `m26-update.part-11b.b64`
- `m26-update.part-11c.b64`
- `m26-update.part-11d.b64`

`manifest-final.json` records the only authoritative concatenation order and SHA-256 for every part.

## Expected reconstructed archive

- Name: `skyremnants-m26-final-accepted-update-from-m25-final-20260811.zip`
- Size: `109275` bytes
- SHA-256: `015117698d1ed5036dab4330b0ce1c8d7c30a584076420bbb379db62882ce685`

Applying that incremental ZIP over the M25 final accepted full project (SHA-256 `4b351b9d7a4e582e71763257a0d24b2a8eda9ccaa233cdf948df50c1efeebb7a`) produces the M26 final accepted full project (SHA-256 `5e162406a23b5d84f2f1890ae8bc93cba0a710d621375a8ff3a899a874f948ec`).
