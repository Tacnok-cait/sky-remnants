$ErrorActionPreference = 'Stop'

$Root = Split-Path -Parent $MyInvocation.MyCommand.Path
$ManifestPath = Join-Path $Root 'manifest-final.json'
$Manifest = Get-Content -Raw -LiteralPath $ManifestPath | ConvertFrom-Json
$MergedBase64 = Join-Path $Root 'm26-update.reconstructed.b64'
$OutputZip = Join-Path $Root $Manifest.archive_name

Remove-Item -Force -ErrorAction SilentlyContinue $MergedBase64, $OutputZip

foreach ($PartName in $Manifest.part_order) {
    $PartPath = Join-Path $Root $PartName
    if (-not (Test-Path -LiteralPath $PartPath)) {
        throw "Missing archive part: $PartName"
    }

    $ExpectedPartHash = $Manifest.part_sha256.$PartName
    $ActualPartHash = (Get-FileHash -Algorithm SHA256 -LiteralPath $PartPath).Hash.ToLowerInvariant()
    if ($ActualPartHash -ne $ExpectedPartHash) {
        throw "Part SHA-256 mismatch: $PartName expected=$ExpectedPartHash actual=$ActualPartHash"
    }

    $PartText = (Get-Content -Raw -LiteralPath $PartPath).Trim()
    Add-Content -NoNewline -Encoding ascii -LiteralPath $MergedBase64 -Value $PartText
}

$Bytes = [Convert]::FromBase64String((Get-Content -Raw -LiteralPath $MergedBase64))
[IO.File]::WriteAllBytes($OutputZip, $Bytes)

$ActualSize = (Get-Item -LiteralPath $OutputZip).Length
if ($ActualSize -ne [int64]$Manifest.archive_size_bytes) {
    throw "Archive size mismatch: expected=$($Manifest.archive_size_bytes) actual=$ActualSize"
}

$ActualHash = (Get-FileHash -Algorithm SHA256 -LiteralPath $OutputZip).Hash.ToLowerInvariant()
if ($ActualHash -ne $Manifest.archive_sha256) {
    throw "Archive SHA-256 mismatch: expected=$($Manifest.archive_sha256) actual=$ActualHash"
}

Write-Host "M26 update archive reconstructed successfully."
Write-Host "Path: $OutputZip"
Write-Host "Size: $ActualSize bytes"
Write-Host "SHA-256: $ActualHash"
