# clean_cache.ps1 - ProTanki cache cleaner
# Default mode removes AIR app cache, SharedObjects (session/cookies), and INetCache SWF files.
# Session-only mode removes only SharedObjects/session files.
# Does NOT touch the installation in C:\Program Files\ProTanki Online.
# Run from any PowerShell (admin not required, but helps with INetCache).

param(
    [switch]$KeepSession,  # pass -KeepSession to preserve .sol login/settings files
    [switch]$SessionOnly   # pass -SessionOnly to remove only .sol session files
)

$ErrorActionPreference = "SilentlyContinue"

if ($SessionOnly -and $KeepSession) {
    Write-Host "[!] -SessionOnly and -KeepSession cannot be used together." -ForegroundColor Red
    exit 1
}

function Remove-Dir($path, $label) {
    if (-not (Test-Path $path)) { Write-Host "  skip (not found): $label" -ForegroundColor DarkGray; return }
    $size = (Get-ChildItem $path -Recurse -File | Measure-Object -Property Length -Sum).Sum
    Remove-Item $path -Recurse -Force
    $mb = [math]::Round($size / 1MB, 1)
    Write-Host "  deleted $label  ($mb MB)" -ForegroundColor Green
}

function Remove-Files($pattern, $label) {
    $files = Get-ChildItem $pattern -Recurse -File -ErrorAction SilentlyContinue
    if (-not $files) { Write-Host "  skip (not found): $label" -ForegroundColor DarkGray; return }
    $size = ($files | Measure-Object -Property Length -Sum).Sum
    $files | Remove-Item -Force
    $mb = [math]::Round($size / 1MB, 1)
    $n = $files.Count
    Write-Host "  deleted $n file(s) - $label  ($mb MB)" -ForegroundColor Green
}

# Check if game is running
$running = Get-Process -Name "ProTanki" -ErrorAction SilentlyContinue
if ($running) {
    Write-Host "[!] ProTanki is running. Stop it first, then re-run this script." -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "ProTanki Cache Cleaner" -ForegroundColor Cyan
Write-Host "======================" -ForegroundColor Cyan
Write-Host ""

$airRoot = "$env:APPDATA\StandaloneLoader\Local Store"

# 1. AIR app resource cache (~330 MB, Base64-named dirs)
if ($SessionOnly) {
    Write-Host "  skip (-SessionOnly): AIR resource cache" -ForegroundColor DarkGray
} else {
    Remove-Dir "$airRoot\cache" "AIR resource cache (StandaloneLoader\Local Store\cache)"
}

# 2. SharedObjects - session cookies, login token, settings
if ($KeepSession) {
    Write-Host "  kept (-KeepSession): SharedObjects (.sol files)" -ForegroundColor Yellow
} else {
    Remove-Files "$airRoot\#SharedObjects\StandaloneLoader.swf\*.sol" "SharedObjects / session data (.sol)"
}

# 3. INetCache - Prelauncher.swf, Loader.swf, library.swf, hardware.swf, localized.data*
if ($SessionOnly) {
    Write-Host "  skip (-SessionOnly): INetCache SWF/data files" -ForegroundColor DarkGray
    Write-Host "  skip (-SessionOnly): Patched SWF artifacts" -ForegroundColor DarkGray
} else {
    $inetCache = "$env:LOCALAPPDATA\Microsoft\Windows\INetCache"
    $swfNames = @("Prelauncher*.swf", "Loader*.swf", "library*.swf", "hardware*.swf", "config*.xml", "localized.data*")
    $totalSize = 0
    $totalFiles = 0
    foreach ($pat in $swfNames) {
        $files = Get-ChildItem "$inetCache\IE" -Recurse -Filter $pat -File -ErrorAction SilentlyContinue
        if ($files) {
            $totalSize += ($files | Measure-Object -Property Length -Sum).Sum
            $totalFiles += $files.Count
            $files | Remove-Item -Force
        }
    }
    if ($totalFiles -gt 0) {
        $mb = [math]::Round($totalSize / 1MB, 1)
        Write-Host "  deleted $totalFiles file(s) - INetCache SWF/data files  ($mb MB)" -ForegroundColor Green
    } else {
        Write-Host "  skip (not found): INetCache SWF files" -ForegroundColor DarkGray
    }

    # 4. Patched SWF artifacts (will be rebuilt on next proxy run)
    $patchedDir = Join-Path $PSScriptRoot "..\artifacts\swf\patched"
    $resolved = Resolve-Path $patchedDir -ErrorAction SilentlyContinue
    if ($resolved) {
        Remove-Dir $resolved.Path "Patched SWF artifacts (artifacts\swf\patched)"
    } else {
        Write-Host "  skip (not found): Patched SWF artifacts" -ForegroundColor DarkGray
    }
}

Write-Host ""
Write-Host "Done. ProTanki will re-download resources on next launch." -ForegroundColor Cyan
Write-Host "Tip: to keep session (auto-login), use: .\clean_cache.ps1 -KeepSession" -ForegroundColor DarkGray
Write-Host "Tip: to clear only session/login data, use: .\clean_cache.ps1 -SessionOnly" -ForegroundColor DarkGray
Write-Host ""
