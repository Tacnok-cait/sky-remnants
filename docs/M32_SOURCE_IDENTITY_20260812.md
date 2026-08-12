# M32 Source Identity — 2026-08-12

## Final accepted artifact identity

- M32 final accepted full-project ZIP SHA-256: `edc4e8a574f5845cd073fb96d2d19b5aa3ce04d2d6e989dc1e329370772ce59b`;
- M31 final → M32 final incremental ZIP SHA-256: `4a6c9dd61990da5d268f131aa82afb96f9763b35c93680dad48f3f794b41be04`;
- M32 candidate → final status patch SHA-256: `7f6501a3d7ec0aa87b22f0423f1090de432c1f276416e67c2c0f0ae0dc6b3769`;
- retained reference accepted JAR SHA-256: `120b9ab4d1138f997883e1c7cbdb326aab46cb88a8f03a4a254b2c586bd8ef3f`;
- user-local Windows accepted build JAR SHA-256: `a5f88bbfaf498820764e50f0088deb9d2b9f42a4ed5a22c9d8945c6183253760`.

## Lineage

M32 final accepted is the M31 final accepted source plus the user-accepted M32 integration-closure changes and a documentation/status-only finalization. The finalization step makes no runtime Java/resource/config changes.

Overlay verification:

- M31 final + M32 final incremental = M32 final: missing 0 / extra 0 / different 0;
- M32 candidate + final status patch = M32 final: missing 0 / extra 0 / different 0.

The GitHub connector records exact accepted artifact identities but does not claim the local binary ZIP bytes are embedded in the repository.
