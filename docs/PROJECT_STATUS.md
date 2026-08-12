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

### Automated candidate validation retained

- JUnit: **129/129**, 39 suites, 0 failures/errors/skips;
- `clean build`: PASS;
- `verifyReleaseJarContents`: PASS;
- GameTest: **81/81 in 2.338 s**;
- dedicated server: reached `Done (0.447s)!`, then stopped/saved normally;
- real Linux Xvfb + Mesa llvmpipe client smoke/resource/model/crash checks: PASS;
- unexpected client errors: 0;
- missing model/texture regressions: 0;
- new crash reports: 0.

### User-local final acceptance

- Windows JUnit: **129/129**, 39 suites;
- Windows `clean build`: PASS;
- Windows GameTest: **81/81 in 3.910 s**;
- Windows release-JAR verification: PASS;
- dedicated-server smoke: PASS;
- migration smoke from `M26 Deep Crystal Acceptance`: PASS;
- WSL2 real-client main-menu + in-world acceptance: PASS;
- visual review: no missing texture/rendering anomaly;
- user explicitly confirmed **M32通过** on 2026-08-12.

One first WSL2 headless attempt stalled due to stale previous-version process interference. Cleanup + unchanged rerun passed; retained as a non-blocking environment observation.

## Compatibility contract

- Minecraft Java Edition 1.21.1 / NeoForge 21.1.244 / Java 21;
- `SkyWorldData`: **v11**;
- payload protocol: **1**;
- Basic Airship real container: **91**;
- module slots A/B/C/D: **28 / 29 / 36 / 46**;
- dedicated logistics slot: **90**;
- `supply_manifest`: unchanged;
- existing Auto Worker / Mineral Cultivation / Hostile Mob Inducer ordinals remain frozen;
- accepted M26 Deep Crystal, M28 Mist Marsh, M29 Otherworld, M30 Crimson/Warped/Ember and M31 Blockade derivation order remains stable;
- already-generated terrain/player builds are never regenerated or overwritten.

## Accepted source/JAR identity

- M32 final accepted full-project SHA-256: `edc4e8a574f5845cd073fb96d2d19b5aa3ce04d2d6e989dc1e329370772ce59b`;
- M31 final → M32 final incremental SHA-256: `4a6c9dd61990da5d268f131aa82afb96f9763b35c93680dad48f3f794b41be04`;
- M32 candidate → final status patch SHA-256: `7f6501a3d7ec0aa87b22f0423f1090de432c1f276416e67c2c0f0ae0dc6b3769`;
- retained reference accepted JAR SHA-256: `120b9ab4d1138f997883e1c7cbdb326aab46cb88a8f03a4a254b2c586bd8ef3f`;
- user-local Windows accepted build JAR SHA-256: `a5f88bbfaf498820764e50f0088deb9d2b9f42a4ed5a22c9d8945c6183253760`.

The accepted source archive, not cross-platform JAR byte identity, is authoritative.

## Retained non-blocking observations

- M19 open second supply-menu live-refresh observation remains; server state authoritative, no accepted duplication/loss.
- M26 Deep Crystal visual-polish suggestion remains deferred and new-chunks-only if ever implemented.
- M29 early headless `DisplayWindow/FMLConfig` race passed unchanged on rerun.
- M31/M32 stale-process headless interference passed unchanged after process cleanup.
- M31 already-generated STANDARD challenge terrain is never rewritten if later presented as Blockade.

## Next phase

**M33 planning — Dangerous Outer Ring.**

M33 implementation must branch from M32 final accepted only after its exact scope and migration boundary are frozen. M34+ End fragments, Shulker content, ancient debris/Wither and large expedition ships remain locked behind their own later milestones.
