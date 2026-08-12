# M31 Final Accepted Source Identity — 2026-08-12

M31 is accepted and closed. The authoritative final source/runtime artifacts are identified below.

## Artifacts

- M31 final accepted full-project ZIP
  - size: 782,193 bytes
  - SHA-256: `0804b5ba95b1e748294f2f2e3484817ba3342d72d4b2f363a8d9d669f728a026`
- M30 final -> M31 final accepted incremental ZIP
  - size: 126,701 bytes
  - SHA-256: `e45de4ad357d8b638e73ea7cc529dde771e02359eb6b29254c5a8f6a75f0f221`
- M31 accepted-candidate -> final status-only ZIP
  - size: 16,252 bytes
  - SHA-256: `0013e4acab7b7ad4824d431497850a3215c5f5ca6aa7f72c44384e4d733d7321`
- M31 final accepted runtime JAR
  - size: 563,951 bytes
  - SHA-256: `4a02eb20f6d14727712278cb52d5d0cb6e071f031b7e9600f96ee215b9e53d91`

## Overlay verification

`M30 final accepted + M31 final incremental = M31 final accepted full`:

- missing: 0
- extra: 0
- different: 0

`M31 accepted candidate + final status update = M31 final accepted full`:

- missing: 0
- extra: 0
- different: 0

Full-ZIP extraction was also compared with the frozen final staging tree: missing 0 / extra 0 / different 0.

## Packaging hygiene

- ZIP integrity: PASS;
- `.git`, `.gradle`, `build`, `run`, `__pycache__`: not packaged;
- temporary Linux validation/Maven paths: not packaged;
- runtime JAR is byte-for-byte the accepted candidate JAR because finalization is documentation/status-only.

The GitHub connector records the exact artifact identity. If binary ZIP bytes are not embedded in the repository, this document must not be interpreted as claiming that they are.
