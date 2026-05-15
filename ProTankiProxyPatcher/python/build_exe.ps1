Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$projectRoot = $PSScriptRoot
Push-Location $projectRoot
try {
    py -3 .\prepare_release_assets.py
    py -3 -m PyInstaller .\ProTankiProxy.spec --noconfirm --clean
}
finally {
    Pop-Location
}
