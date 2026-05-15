# setup_mitm.ps1  -  ProTanki MITM all-in-one launcher
# ================================================================
# Usage (Admin PowerShell, from any directory):
#   & "C:\Users\Oleh\Documents\ProTanki-security\scripts\proxy\setup_mitm.ps1"
#
# Optional proxy args (passed through):
#   ... setup_mitm.ps1 --pickup-delay 0
# ================================================================

param()

$ConfigIP   = "146.59.110.103"
$CdnIP      = "194.67.196.216"
$GameIP     = "146.59.110.146"
$LoopbackIF = "Loopback Pseudo-Interface 1"
$Mask       = "255.255.255.255"
$HostsFile  = "C:\Windows\System32\drivers\etc\hosts"
# Domain fallbacks that StandaloneLoader tries if primary IPs fail
$FallbackDomains = @("s.pro-tanki.com", "tankiresources.com")
$PyScript   = Join-Path $PSScriptRoot "crystal_auto_pickup.py"
$OverlayScript = Join-Path $PSScriptRoot "overlay.py"
$GameExe    = "C:\Program Files\ProTanki Online\ProTanki.exe"
$PyExe      = "C:\WINDOWS\py.exe"

# --- admin check ---
$principal = [Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()
if (-not $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "[!] Run PowerShell as Administrator." -ForegroundColor Red
    exit 1
}

if (-not (Test-Path $PyScript)) {
    Write-Host "[!] Not found: $PyScript" -ForegroundColor Red
    exit 1
}

# --- step 1: detect real outgoing IP before touching routing ---
$tempSock = New-Object System.Net.Sockets.Socket(
    [System.Net.Sockets.AddressFamily]::InterNetwork,
    [System.Net.Sockets.SocketType]::Dgram,
    [System.Net.Sockets.ProtocolType]::Udp)
$tempSock.Connect($GameIP, 25565)
$realOutIP = $tempSock.LocalEndPoint.Address.ToString()
$tempSock.Close()
Write-Host ""
Write-Host "[0/2] Real outgoing NIC IP: $realOutIP" -ForegroundColor Gray

# --- step 1b: resolve CDN IP before touching hosts file ---
$CdnDomain = "s.pro-tanki.com"
$CdnForwardIP = ""
try {
    $CdnForwardIP = ([System.Net.Dns]::GetHostAddresses($CdnDomain) |
        Where-Object { $_.AddressFamily -eq "InterNetwork" } |
        Select-Object -First 1).IPAddressToString
    Write-Host "[1b] CDN resolved: $CdnDomain -> $CdnForwardIP" -ForegroundColor Gray
} catch {
    Write-Host "[1b] WARNING: could not resolve $CdnDomain, falling back to 194.67.196.216" -ForegroundColor Yellow
    $CdnForwardIP = ""
}

# --- step 2: add loopback aliases + hosts entries ---
Write-Host "[1/2] Adding loopback aliases and hosts entries ..." -ForegroundColor Cyan
# NOTE: $CdnIP is intentionally NOT added as a loopback alias — the HTTP server
# uses it as the real CDN for pass-through proxying. Adding it to loopback would
# cause an infinite forwarding loop.
netsh interface ip add address "$LoopbackIF" $ConfigIP $Mask | Out-Null
netsh interface ip add address "$LoopbackIF" $GameIP  $Mask | Out-Null
$check1 = netsh interface ip show address "$LoopbackIF" | Select-String $ConfigIP
$check2 = netsh interface ip show address "$LoopbackIF" | Select-String $GameIP
if ($check1 -and $check2) {
    Write-Host "      OK: $ConfigIP and $GameIP assigned to loopback." -ForegroundColor Green
} else {
    Write-Host "      WARNING: could not verify IPs - check manually." -ForegroundColor Yellow
}
# Add domain fallbacks to hosts file (redirect to our HTTP server IP)
foreach ($domain in $FallbackDomains) {
    $entry = "$ConfigIP $domain"
    $existing = Get-Content $HostsFile -ErrorAction SilentlyContinue | Select-String ([regex]::Escape($domain))
    if (-not $existing) {
        "`r`n$entry" | Out-File -FilePath $HostsFile -Append -Encoding ASCII
        Write-Host "      hosts: $entry" -ForegroundColor Green
    } else {
        Write-Host "      hosts: $domain already present, skipping." -ForegroundColor Yellow
    }
}

# Clear WinInet (Adobe AIR) cache entries for library.swf so AIR fetches fresh
$inetCache = "$env:LOCALAPPDATA\Microsoft\Windows\INetCache"
$removed = 0
Get-ChildItem -Path $inetCache -Recurse -Filter "library*" -ErrorAction SilentlyContinue |
    Where-Object { $_.Extension -in ".swf", ".tara" } |
    ForEach-Object { Remove-Item $_.FullName -Force -ErrorAction SilentlyContinue; $removed++ }
if ($removed -gt 0) {
    Write-Host "      Cleared $removed cached library.swf entry(s) from WinInet cache." -ForegroundColor Green
}

# Give Windows a moment to make the new IP bindable
Start-Sleep -Seconds 2

# --- step 3: start proxy in background, then launch game ---
Write-Host ""
Write-Host "[2/2] Starting proxy (Ctrl+C to stop) ..." -ForegroundColor Cyan
Write-Host "      Waiting for proxy to become ready, then ProTanki will launch." -ForegroundColor Yellow
Write-Host ""

# Use a temp file for stdout so we can read it reliably (Start-Job doesn't inherit PATH)
$tmpOut = [System.IO.Path]::GetTempFileName()
$tmpErr = [System.IO.Path]::GetTempFileName()

$pyArgs = [System.Collections.Generic.List[string]]@("-3", "-u", $PyScript, "--upstream-bind-ip", $realOutIP,
    "--fallback-cdn-host", $CdnDomain)
if ($CdnForwardIP) {
    $pyArgs.Add("--fallback-cdn-ip")
    $pyArgs.Add($CdnForwardIP)
}
foreach ($a in $args) { $pyArgs.Add($a) }

$proc = Start-Process `
    -FilePath $PyExe `
    -ArgumentList $pyArgs `
    -RedirectStandardOutput $tmpOut `
    -RedirectStandardError  $tmpErr `
    -NoNewWindow -PassThru

# Poll temp file until proxy signals ready (up to 60 s)
$deadline = [datetime]::Now.AddSeconds(60)
$ready    = $false
while ([datetime]::Now -lt $deadline) {
    Start-Sleep -Milliseconds 300
    $out = Get-Content $tmpOut -Raw -ErrorAction SilentlyContinue
    if ($out -match "Waiting for game connections") {
        $ready = $true
        break
    }
}

if ($ready) {
    Write-Host "      Proxy ready. Launching overlay and ProTanki ..." -ForegroundColor Green
    # Launch overlay (no admin needed, separate window)
    $overlayProc = $null
    if (Test-Path $OverlayScript) {
        $overlayErr = [System.IO.Path]::GetTempFileName()
        $overlayProc = Start-Process $PyExe -ArgumentList @("-3", "-u", $OverlayScript) `
            -RedirectStandardError $overlayErr -WindowStyle Normal -PassThru
        Start-Sleep -Milliseconds 800
        $errTxt = Get-Content $overlayErr -Raw -ErrorAction SilentlyContinue
        if ($errTxt) {
            Write-Host "      [overlay ERROR] $errTxt" -ForegroundColor Red
        }
    }
    $gameProc = Start-Process $GameExe -PassThru
} else {
    Write-Host "      WARNING: proxy did not signal ready in 60 s." -ForegroundColor Yellow
    Write-Host "      Proxy stdout:" -ForegroundColor Yellow
    Get-Content $tmpOut -ErrorAction SilentlyContinue | ForEach-Object { Write-Host "        $_" }
    Write-Host "      Proxy stderr:" -ForegroundColor Yellow
    Get-Content $tmpErr -ErrorAction SilentlyContinue | ForEach-Object { Write-Host "        $_" -ForegroundColor Red }
}

# Stream proxy log to console; block here until Ctrl+C or proxy exits
$lastLine = 0
try {
    while (-not $proc.HasExited) {
        $lines = Get-Content $tmpOut -ErrorAction SilentlyContinue
        if ($lines -and $lines.Count -gt $lastLine) {
            $lines[$lastLine..($lines.Count - 1)] | ForEach-Object { Write-Host $_ }
            $lastLine = $lines.Count
        }
        Start-Sleep -Milliseconds 400
    }
    # Final flush
    $lines = Get-Content $tmpOut -ErrorAction SilentlyContinue
    if ($lines -and $lines.Count -gt $lastLine) {
        $lines[$lastLine..($lines.Count - 1)] | ForEach-Object { Write-Host $_ }
    }
}
finally {
    if (-not $proc.HasExited) { $proc.Kill() }
    if ($overlayProc -and -not $overlayProc.HasExited) {
        $overlayProc.Kill()
        Write-Host "[cleanup] Overlay closed." -ForegroundColor Cyan
    }
    if ($gameProc -and -not $gameProc.HasExited) {
        $gameProc.Kill()
        Write-Host "[cleanup] ProTanki closed." -ForegroundColor Cyan
    }
    Remove-Item $tmpOut, $tmpErr -ErrorAction SilentlyContinue
    Write-Host ""
    Write-Host "[cleanup] Removing loopback aliases and hosts entries ..." -ForegroundColor Cyan
    netsh interface ip delete address "$LoopbackIF" $ConfigIP | Out-Null
    netsh interface ip delete address "$LoopbackIF" $GameIP  | Out-Null
    # Remove hosts entries added by this script
    if (Test-Path $HostsFile) {
        $pattern = ($FallbackDomains | ForEach-Object { [regex]::Escape($_) }) -join "|"
        $cleaned = Get-Content $HostsFile | Where-Object { $_ -notmatch $pattern }
        Set-Content -Path $HostsFile -Value $cleaned
    }
    Write-Host "          Done. ProTanki will connect to the real server again." -ForegroundColor Green
    Write-Host ""
}
