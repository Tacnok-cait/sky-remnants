# M26 final accepted source archive

This directory stores the exact **M25 final accepted -> M26 final accepted** incremental archive in binary-safe Base64 text parts.

The runtime implementation is the exact user-accepted M26 candidate; finalization changed documentation/status only.

## Identity

- M25 final accepted full-project SHA-256: `4b351b9d7a4e582e71763257a0d24b2a8eda9ccaa233cdf948df50c1efeebb7a`
- M26 final incremental ZIP SHA-256: `015117698d1ed5036dab4330b0ce1c8d7c30a584076420bbb379db62882ce685`
- M26 final accepted full-project SHA-256: `5e162406a23b5d84f2f1890ae8bc93cba0a710d621375a8ff3a899a874f948ec`
- Accepted M26 JAR SHA-256: `8a2791b77b2ab89932cd55cfd2c699d47bb7bf41d119aab06c5618df1fdfec05`

Use `reconstruct-m26-update.ps1` on Windows PowerShell. It concatenates the lexical part order recorded in `manifest.json`, decodes Base64, and checks the incremental ZIP SHA-256.

This archive is intended for exact cross-conversation source recovery. Do not treat the Base64 files as runtime resources.
