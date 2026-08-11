$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$output = Join-Path $root 'skyremnants-m25-final-accepted-update-from-m24-final-20260811.zip'
$expected = '606f8caab22033a9df864f400f8351626369de1aa6e74ffc50bdecf7065a5aca'

$base64 = (Get-ChildItem $root -Filter 'm25-update.part-*.b64' |
    Sort-Object Name |
    ForEach-Object { (Get-Content $_.FullName -Raw).Trim() }) -join ''

[IO.File]::WriteAllBytes($output, [Convert]::FromBase64String($base64))
$actual = (Get-FileHash $output -Algorithm SHA256).Hash.ToLowerInvariant()

Write-Host "Output: $output"
Write-Host "SHA-256: $actual"

if ($actual -ne $expected) {
    throw "M25 update archive SHA-256 mismatch. Expected $expected"
}

Write-Host 'M25 update archive integrity: PASS'
