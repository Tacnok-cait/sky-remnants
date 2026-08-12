# M33–M37 Acceptance Chain — 2026-08-12

Status: **accepted through M37**.

The authoritative local source artifacts for M33–M37 were finalized after explicit user-local acceptance. Finalization is documentation/status-only at every step; runtime code in each final package is byte-identical to the locally accepted candidate/provisional checkpoint for that milestone.

## M33 — Dangerous Outer Ring / Deep Survey Bridge

- user-local acceptance: PASS;
- JUnit 136/136, 41 suites;
- GameTest 83/83 in 2.736 s;
- build/release, dedicated server and real client: PASS;
- final full-project SHA-256: `55d4e71095b49d5f753a5c4fda3dd80cfe99765412ea13b051850574ba99e2e7`;
- M32→M33 final incremental SHA-256: `77f5dcdcfe8eafe74cc034eaae0d9313439da5c7a35ffbc6490e7faf53886133`;
- accepted JAR SHA-256: `7b72cfccfec7bab60393f34cfefc186658546364a34378fdade7b916f3f1dd29`.

## M34 — End Fracture / First Deep-Band End Resources

- user-local acceptance: PASS;
- JUnit 143/143, 43 suites;
- GameTest 85/85 in 5.087 s;
- build/release, dedicated server and real client: PASS;
- final full-project SHA-256: `ed54ba20c2ba8670a9ae21aa928f3a7bac11103a0c000505d49c6a59da31e2a0`;
- M33→M34 final incremental SHA-256: `d5a299e4458a6804458e03aaf418beb04b344f8e394df4bc2567ce65bf76dc31`;
- retained accepted JAR identity from the provisional validation: `37e2be69ec4484ed4b4f326718397cd332f0b002f1689fc9f73d0443bb875ee5`.

## M35 — Drifting End City / Enderman Automation

- user-local acceptance: PASS;
- JUnit 151/151, 45 suites;
- GameTest 88/88 in 2.791 s;
- build/release, dedicated server and real client: PASS;
- final full-project SHA-256: `3e36f94a015b1952eca3fa402bede35964b6acca540312157874b6e9831872c9`;
- M34→M35 final incremental SHA-256: `48c088b52702e93bad00b0bf45c2a988b0297248c4b60fda8e47d04246bbff36`;
- accepted JAR SHA-256: `be452bd613b0a63dd479099bce90c19bad0a110c4655980ae1b336f614e4462c`.

## M36 — Ash Crown Forge / Ancient Debris + Wither

- user-local acceptance: PASS;
- JUnit 158/158, 47 suites;
- GameTest 91/91 in 3.454 s;
- build/release, dedicated server and real client: PASS;
- final full-project SHA-256: `3ee36c17983a6ec7da55e13e55d4dc45c7a8ab634901024fa9cb1078312f659c`;
- M35→M36 final incremental SHA-256: `221ed19d6d7b67ccc8a03f5ff5c6bacb14dc6c237624046660032866c0f6a791`;
- accepted JAR SHA-256: `95e00e7467993d0f6da8e8dad615bb0cec0464b034143a9fa078a883f827e1c4`.

## M37 — Large Expedition Vessel Compatibility Foundation

- user-local acceptance: PASS;
- JUnit 162/162, 48 suites;
- GameTest 92/92 in 2.177 s;
- build/release, dedicated server and real client: PASS;
- final full-project SHA-256: `91520ce27a3d9e04815511ec4f8e2a7bfea980d9bce5314722e2bedf120eae2e`;
- M36→M37 final incremental SHA-256: `a69717bee3a2803cca70f6b410f59574a370f390b49752ab5aba5666187db986`;
- accepted JAR SHA-256: `443ea918da4381b01b4a622985e8c90cf69f806a615a4d257856d098e5dca6b5`.

## Compatibility boundary at M37

- `SkyWorldData` remains v11;
- payload protocol remains 1;
- accepted Basic Airship remains 91 slots with module slots 28/29/36/46 and logistics slot 90;
- `supply_manifest` remains unchanged;
- M37 adds a generic docking/logistics facade but does not register a Large Expedition Vessel entity;
- the future Large Expedition Vessel contract is independent version 1 with 128 real slots and must not reinterpret Basic Airship indices.

## Repository synchronization note

The exact accepted binary source ZIPs are authoritative local artifacts. The current GitHub connector cannot ingest a local `/mnt/data/...zip` file directly; therefore this repository records exact artifact identities and acceptance history rather than falsely claiming those ZIP bytes are embedded in GitHub.
