# M24 Implementation Notes

M24 is first-release RC closure only. No gameplay systems are added.

- version switches to `1.0.0-rc.1`;
- author/description are centralized in Gradle metadata;
- root `LICENSE` and `THIRD_PARTY_NOTICES.md` are packaged under `META-INF`;
- `CHANGELOG.md` and RC-facing README are added;
- production-JAR verification now checks forbidden development content and required release metadata/assets;
- M24 unit tests validate metadata expansion and Jade/JEI optional dependency boundaries;
- `scripts/test-m24-rc.ps1` is the Windows RC verification entry point;
- legacy multiplayer shell helpers are made self-contained for future automation.

Compatibility: no registry ID, recipe, payload, NBT, SavedData or airship-slot changes; `SkyWorldData` remains version 9 and M24 itself requires no save migration.
