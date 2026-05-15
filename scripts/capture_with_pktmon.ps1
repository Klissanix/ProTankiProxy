param(
    [string]$ServerHost = "146.59.110.146",
    [int]$ServerPort = 25565,
    [string]$OutputDir = "C:\Users\Oleh\Documents\ProTanki-security\artifacts\traffic"
)

$ErrorActionPreference = "Stop"

function Invoke-CheckedCommand {
    param(
        [string]$Exe,
        [string[]]$CommandArgs
    )

    & $Exe @CommandArgs
    if ($LASTEXITCODE -ne 0) {
        throw "Command failed ($LASTEXITCODE): $Exe $($CommandArgs -join ' ')"
    }
}

function Test-IsAdministrator {
    $current = [Security.Principal.WindowsIdentity]::GetCurrent()
    $principal = New-Object Security.Principal.WindowsPrincipal($current)
    return $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
}

$parserScript = "C:\Users\Oleh\Documents\ProTanki-security\scripts\protanki_packet_watch.py"

if (-not (Test-Path $OutputDir)) {
    New-Item -ItemType Directory -Path $OutputDir | Out-Null
}

$stamp = Get-Date -Format "yyyyMMdd_HHmmss"
$etlPath = Join-Path $OutputDir "pktmon_$($ServerHost -replace '\\.', '_')_$ServerPort`_$stamp.etl"
$pcapPath = Join-Path $OutputDir "pktmon_$($ServerHost -replace '\\.', '_')_$ServerPort`_$stamp.pcapng"

Write-Host "[+] Using PktMon fallback capture (no Npcap required)."
Write-Host "[+] Target: $ServerHost`:$ServerPort"
Write-Host "[+] ETL:    $etlPath"
Write-Host "[+] PCAP:   $pcapPath"

if (-not (Test-IsAdministrator)) {
    throw "This script must be run in an elevated PowerShell (Run as Administrator)."
}

Write-Host "[+] Resetting previous filters..."
Invoke-CheckedCommand -Exe "pktmon" -CommandArgs @("filter", "remove")

Write-Host "[+] Adding filter by IP+port..."
Invoke-CheckedCommand -Exe "pktmon" -CommandArgs @("filter", "add", "ProTanki", "-i", $ServerHost, "-p", "$ServerPort", "-t", "TCP")

Write-Host "[+] Starting capture. Play on test server now."
Invoke-CheckedCommand -Exe "pktmon" -CommandArgs @("start", "--capture", "--pkt-size", "0", "--file-name", $etlPath)

Read-Host "[?] Press Enter when you want to stop capture"

Write-Host "[+] Stopping capture..."
Invoke-CheckedCommand -Exe "pktmon" -CommandArgs @("stop")

Write-Host "[+] Converting ETL to PCAPNG..."
Invoke-CheckedCommand -Exe "pktmon" -CommandArgs @("etl2pcap", $etlPath, "--out", $pcapPath)

if (-not (Test-Path $pcapPath)) {
    throw "PCAPNG was not created: $pcapPath"
}

Write-Host "[+] Running protocol parser over PCAPNG..."
Invoke-CheckedCommand -Exe "py" -CommandArgs @("-3", $parserScript, "--mode", "pcap", "--pcap", $pcapPath, "--server-host", $ServerHost, "--server-port", "$ServerPort")

Write-Host "[+] Done. Check output files in: $OutputDir"
