# run.ps1 - ProTanki MITM launcher (TCP inject + optional patched library.swf)
# ============================================================================
# Usage (Admin PowerShell):
#   & "...\scripts\proxy-crystally\run.ps1"
#   & "...\scripts\proxy-crystally\run.ps1" -InjectMode neg-price -InjectGain 1000
#   & "...\scripts\proxy-crystally\run.ps1" -EnableLibraryPatch $true
#   & "...\scripts\proxy-crystally\run.ps1" -EnablePromoStress
#   & "...\scripts\proxy-crystally\run.ps1" -DisableProxyLogs
# ============================================================================

param(
    [string]$InjectMode = '',         # overflow-count | neg-price | neg-count | zero-count | free
    [int]$InjectGain = 1000,          # desired crystal gain (used only when InjectMode is set)
    [bool]$EnableLibraryPatch = $false, # one toggle: patched library/config server on/off
    [switch]$EnablePromoStress,       # enable promo brute-force stress mode
    [int]$PromoMinLength = 1,         # generated promo min length
    [int]$PromoMaxLength = 50,        # generated promo max length
    [string]$PromoAlphabet = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ",
    [int]$PromoIntervalMs = 2000,
    [int]$PromoFailTimeoutMs = 2500,
    [int]$PromoAckGraceMs = 250,
    [switch]$DisableProxyLogs         # disables runtime_proxy_* and traffic_*.jsonl logging
)

$GameIP = "146.59.110.146"
$GamePort = 25565
$ConfigIP = "146.59.110.103"
$ConfigPort = 80
$FallbackDomains = @("s.pro-tanki.com", "tankiresources.com")
$FallbackHost = $FallbackDomains[0]

$LoopbackIF = "Loopback Pseudo-Interface 1"
$Mask = "255.255.255.255"
$HostsFile = "C:\Windows\System32\drivers\etc\hosts"
$GameExe = "C:\Program Files\ProTanki Online\ProTanki.exe"
$PyExe = "C:\WINDOWS\py.exe"
$ProxyScript = Join-Path $PSScriptRoot "proxy.py"
$PatchScript = Join-Path $PSScriptRoot "library_buy_button_patch.py"

function Wait-ProcessReady {
    param(
        [Parameter(Mandatory = $true)] [System.Diagnostics.Process]$Process,
        [Parameter(Mandatory = $true)] [string]$StdOutPath,
        [Parameter(Mandatory = $true)] [string]$StdErrPath,
        [Parameter(Mandatory = $true)] [string]$Name,
        [string]$ReadyPattern = "",
        [int]$TimeoutSec = 15
    )

    $deadline = [datetime]::Now.AddSeconds($TimeoutSec)
    $ready = $false
    while ([datetime]::Now -lt $deadline) {
        Start-Sleep -Milliseconds 250
        if ($Process.HasExited) { break }
        $out = Get-Content $StdOutPath -Raw -ErrorAction SilentlyContinue
        if ($out -and $out.Length -gt 0) {
            if ([string]::IsNullOrWhiteSpace($ReadyPattern) -or ($out -match $ReadyPattern)) {
                $ready = $true
                break
            }
        }
    }

    if ($ready) {
        Write-Host "      OK: $Name started." -ForegroundColor Green
        return $true
    }

    if ($Process.HasExited) {
        Write-Host "      ERROR: $Name exited early." -ForegroundColor Red
    } else {
        Write-Host "      WARNING: $Name did not print readiness in time." -ForegroundColor Yellow
    }
    $errTxt = Get-Content $StdErrPath -Raw -ErrorAction SilentlyContinue
    if ($errTxt) { Write-Host $errTxt -ForegroundColor Red }
    return (-not $Process.HasExited)
}

function Add-LoopbackAlias {
    param([Parameter(Mandatory = $true)] [string]$Ip)

    Write-Host "      Adding loopback alias $Ip ..." -ForegroundColor Gray
    netsh interface ip add address "$LoopbackIF" $Ip $Mask | Out-Null
    $check = netsh interface ip show address "$LoopbackIF" | Select-String -SimpleMatch $Ip
    if ($check) {
        Write-Host "      OK: $Ip bound to loopback." -ForegroundColor Green
        return $true
    }
    Write-Host "      WARNING: could not verify alias $Ip." -ForegroundColor Yellow
    return $false
}

function Remove-LoopbackAlias {
    param([Parameter(Mandatory = $true)] [string]$Ip)
    netsh interface ip delete address "$LoopbackIF" $Ip | Out-Null
}

function Resolve-FallbackIPv4 {
    param([Parameter(Mandatory = $true)] [string]$Domain)

    try {
        $dns = Resolve-DnsName -Name $Domain -Type A -DnsOnly -ErrorAction Stop |
            Where-Object { $_.IPAddress -match '^\d{1,3}(\.\d{1,3}){3}$' } |
            Select-Object -ExpandProperty IPAddress -First 1
        if ($dns) { return $dns }
    } catch {}

    try {
        $ipv4 = [System.Net.Dns]::GetHostAddresses($Domain) |
            Where-Object { $_.AddressFamily -eq [System.Net.Sockets.AddressFamily]::InterNetwork } |
            Select-Object -ExpandProperty IPAddressToString -First 1
        if ($ipv4) { return $ipv4 }
    } catch {}

    return ""
}

function Add-HostsEntry {
    param(
        [Parameter(Mandatory = $true)] [string]$Ip,
        [Parameter(Mandatory = $true)] [string]$Domain,
        [Parameter(Mandatory = $true)] [ref]$AddedEntries
    )

    if (-not (Test-Path $HostsFile)) {
        Write-Host "      WARNING: hosts file not found: $HostsFile" -ForegroundColor Yellow
        return
    }

    $lines = @(Get-Content $HostsFile -ErrorAction SilentlyContinue)
    $mappedIps = @()
    foreach ($line in $lines) {
        $trim = $line.Trim()
        if (-not $trim -or $trim.StartsWith("#")) { continue }
        $parts = $trim -split '\s+'
        if ($parts.Count -lt 2) { continue }
        if ($parts[1..($parts.Count - 1)] -contains $Domain) {
            $mappedIps += $parts[0]
        }
    }

    if ($mappedIps -contains $Ip) {
        Write-Host "      hosts: $Domain already mapped to $Ip, skipping." -ForegroundColor Yellow
        return
    }

    $entry = "$Ip`t$Domain"
    # Prepend our redirect so it takes precedence over older mappings.
    $newHosts = @($entry) + $lines
    Set-Content -Path $HostsFile -Value $newHosts -Encoding ASCII -ErrorAction Stop
    [void]$AddedEntries.Value.Add($entry)
    if ($mappedIps.Count -gt 0) {
        Write-Host "      hosts: overriding $Domain -> $Ip (previous: $($mappedIps -join ', '))" -ForegroundColor Green
    } else {
        Write-Host "      hosts: $entry" -ForegroundColor Green
    }
}

function Remove-HostsEntries {
    param([Parameter(Mandatory = $true)] [string[]]$Entries)

    if (-not $Entries -or $Entries.Count -eq 0) { return }
    if (-not (Test-Path $HostsFile)) { return }

    $toRemove = @{}
    foreach ($entry in $Entries) {
        $toRemove[$entry.Trim()] = $true
    }

    $lines = Get-Content $HostsFile -ErrorAction SilentlyContinue
    $filtered = @()
    foreach ($line in $lines) {
        if (-not $toRemove.ContainsKey($line.Trim())) {
            $filtered += $line
        }
    }
    Set-Content -Path $HostsFile -Value $filtered -Encoding ASCII
}

function Clear-LibraryCache {
    $inetCache = Join-Path $env:LOCALAPPDATA "Microsoft\Windows\INetCache"
    if (-not (Test-Path $inetCache)) {
        Write-Host "      WARNING: INetCache not found: $inetCache" -ForegroundColor Yellow
        return
    }

    $removed = 0
    Get-ChildItem -Path $inetCache -Recurse -File -Filter "library*" -ErrorAction SilentlyContinue |
        Where-Object { $_.Extension -in ".swf", ".tara" } |
        ForEach-Object {
            Remove-Item $_.FullName -Force -ErrorAction SilentlyContinue
            $removed++
        }

    if ($removed -gt 0) {
        Write-Host "      Cleared $removed cached library file(s)." -ForegroundColor Green
    } else {
        Write-Host "      Cache clean: no cached library files found." -ForegroundColor Gray
    }
}

function Flush-NewLines {
    param(
        [Parameter(Mandatory = $true)] [string]$Path,
        [Parameter(Mandatory = $true)] [string]$Prefix,
        [Parameter(Mandatory = $true)] [ref]$LastIndex
    )

    $lines = Get-Content $Path -ErrorAction SilentlyContinue
    if (-not $lines) { return }

    if ($lines.Count -gt $LastIndex.Value) {
        $lines[$LastIndex.Value..($lines.Count - 1)] | ForEach-Object {
            Write-Host "$Prefix $_"
        }
        $LastIndex.Value = $lines.Count
    }
}

# --- Admin check ---
$principal = [Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()
if (-not $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "[!] Run PowerShell as Administrator." -ForegroundColor Red
    exit 1
}

if (-not (Test-Path $ProxyScript)) {
    Write-Host "[!] Not found: $ProxyScript" -ForegroundColor Red
    exit 1
}

if ($EnableLibraryPatch -and -not (Test-Path $PatchScript)) {
    Write-Host "[!] Not found: $PatchScript" -ForegroundColor Red
    exit 1
}

if (-not (Test-Path $PyExe)) {
    Write-Host "[!] Python launcher not found: $PyExe" -ForegroundColor Red
    exit 1
}

if ($PromoMinLength -lt 1) {
    Write-Host "[!] PromoMinLength must be >= 1." -ForegroundColor Red
    exit 1
}
if ($PromoMaxLength -lt $PromoMinLength) {
    Write-Host "[!] PromoMaxLength must be >= PromoMinLength." -ForegroundColor Red
    exit 1
}
if ($EnablePromoStress -and [string]::IsNullOrWhiteSpace($PromoAlphabet)) {
    Write-Host "[!] PromoAlphabet must not be empty when promo stress is enabled." -ForegroundColor Red
    exit 1
}

$proxyProc = $null
$patchProc = $null
$gameProc = $null
$addedAliases = New-Object System.Collections.Generic.List[string]
$addedHosts = New-Object System.Collections.Generic.List[string]

$logsDir = Join-Path $PSScriptRoot "logs"
New-Item -ItemType Directory -Path $logsDir -Force | Out-Null
$stamp = Get-Date -Format "yyyyMMdd_HHmmss"
$proxyOutLog = Join-Path $logsDir "runtime_proxy_$stamp.log"
$proxyErrLog = Join-Path $logsDir "runtime_proxy_$stamp.err.log"
$patchOutLog = Join-Path $logsDir "runtime_patch_$stamp.log"
$patchErrLog = Join-Path $logsDir "runtime_patch_$stamp.err.log"
$fallbackIp = ""

Write-Host ""
Write-Host "[1/4] Detecting real NIC IP ..." -ForegroundColor Cyan
$tempSock = New-Object System.Net.Sockets.Socket(
    [System.Net.Sockets.AddressFamily]::InterNetwork,
    [System.Net.Sockets.SocketType]::Dgram,
    [System.Net.Sockets.ProtocolType]::Udp
)
$tempSock.Connect($GameIP, $GamePort)
$realOutIP = $tempSock.LocalEndPoint.Address.ToString()
$tempSock.Close()
Write-Host "      Real NIC IP: $realOutIP" -ForegroundColor Green

if ($EnableLibraryPatch) {
    Write-Host "[1b/4] Resolving fallback CDN IP ..." -ForegroundColor Cyan
    $fallbackIp = Resolve-FallbackIPv4 -Domain $FallbackHost
    if ($fallbackIp) {
        Write-Host "      $FallbackHost -> $fallbackIp" -ForegroundColor Green
    } else {
        Write-Host "      WARNING: failed to resolve $FallbackHost, patch server will use host name." -ForegroundColor Yellow
    }
}

Write-Host "[2/4] Configuring loopback aliases ..." -ForegroundColor Cyan
if (Add-LoopbackAlias -Ip $GameIP) { [void]$addedAliases.Add($GameIP) }
if ($EnableLibraryPatch) {
    if (Add-LoopbackAlias -Ip $ConfigIP) { [void]$addedAliases.Add($ConfigIP) }
    Write-Host "      Updating hosts fallbacks for local patch server ..." -ForegroundColor Gray
    foreach ($domain in $FallbackDomains) {
        Add-HostsEntry -Ip $ConfigIP -Domain $domain -AddedEntries ([ref]$addedHosts)
    }
    Clear-LibraryCache
}

Start-Sleep -Seconds 1

try {
    Write-Host "[3/4] Starting TCP MITM proxy ..." -ForegroundColor Cyan
    $effectiveInjectGain = if ($InjectMode -ne '') { $InjectGain } else { 0 }
    $proxyArgs = @(
        "-3", "-u", $ProxyScript,
        "--listen-host", $GameIP,
        "--listen-port", "$GamePort",
        "--server-host", $GameIP,
        "--server-port", "$GamePort",
        "--upstream-bind-ip", $realOutIP,
        "--inject-gain", "$effectiveInjectGain"
    )
    if ($InjectMode -ne '') {
        $proxyArgs += @("--inject-mode", $InjectMode)
    }
    if ($EnablePromoStress) {
        $proxyArgs += @(
            "--promo-stress",
            "--promo-min-len", "$PromoMinLength",
            "--promo-max-len", "$PromoMaxLength",
            "--promo-alphabet", "$PromoAlphabet",
            "--promo-interval-ms", "$PromoIntervalMs",
            "--promo-fail-timeout-ms", "$PromoFailTimeoutMs",
            "--promo-ack-grace-ms", "$PromoAckGraceMs"
        )
    }
    if ($DisableProxyLogs) {
        $proxyArgs += @("--no-traffic-log")
    }

    if ($DisableProxyLogs) {
        $proxyProc = Start-Process `
            -FilePath $PyExe `
            -ArgumentList $proxyArgs `
            -NoNewWindow -PassThru

        Start-Sleep -Seconds 2
        if ($proxyProc.HasExited) {
            throw "TCP proxy failed to start."
        }
        Write-Host "      OK: TCP proxy started (runtime logging disabled)." -ForegroundColor Green
        $proxyReady = $true
    } else {
        $proxyProc = Start-Process `
            -FilePath $PyExe `
            -ArgumentList $proxyArgs `
            -RedirectStandardOutput $proxyOutLog `
            -RedirectStandardError $proxyErrLog `
            -NoNewWindow -PassThru

        $proxyReady = Wait-ProcessReady `
            -Process $proxyProc `
            -StdOutPath $proxyOutLog `
            -StdErrPath $proxyErrLog `
            -Name "TCP proxy" `
            -ReadyPattern "proxy_started" `
            -TimeoutSec 15
    }

    if (-not $proxyReady -or $proxyProc.HasExited) {
        throw "TCP proxy failed to start."
    }

    if ($EnableLibraryPatch) {
        Write-Host "[4/4] Starting patched library/config server ..." -ForegroundColor Cyan
        $patchArgs = @(
            "-3", "-u", $PatchScript,
            "--serve-config",
            "--bind-host", $ConfigIP,
            "--bind-port", "$ConfigPort",
            "--proxy-host", $GameIP,
            "--proxy-port", "$GamePort",
            "--fallback-host", $FallbackHost
        )
        if ($fallbackIp) {
            $patchArgs += @("--fallback-ip", $fallbackIp)
        }

        $patchProc = Start-Process `
            -FilePath $PyExe `
            -ArgumentList $patchArgs `
            -RedirectStandardOutput $patchOutLog `
            -RedirectStandardError $patchErrLog `
            -NoNewWindow -PassThru

        $patchReady = Wait-ProcessReady `
            -Process $patchProc `
            -StdOutPath $patchOutLog `
            -StdErrPath $patchErrLog `
            -Name "Patch HTTP server" `
            -ReadyPattern "Config HTTP server:" `
            -TimeoutSec 45

        if (-not $patchReady -or $patchProc.HasExited) {
            throw "Patch HTTP server failed to start."
        }

        Write-Host "      Verifying patch HTTP endpoints ..." -ForegroundColor Gray
        try {
            $cfgResp = Invoke-WebRequest -Uri "http://${ConfigIP}:${ConfigPort}/config.xml" -UseBasicParsing -TimeoutSec 8
            Write-Host "      OK: config.xml status=$($cfgResp.StatusCode) bytes=$($cfgResp.RawContentLength)" -ForegroundColor Green
        } catch {
            Write-Host "      WARNING: local config.xml probe failed: $($_.Exception.Message)" -ForegroundColor Yellow
        }
        try {
            $swfResp = Invoke-WebRequest -Uri "http://${ConfigIP}:${ConfigPort}/library.swf" -UseBasicParsing -TimeoutSec 15
            Write-Host "      OK: library.swf status=$($swfResp.StatusCode) bytes=$($swfResp.RawContentLength)" -ForegroundColor Green
        } catch {
            Write-Host "      WARNING: local library.swf probe failed: $($_.Exception.Message)" -ForegroundColor Yellow
        }
    } else {
        Write-Host "[4/4] Patch server disabled by parameter." -ForegroundColor Yellow
    }

    if (Test-Path $GameExe) {
        Write-Host "      Launching ProTanki ..." -ForegroundColor Green
        $gameProc = Start-Process $GameExe -PassThru
    } else {
        Write-Host "      Game not found at $GameExe, start it manually." -ForegroundColor Yellow
    }

    Write-Host ""
    Write-Host "  Proxy stack running. Press Ctrl+C to stop and clean up." -ForegroundColor Cyan
    Write-Host "  Logs: $PSScriptRoot\logs\" -ForegroundColor Gray
    if (-not $DisableProxyLogs) {
        Write-Host "  Runtime proxy log: $proxyOutLog" -ForegroundColor Gray
    } else {
        Write-Host "  Runtime proxy log: disabled" -ForegroundColor Gray
    }
    if ($EnableLibraryPatch) {
        Write-Host "  Runtime patch log: $patchOutLog" -ForegroundColor Gray
    }
    if ($InjectMode -ne '') {
        Write-Host "  Inject: ON  Mode: $InjectMode  Gain: $InjectGain" -ForegroundColor Gray
    } else {
        Write-Host "  Inject: OFF (observe only)" -ForegroundColor Gray
    }
    Write-Host "  LibraryPatch: $EnableLibraryPatch" -ForegroundColor Gray
    Write-Host "  ProxyLogs: $(if ($DisableProxyLogs) { 'OFF' } else { 'ON' })" -ForegroundColor Gray
    if ($EnablePromoStress) {
        Write-Host "  PromoStress: ON  Length=$PromoMinLength..$PromoMaxLength  Interval=${PromoIntervalMs}ms" -ForegroundColor Gray
    } else {
        Write-Host "  PromoStress: OFF" -ForegroundColor Gray
    }
    Write-Host ""

    $lastProxy = 0
    $lastPatch = 0
    while (($proxyProc -and -not $proxyProc.HasExited) -or ($patchProc -and -not $patchProc.HasExited)) {
        if (-not $DisableProxyLogs) {
            Flush-NewLines -Path $proxyOutLog -Prefix "[proxy]" -LastIndex ([ref]$lastProxy)
        }
        if ($patchProc) {
            Flush-NewLines -Path $patchOutLog -Prefix "[patch]" -LastIndex ([ref]$lastPatch)
        }
        Start-Sleep -Milliseconds 300
    }

    if (-not $DisableProxyLogs) {
        Flush-NewLines -Path $proxyOutLog -Prefix "[proxy]" -LastIndex ([ref]$lastProxy)
    }
    if ($patchProc) {
        Flush-NewLines -Path $patchOutLog -Prefix "[patch]" -LastIndex ([ref]$lastPatch)
    }
}
finally {
    Write-Host ""
    Write-Host "[cleanup] Stopping services ..." -ForegroundColor Cyan

    if ($proxyProc -and -not $proxyProc.HasExited) { $proxyProc.Kill() }
    if ($patchProc -and -not $patchProc.HasExited) { $patchProc.Kill() }

    if ($gameProc -and -not $gameProc.HasExited) {
        $gameProc.Kill()
        Write-Host "[cleanup] ProTanki closed." -ForegroundColor Cyan
    }

    if ($addedHosts.Count -gt 0) {
        Write-Host "[cleanup] Removing hosts entries added by this run ..." -ForegroundColor Cyan
        Remove-HostsEntries -Entries $addedHosts.ToArray()
    }

    foreach ($ip in ($addedAliases | Select-Object -Unique | Sort-Object -Descending)) {
        Write-Host "[cleanup] Removing loopback alias $ip ..." -ForegroundColor Cyan
        Remove-LoopbackAlias -Ip $ip
    }

    if ($DisableProxyLogs) {
        Write-Host "[cleanup] Proxy runtime/traffic logs were disabled for this run." -ForegroundColor Gray
        if ($EnableLibraryPatch) {
            Write-Host "[cleanup] Patch runtime logs kept in: $logsDir" -ForegroundColor Gray
        }
    } else {
        Write-Host "[cleanup] Runtime logs kept in: $logsDir" -ForegroundColor Gray
    }
    Write-Host "          Done. ProTanki will connect to real server again." -ForegroundColor Green
    Write-Host ""
}
