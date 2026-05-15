param(
    [string]$BaseUrl = 'https://s.pro-tanki.com',
    [string]$OutRoot = '..\\artifacts\\swf\\chain',
    [string]$FfdecJar = 'C:\\Program Files (x86)\\FFDec\\ffdec.jar'
)

$ErrorActionPreference = 'Stop'
$out = Join-Path $PSScriptRoot $OutRoot
$raw = Join-Path $out 'raw'
$decomp = Join-Path $out 'decompiled'
New-Item -ItemType Directory -Force -Path $raw,$decomp | Out-Null

$files = @('Prelauncher.swf','Loader.swf','library.swf','config.xml')
foreach ($f in $files) {
    $url = "$BaseUrl/$f"
    $dst = Join-Path $raw $f
    Invoke-WebRequest -Uri $url -OutFile $dst -TimeoutSec 20
    Write-Output "Downloaded: $dst"
}

if (-not (Test-Path $FfdecJar)) {
    throw "FFDec not found: $FfdecJar"
}

foreach ($swf in @('Prelauncher.swf','Loader.swf','library.swf')) {
    $in = Join-Path $raw $swf
    $outDir = Join-Path $decomp ([IO.Path]::GetFileNameWithoutExtension($swf))
    New-Item -ItemType Directory -Force -Path $outDir | Out-Null
    java -jar $FfdecJar -onerror ignore -timeout 30 -export script $outDir $in
    Write-Output "Decompiled: $swf -> $outDir"
}

Get-FileHash (Join-Path $raw '*.swf') -Algorithm SHA256 |
    Select-Object Path,Hash |
    Format-Table -AutoSize
