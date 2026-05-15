param(
    [ValidateSet("Win32", "x64")]
    [string]$Platform = "Win32",

    [string]$PatchedSwfName = "library_noclip.swf",

    [string]$XrayDefaultOn = "0",

    [string]$SkipPrepareSwf = "0"
)

$ErrorActionPreference = "Stop"

function ConvertTo-BuildFlag {
    param(
        [string]$Value,
        [bool]$DefaultValue
    )

    if ([string]::IsNullOrWhiteSpace($Value)) {
        return $DefaultValue
    }

    switch ($Value.Trim().ToLowerInvariant()) {
        "1" { return $true }
        "true" { return $true }
        "yes" { return $true }
        "on" { return $true }
        "0" { return $false }
        "false" { return $false }
        "no" { return $false }
        "off" { return $false }
        default {
            throw "Invalid boolean flag value: '$Value'. Use 1/0, true/false, yes/no, or on/off."
        }
    }
}

function Resolve-VSInstallationPath {
    $vswhere = Join-Path ${env:ProgramFiles(x86)} 'Microsoft Visual Studio\Installer\vswhere.exe'
    if (-not (Test-Path $vswhere)) {
        return $null
    }

    $path = & $vswhere -latest -products * -property installationPath 2>$null
    if ($LASTEXITCODE -ne 0) {
        return $null
    }

    $path = ($path | Select-Object -First 1).Trim()
    if ([string]::IsNullOrWhiteSpace($path)) {
        return $null
    }
    return $path
}

function Resolve-CMake {
    $cmd = Get-Command cmake -ErrorAction SilentlyContinue
    if ($cmd) {
        return $cmd.Source
    }

    $candidates = @()
    $vsPath = Resolve-VSInstallationPath
    if ($vsPath) {
        $candidates += @(
            (Join-Path $vsPath "Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe"),
            (Join-Path $vsPath "Common7\IDE\CommonExtensions\Microsoft\CMake\Ninja\cmake.exe")
        )
    }
    $candidates += "C:\Program Files\CMake\bin\cmake.exe"

    foreach ($candidate in $candidates) {
        if (Test-Path $candidate) {
            return $candidate
        }
    }

    return $null
}

function Test-NativeToolchainInstalled {
    $vsPath = Resolve-VSInstallationPath
    if (-not $vsPath) {
        return $false
    }

    $props = Get-ChildItem -Path $vsPath -Recurse -Filter Microsoft.Cpp.Default.props -ErrorAction SilentlyContinue | Select-Object -First 1
    $compiler = Get-ChildItem -Path (Join-Path $vsPath "VC") -Recurse -Filter cl.exe -ErrorAction SilentlyContinue | Select-Object -First 1
    return ($null -ne $props) -and ($null -ne $compiler)
}

function Assert-BuildPrerequisites {
    $cmakeExe = Resolve-CMake
    $hasToolchain = Test-NativeToolchainInstalled

    if ($cmakeExe -and $hasToolchain) {
        return $cmakeExe
    }

    $message = @(
        "C++ build prerequisites are missing.",
        "",
        "What is missing on this machine:"
    )

    if (-not $cmakeExe) {
        $message += "- CMake was not found."
    }
    if (-not $hasToolchain) {
        $message += "- Visual Studio C++ toolchain was not found (no cl.exe / Microsoft.Cpp props)."
    }

    $message += ""
    $message += "Fix:"
    $message += "1. Open Visual Studio Installer."
    $message += "2. Click Modify for your Visual Studio installation."
    $message += "3. Install workload: Desktop development with C++."
    $message += "4. Make sure these components are included:"
    $message += "   - MSVC x86/x64 build tools"
    $message += "   - Windows SDK"
    $message += "   - C++ CMake tools for Windows"
    $message += "5. Rerun this script."

    throw ($message -join [Environment]::NewLine)
}

$projectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Split-Path -Parent $projectRoot
$prepareScript = Join-Path $repoRoot "python\prepare_release_assets.py"
$patchedSwfInput = if ($null -eq $PatchedSwfName) { "" } else { $PatchedSwfName.Trim() }
$patchedSwfName = [System.IO.Path]::GetFileName($patchedSwfInput)
$xrayDefaultEnabled = ConvertTo-BuildFlag -Value $XrayDefaultOn -DefaultValue $false
$skipPrepare = ConvertTo-BuildFlag -Value $SkipPrepareSwf -DefaultValue $false
if ([string]::IsNullOrWhiteSpace($patchedSwfName)) {
    $patchedSwfName = "library_noclip.swf"
}
$sourceSwf = Join-Path $repoRoot "python\artifacts\swf\patched\$patchedSwfName"
$generatedDir = Join-Path $projectRoot "generated"
$embeddedSwf = Join-Path $generatedDir "library_noclip.swf"
$buildDir = Join-Path $projectRoot "build\$Platform"
$distDir = Join-Path $projectRoot "dist\$Platform"
$cmakeExe = Assert-BuildPrerequisites

if (-not (Test-Path $prepareScript)) {
    throw "Missing prepare script: $prepareScript"
}

if (-not $skipPrepare) {
    Write-Host "[1/4] Preparing patched SWF via Python..."
    $previousPatchedSwfName = $env:PTP_PATCHED_SWF_NAME
    $previousXrayDefault = $env:PTP_XRAY_DEFAULT_ON
    try {
        $env:PTP_PATCHED_SWF_NAME = $patchedSwfName
        $env:PTP_XRAY_DEFAULT_ON = if ($xrayDefaultEnabled) { "1" } else { "0" }
        & py -3 $prepareScript
        if ($LASTEXITCODE -ne 0) {
            throw "prepare_release_assets.py failed with exit code $LASTEXITCODE"
        }
    }
    finally {
        if ($null -eq $previousPatchedSwfName) {
            Remove-Item Env:PTP_PATCHED_SWF_NAME -ErrorAction SilentlyContinue
        }
        else {
            $env:PTP_PATCHED_SWF_NAME = $previousPatchedSwfName
        }

        if ($null -eq $previousXrayDefault) {
            Remove-Item Env:PTP_XRAY_DEFAULT_ON -ErrorAction SilentlyContinue
        }
        else {
            $env:PTP_XRAY_DEFAULT_ON = $previousXrayDefault
        }
    }
}
else {
    Write-Host "[1/4] Skipping SWF prepare step (using existing patched artifact)..."
}

if (-not (Test-Path $sourceSwf)) {
    throw "Prepared SWF not found: $sourceSwf"
}

New-Item -ItemType Directory -Force -Path $generatedDir, $buildDir, $distDir | Out-Null
Copy-Item -LiteralPath $sourceSwf -Destination $embeddedSwf -Force

Write-Host "[2/4] Configuring C++ client..."
& $cmakeExe -S $projectRoot -B $buildDir -A $Platform
if ($LASTEXITCODE -ne 0) {
    throw "CMake configure failed with exit code $LASTEXITCODE"
}

Write-Host "[3/4] Building release launcher..."
& $cmakeExe --build $buildDir --config Release
if ($LASTEXITCODE -ne 0) {
    throw "CMake build failed with exit code $LASTEXITCODE"
}

$builtExe = Join-Path $buildDir "Release\ProTankiProxyClient.exe"
if (-not (Test-Path $builtExe)) {
    throw "Built executable not found: $builtExe"
}

Copy-Item -LiteralPath $builtExe -Destination (Join-Path $distDir "ProTankiProxyClient.exe") -Force

Write-Host "[4/4] Done."
Write-Host "EXE: $(Join-Path $distDir 'ProTankiProxyClient.exe')"
