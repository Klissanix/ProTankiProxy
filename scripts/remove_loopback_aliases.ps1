# remove_loopback_aliases.ps1 - Remove loopback aliases left by setup_mitm.ps1
# Run as Administrator

$LoopbackIF = "Loopback Pseudo-Interface 1"
$IPs = @("146.59.110.103", "146.59.110.146", "194.67.196.216")
$HostsFile = "C:\Windows\System32\drivers\etc\hosts"
$Domains = @("s.pro-tanki.com", "tankiresources.com")

$principal = [Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()
if (-not $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "[!] Run as Administrator." -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "Removing loopback aliases..." -ForegroundColor Cyan

foreach ($ip in $IPs) {
    netsh interface ip delete address "$LoopbackIF" $ip | Out-Null
    $check = netsh interface ip show address "$LoopbackIF" | Select-String $ip
    if ($check) {
        Write-Host "  FAILED to remove: $ip" -ForegroundColor Red
    } else {
        Write-Host "  Removed: $ip" -ForegroundColor Green
    }
}

Write-Host ""
Write-Host "Cleaning hosts file..." -ForegroundColor Cyan
if (Test-Path $HostsFile) {
    $pattern = ($Domains | ForEach-Object { [regex]::Escape($_) }) -join "|"
    $before = (Get-Content $HostsFile).Count
    $cleaned = Get-Content $HostsFile | Where-Object { $_ -notmatch $pattern }
    Set-Content -Path $HostsFile -Value $cleaned
    $removed = $before - $cleaned.Count
    Write-Host "  Removed $removed line(s) from hosts file." -ForegroundColor Green
}

Write-Host ""
Write-Host "Done." -ForegroundColor Green
Write-Host ""
