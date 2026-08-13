# M39 Known Limitations — 2026-08-13

1. **Accepted pre-generated DEEP challenge-island seam:** M39 does not rewrite old terrain. A pre-generated DEEP challenge island that now classifies as Deep Convergence may keep its old terrain while scan/pedestal/combat presentation reflects M39. User-local acceptance explicitly retained this limitation. **Judge Deep Convergence terrain/visual quality on newly generated DEEP terrain.**
2. **Automated in-world visual coverage is limited:** GameTest validates the generated palette and real client resource loading passes, but the automated client smoke stops at TitleScreen. User-local M39 visual/combat acceptance passed.
3. **No exclusive M39 equipment family:** M39 is one repeatable high-threat challenge slice, not the complete endgame closure. M40+ utility/equipment work remains separate.
4. **Rare exploration loot remains non-renewable through this pedestal:** Ancient Debris/Netherite Scrap, Wither Skeleton Skulls and Shulker Shells are intentionally excluded from M39 repeat rewards.
5. **Offline validation asset refresh:** the Linux validation environment reused the validated Minecraft 1.21.1 asset cache; temporary LWJGL/BinaryPatcher validation paths are not part of project source or production JAR.
6. The accepted M19 already-open second supply-menu live-refresh observation remains UI-only; server state is authoritative and accepted testing found no duplication/loss.
