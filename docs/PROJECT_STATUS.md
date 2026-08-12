# Sky Remnants Project Status

## Authoritative accepted baseline

**M32 — 6–15h Integration Closure**

Status: **accepted and closed on 2026-08-12**.

The authoritative runtime/development baseline is the M32 final accepted source, produced directly from M31 final accepted plus the user-accepted M32 integration closure and documentation-only finalization.

M24 remains the immutable first-release RC reference. M25 established the post-release compatibility foundation. M26–M31 built the first post-release 6–15h content slice. M32 closes that slice as one validated progression/compatibility baseline.

## M32 delivered scope

- closed the M26→M31 progression as a coherent 6–15h loop without adding M33+ frontier content;
- fixed scanner feedback that incorrectly hard-coded 600 blocks for 1600/2200 scan tiers;
- added integration contracts for schema/protocol/airship slots, scan roles, resource progression, automation boundaries and accepted island broad kinds;
- added retained-save GameTest coverage joining v10→v11 world migration with pre-M31 airship NBT and persisted expedition retrofit state;
- confirmed no new circular progression gate requiring a new schema, machine class or resource tier.

## Accepted validation evidence

- automated JUnit: **129/129**, 39 suites;
- automated GameTest: **81/81 in 2.338 s**;
- automated clean build/release verification, dedicated-server smoke and real Linux client smoke: PASS;
- user-local Windows JUnit: **129/129**;
- user-local Windows GameTest: **81/81 in 3.910 s**;
- user-local clean build/release verification, dedicated-server smoke and M26 retained-world migration smoke: PASS;
- user-local WSL2 main-menu + in-world real-client acceptance: PASS;
- visual review: no missing texture/rendering anomaly;
- explicit user confirmation: **M32通过** on 2026-08-12.

One first WSL2 headless attempt stalled due to stale previous-version process interference. Cleanup + unchanged rerun passed; retained as a non-blocking environment observation.

## Compatibility contract

- Minecraft Java Edition 1.21.1 / NeoForge 21.1.244 / Java 21;
- `SkyWorldData`: v11;
- payload protocol: 1;
- Basic Airship real container: 91;
- module slots A/B/C/D: 28/29/36/46;
- logistics slot: 90;
- `supply_manifest`: unchanged;
- accepted machine/inducer/mineral ordinals frozen;
- accepted M26→M31 deterministic profile ordering frozen;
- generated terrain/player builds never regenerated or overwritten.

## Accepted source identity

- M32 final accepted full-project SHA-256: `edc4e8a574f5845cd073fb96d2d19b5aa3ce04d2d6e989dc1e329370772ce59b`;
- M31 final → M32 final incremental SHA-256: `4a6c9dd61990da5d268f131aa82afb96f9763b35c93680dad48f3f794b41be04`;
- reference accepted JAR SHA-256: `120b9ab4d1138f997883e1c7cbdb326aab46cb88a8f03a4a254b2c586bd8ef3f`;
- user-local Windows accepted build JAR SHA-256: `a5f88bbfaf498820764e50f0088deb9d2b9f42a4ed5a22c9d8945c6183253760`.

The accepted source archive, not cross-platform JAR byte identity, is authoritative.

## Retained non-blockers

- M19 second-open-supply-menu live refresh observation remains; server state authoritative, no accepted duplication/loss.
- M26 Deep Crystal visual polish remains deferred/new-chunks-only.
- M29 early headless environment race passed unchanged on rerun.
- M31/M32 stale-process headless interference passed unchanged after process cleanup.
- already-generated M31 STANDARD challenge terrain is not rewritten if later presented as Blockade.

## Post-M32 roadmap

Detailed plan: `docs/POST_M32_DEVELOPMENT_ROADMAP.md`.

The post-M32 sequence is now refined as:

- M33 — Dangerous Outer Ring / Deep Survey Bridge;
- M34 — End Fragments / first DEEP End resources;
- M35 — Drifting End City / Shulker progression / Ender Pearl automation closure;
- M36 — Ash Crown Forge / Ancient Debris + Wither;
- M37+ — large expedition vessel and endgame integration.

## Immediate next milestone

**M33 — Dangerous Outer Ring / Deep Survey Bridge.**

M33 scope is frozen to one 3200-block Deep-range scanner tier plus one OUTER-only Storm Relay challenge family and compatibility coverage. M34+ remains locked until M33 local acceptance.
