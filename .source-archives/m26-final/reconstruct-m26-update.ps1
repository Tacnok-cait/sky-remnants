$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$manifest = Get-Content (Join-Path $root "manifest.json") -Raw | ConvertFrom-Json
$base64 = New-Object System.Text.StringBuilder
foreach ($partName in $manifest.part_order) {
    [void]$base64.Append((Get-Content (Join-Path $root $partName) -Raw).Trim())
}
$bytes = [Convert]::FromBase64String($base64.ToString())
$out = Join-Path $root $manifest.incremental_zip.filename
[IO.File]::WriteAllBytes($out, $bytes)
$actual = (Get-FileHash $out -Algorithm SHA256).Hash.ToLowerInvariant()
$expected = $manifest.incremental_zip.sha256.ToLowerInvariant()
if ($actual -ne $expected) { throw "SHA-256 mismatch: expected $expected got $actual" }
Write-Host "PASS: $out"
Write-Host "SHA-256: $actual"
