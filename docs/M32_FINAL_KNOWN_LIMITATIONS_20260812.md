# M32 Final Known Limitations — 2026-08-12

1. M32 deliberately excludes dangerous-outer-ring, End, Shulker, ancient-debris/Wither and large-expedition-ship content.
2. M31 terrain/presentation seam remains: already-generated STANDARD challenge terrain is not rewritten if deterministic M31 presentation later treats it as Blockade.
3. M26 Deep Crystal visual-polish suggestion remains deferred and must be new-chunks-only if implemented.
4. Historical M19 second-open-supply-menu live refresh remains unchanged; server state stays authoritative and prior acceptance found no duplication/loss.
5. Blaze remains expedition/challenge value and is intentionally not available through ordinary reusable Mob Sample + Hostile Mob Inducer automation in the accepted 6–15h baseline.
6. Budding Amethyst remains immovable; automated amethyst production depends on preserving real budding nodes and harvesting mature clusters.
7. Headless orchestration can be disturbed by stale previous-version Java/Gradle processes. M31 and M32 both passed unchanged after cleanup; this is a test-environment lifecycle issue rather than a gameplay defect.
8. Independently built Windows/Linux JAR archives may have different byte-level SHA values. The accepted source archive is authoritative.
