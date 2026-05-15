param(
    [string]$ServerHost = "146.59.110.146",
    [int]$ServerPort = 25565,
    [string]$TrafficOutputDir = "C:\Users\Oleh\Documents\ProTanki-security\artifacts\traffic",
    [string]$ReportsOutputDir = "C:\Users\Oleh\Documents\ProTanki-security\artifacts\reports",
    [string]$MarkersJson = "",
    [string]$TestName = "bonus_compromise_session",
    [int]$DedupWindowMs = 8,
    [switch]$InteractiveMarkers
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

function Start-PktMonCaptureSafe {
    param(
        [string]$EtlPath
    )

    & pktmon start --capture --pkt-size 0 --file-name $EtlPath
    if ($LASTEXITCODE -eq 0) {
        return
    }

    # 5023 means packet monitor session is already running.
    if ($LASTEXITCODE -eq 5023) {
        Write-Host "[i] PktMon is already running. Stopping stale session and retrying..."
        & pktmon stop | Out-Null
        & pktmon start --capture --pkt-size 0 --file-name $EtlPath
        if ($LASTEXITCODE -eq 0) {
            return
        }
    }

    throw "Command failed ($LASTEXITCODE): pktmon start --capture --pkt-size 0 --file-name $EtlPath"
}

function Test-IsAdministrator {
    $current = [Security.Principal.WindowsIdentity]::GetCurrent()
    $principal = New-Object Security.Principal.WindowsPrincipal($current)
    return $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
}

function Find-LatestWatchCsv {
    param(
        [string]$Dir,
        [string]$ServerHost,
        [int]$Port,
        [datetime]$NotBefore
    )

    $prefix = "protanki_watch_$($ServerHost -replace '\.', '_')_$Port"
    $candidates = Get-ChildItem -Path $Dir -File -Filter "$prefix*.csv" | Where-Object { $_.LastWriteTime -ge $NotBefore } | Sort-Object LastWriteTime -Descending
    if ($candidates -and $candidates.Count -gt 0) {
        return $candidates[0].FullName
    }

    # Fallback: any latest watcher CSV for target host/port.
    $fallback = Get-ChildItem -Path $Dir -File -Filter "$prefix*.csv" | Sort-Object LastWriteTime -Descending | Select-Object -First 1
    if ($fallback) {
        return $fallback.FullName
    }

    return $null
}

function New-UtcIsoNow {
    return [DateTimeOffset]::UtcNow.ToString("o")
}

function ConvertTo-Array {
    param([object]$InputObject)

    if ($null -eq $InputObject) {
        return @()
    }
    if ($InputObject -is [System.Array]) {
        return $InputObject
    }
    return @($InputObject)
}

function Save-MarkersFile {
    param(
        [string]$Path,
        [object[]]$Markers
    )

    $json = $Markers | ConvertTo-Json -Depth 8
    Set-Content -Path $Path -Value $json -Encoding UTF8
}

function Merge-MarkersFiles {
    param(
        [string]$BasePath,
        [string]$ExtraPath,
        [string]$OutputPath
    )

    $baseData = @()
    if ($BasePath -and (Test-Path $BasePath)) {
        $raw = Get-Content -Path $BasePath -Raw -Encoding UTF8 | ConvertFrom-Json
        $baseData = ConvertTo-Array -InputObject $raw
    }

    $extraData = @()
    if ($ExtraPath -and (Test-Path $ExtraPath)) {
        $raw = Get-Content -Path $ExtraPath -Raw -Encoding UTF8 | ConvertFrom-Json
        $extraData = ConvertTo-Array -InputObject $raw
    }

    $merged = @()
    $merged += $baseData
    $merged += $extraData
    Save-MarkersFile -Path $OutputPath -Markers $merged
    return $OutputPath
}

function Collect-InteractiveMarkers {
    param(
        [string]$OutputPath
    )

    $active = @{}
    $done = New-Object System.Collections.Generic.List[object]

    Write-Host "[+] Interactive marker mode enabled"
    Write-Host "[+] Commands:"
    Write-Host "    start <name> <accept|reject> [notes]"
    Write-Host "    end <name>"
    Write-Host "    list"
    Write-Host "    stop"
    Write-Host ""

    while ($true) {
        $line = Read-Host "[marker]"
        if ([string]::IsNullOrWhiteSpace($line)) {
            continue
        }

        if ($line -match '^\s*stop\s*$') {
            break
        }
        if ($line -match '^\s*help\s*$') {
            Write-Host "[i] start <name> <accept|reject> [notes], end <name>, list, stop"
            continue
        }
        if ($line -match '^\s*list\s*$') {
            if ($active.Count -eq 0) {
                Write-Host "[i] no active markers"
            } else {
                Write-Host "[i] active markers:"
                foreach ($k in $active.Keys) {
                    $m = $active[$k]
                    Write-Host "    $($m.name) expected=$($m.expected) start=$($m.start)"
                }
            }
            continue
        }

        if ($line -match '^\s*start\s+(\S+)\s+(accept|reject)(?:\s+(.+))?\s*$') {
            $name = $matches[1]
            $expected = $matches[2]
            $notes = ""
            if ($matches.Count -ge 4 -and $matches[3]) {
                $notes = $matches[3]
            }

            if ($active.ContainsKey($name)) {
                Write-Host "[!] marker already active: $name"
                continue
            }

            $active[$name] = [ordered]@{
                name = $name
                expected = $expected
                start = New-UtcIsoNow
                notes = $notes
            }
            Write-Host "[+] started marker: $name"
            continue
        }

        if ($line -match '^\s*end\s+(\S+)\s*$') {
            $name = $matches[1]
            if (-not $active.ContainsKey($name)) {
                Write-Host "[!] active marker not found: $name"
                continue
            }

            $m = $active[$name]
            $active.Remove($name)
            $done.Add([ordered]@{
                name = $m.name
                expected = $m.expected
                start = $m.start
                end = New-UtcIsoNow
                notes = $m.notes
            }) | Out-Null
            Write-Host "[+] ended marker: $name"
            continue
        }

        Write-Host "[!] unknown command. use: start/end/list/stop"
    }

    if ($active.Count -gt 0) {
        Write-Host "[i] auto-closing active markers at stop time"
        foreach ($k in $active.Keys) {
            $m = $active[$k]
            $done.Add([ordered]@{
                name = $m.name
                expected = $m.expected
                start = $m.start
                end = New-UtcIsoNow
                notes = "$($m.notes) [auto-closed]"
            }) | Out-Null
        }
    }

    $result = @($done)
    Save-MarkersFile -Path $OutputPath -Markers $result
    Write-Host "[+] Interactive markers saved: $OutputPath"
    return $OutputPath
}

$projectRoot = Split-Path -Parent $PSScriptRoot
$watcherScript = Join-Path $PSScriptRoot "protanki_packet_watch.py"
$runnerScript = Join-Path $PSScriptRoot "bonus_compromise_test_runner.py"

if (-not (Test-Path $watcherScript)) {
    throw "Watcher script not found: $watcherScript"
}
if (-not (Test-Path $runnerScript)) {
    throw "Runner script not found: $runnerScript"
}
if ($MarkersJson -and -not (Test-Path $MarkersJson)) {
    throw "Markers JSON not found: $MarkersJson"
}

if (-not (Test-Path $TrafficOutputDir)) {
    New-Item -ItemType Directory -Path $TrafficOutputDir | Out-Null
}
if (-not (Test-Path $ReportsOutputDir)) {
    New-Item -ItemType Directory -Path $ReportsOutputDir | Out-Null
}

if (-not (Test-IsAdministrator)) {
    throw "Run this script in elevated PowerShell (Run as Administrator)."
}

$stamp = Get-Date -Format "yyyyMMdd_HHmmss"
$etlPath = Join-Path $TrafficOutputDir "pktmon_$($ServerHost -replace '\.', '_')_$ServerPort`_$stamp.etl"
$pcapPath = Join-Path $TrafficOutputDir "pktmon_$($ServerHost -replace '\.', '_')_$ServerPort`_$stamp.pcapng"

Write-Host "[+] One-shot validation session"
Write-Host "[+] Target: $ServerHost`:$ServerPort"
Write-Host "[+] ETL path:  $etlPath"
Write-Host "[+] PCAP path: $pcapPath"
Write-Host "[+] Test name: $TestName"
if ($MarkersJson) {
    Write-Host "[+] Markers:   $MarkersJson"
} else {
    Write-Host "[i] Markers:   not provided (report without marker PASS/FAIL)"
}
if ($InteractiveMarkers) {
    Write-Host "[+] Interactive markers: enabled"
}

Write-Host "[+] Resetting old PktMon filters..."
Invoke-CheckedCommand -Exe "pktmon" -CommandArgs @("filter", "remove")

Write-Host "[+] Adding target filter..."
Invoke-CheckedCommand -Exe "pktmon" -CommandArgs @("filter", "add", "ProTanki", "-i", $ServerHost, "-p", "$ServerPort", "-t", "TCP")

Write-Host "[+] Starting capture. Play now."
Start-PktMonCaptureSafe -EtlPath $etlPath

$interactiveMarkersPath = ""
if ($InteractiveMarkers) {
    $interactiveMarkersPath = Join-Path $TrafficOutputDir "markers_$TestName`_$stamp.json"
    Collect-InteractiveMarkers -OutputPath $interactiveMarkersPath | Out-Null
} else {
    Read-Host "[?] Press Enter when battle/session is finished"
}

Write-Host "[+] Stopping capture..."
Invoke-CheckedCommand -Exe "pktmon" -CommandArgs @("stop")

Write-Host "[+] Converting ETL -> PCAPNG..."
Invoke-CheckedCommand -Exe "pktmon" -CommandArgs @("etl2pcap", $etlPath, "--out", $pcapPath)

if (-not (Test-Path $pcapPath)) {
    throw "PCAPNG was not created: $pcapPath"
}

$parseStart = Get-Date
Write-Host "[+] Parsing protocol packets..."
Invoke-CheckedCommand -Exe "py" -CommandArgs @(
    "-3",
    $watcherScript,
    "--mode", "pcap",
    "--pcap", $pcapPath,
    "--server-host", $ServerHost,
    "--server-port", "$ServerPort",
    "--output-dir", $TrafficOutputDir
)

$csvPath = Find-LatestWatchCsv -Dir $TrafficOutputDir -ServerHost $ServerHost -Port $ServerPort -NotBefore $parseStart
if (-not $csvPath) {
    throw "Could not locate watcher CSV after parse step in: $TrafficOutputDir"
}

Write-Host "[+] Running compromise report builder..."
$effectiveMarkersJson = $MarkersJson
if ($InteractiveMarkers -and $interactiveMarkersPath -and (Test-Path $interactiveMarkersPath)) {
    if ($effectiveMarkersJson) {
        $mergedPath = Join-Path $TrafficOutputDir "markers_merged_$TestName`_$stamp.json"
        $effectiveMarkersJson = Merge-MarkersFiles -BasePath $effectiveMarkersJson -ExtraPath $interactiveMarkersPath -OutputPath $mergedPath
        Write-Host "[+] Merged markers file: $effectiveMarkersJson"
    } else {
        $effectiveMarkersJson = $interactiveMarkersPath
    }
}

$runnerArgs = @(
    "-3",
    $runnerScript,
    "--csv", $csvPath,
    "--output-dir", $ReportsOutputDir,
    "--test-name", $TestName,
    "--dedup-window-ms", "$DedupWindowMs"
)
if ($effectiveMarkersJson) {
    $runnerArgs += @("--markers-json", $effectiveMarkersJson)
}
Invoke-CheckedCommand -Exe "py" -CommandArgs $runnerArgs

$latestReport = Get-ChildItem -Path $ReportsOutputDir -File -Filter "$TestName*.md" | Sort-Object LastWriteTime -Descending | Select-Object -First 1
$latestJson = Get-ChildItem -Path $ReportsOutputDir -File -Filter "$TestName*.json" | Sort-Object LastWriteTime -Descending | Select-Object -First 1
$latestDedup = Get-ChildItem -Path $ReportsOutputDir -File -Filter "$TestName*_dedup.csv" | Sort-Object LastWriteTime -Descending | Select-Object -First 1

Write-Host ""
Write-Host "[+] Session complete"
Write-Host "[+] Traffic CSV: $csvPath"
if ($latestReport) { Write-Host "[+] Report MD:   $($latestReport.FullName)" }
if ($latestJson) { Write-Host "[+] Report JSON: $($latestJson.FullName)" }
if ($latestDedup) { Write-Host "[+] Dedup CSV:   $($latestDedup.FullName)" }
if ($effectiveMarkersJson) { Write-Host "[+] Markers used: $effectiveMarkersJson" }
