param(
    [string]$ProcessPattern = 'ProTanki|Adobe|Flash|AIR',
    [int]$Samples = 10,
    [int]$IntervalSeconds = 2,
    [string]$OutFile = '..\\artifacts\\traffic\\runtime_connections.csv'
)

$ErrorActionPreference = 'Stop'
$outPath = Join-Path $PSScriptRoot $OutFile
$outDir = Split-Path $outPath -Parent
New-Item -ItemType Directory -Force -Path $outDir | Out-Null

"timestamp,processName,pid,localAddress,localPort,remoteAddress,remotePort,state" | Out-File -FilePath $outPath -Encoding ascii

for ($i = 0; $i -lt $Samples; $i++) {
    $ts = (Get-Date).ToString('s')
    $procs = Get-Process | Where-Object { $_.ProcessName -match $ProcessPattern }

    foreach ($p in $procs) {
        $conns = Get-NetTCPConnection -OwningProcess $p.Id -ErrorAction SilentlyContinue
        foreach ($c in $conns) {
            $line = "$ts,$($p.ProcessName),$($p.Id),$($c.LocalAddress),$($c.LocalPort),$($c.RemoteAddress),$($c.RemotePort),$($c.State)"
            Add-Content -Path $outPath -Value $line -Encoding ascii
        }
    }

    Start-Sleep -Seconds $IntervalSeconds
}

Write-Output "Saved: $outPath"
