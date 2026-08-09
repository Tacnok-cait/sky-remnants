# M24 First-release RC Acceptance Checklist

Status: **candidate; final user-local Windows acceptance required.**

## Build

```powershell
$env:GRADLE_USER_HOME = "D:\workbuddy\.gradle-user-home-skyremnants"
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\test-m24-rc.ps1
```

Expected: JUnit 74/74, clean build, GameTest 65/65, release-JAR verification PASS, dedicated-server smoke PASS.

## Final Windows-only gates

- load copies of retained accepted historical worlds and verify Island Core/machines/airships/docking/cargo/modules persistence;
- run the official Jade/JEI optional runtime and verify providers/categories with no core hard dependency;
- run one dedicated server with two clients and verify shared airship state, scan/navigation isolation and supply-manifest data safety;
- verify `skyremnants-1.0.0-rc.1.jar`, icon/metadata/LICENSE/notices, zh_cn/en_us presentation, models/textures and logs.

Do not run migration acceptance on the only copy of a historical world. See `M24_KNOWN_LIMITATIONS.md`.
