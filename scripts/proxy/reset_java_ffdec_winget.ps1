[CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = "High")]
param(
    [switch]$SkipWinget,
    [switch]$Force
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Write-Info([string]$Message) {
    Write-Host "[*] $Message" -ForegroundColor Cyan
}

function Write-Ok([string]$Message) {
    Write-Host "[+] $Message" -ForegroundColor Green
}

function Write-WarnLine([string]$Message) {
    Write-Host "[!] $Message" -ForegroundColor Yellow
}

function Get-PropValue([object]$Object, [string[]]$Names) {
    if ($null -eq $Object) {
        return $null
    }
    foreach ($name in $Names) {
        $prop = $Object.PSObject.Properties[$name]
        if ($null -ne $prop) {
            return $prop.Value
        }
    }
    return $null
}

function Test-IsAdmin {
    $id = [Security.Principal.WindowsIdentity]::GetCurrent()
    $principal = New-Object Security.Principal.WindowsPrincipal($id)
    return $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
}

function Split-ExeAndArgs([string]$CommandLine) {
    $line = ""
    if ($null -ne $CommandLine) {
        $line = $CommandLine.Trim()
    }
    if (-not $line) {
        return $null
    }
    if ($line.StartsWith('"')) {
        $m = [regex]::Match($line, '^"([^"]+)"\s*(.*)$')
        if ($m.Success) {
            return @{
                Exe  = $m.Groups[1].Value
                Args = $m.Groups[2].Value
            }
        }
    }
    $parts = $line.Split(" ", 2)
    return @{
        Exe  = $parts[0]
        Args = if ($parts.Count -gt 1) { $parts[1] } else { "" }
    }
}

function Invoke-UninstallCommand([string]$DisplayName, [string]$UninstallString) {
    if (-not $UninstallString) {
        Write-WarnLine "No uninstall command for '$DisplayName'"
        return $false
    }

    $cmd = $UninstallString.Trim()
    Write-Info "Uninstalling: $DisplayName"

    # MSI path: transform to guaranteed silent uninstall.
    $guidMatch = [regex]::Match($cmd, '\{[0-9A-Fa-f\-]{36}\}')
    if ($guidMatch.Success -and ($cmd -match '(?i)msiexec')) {
        $msiArgs = "/x $($guidMatch.Value) /qn /norestart"
        if ($PSCmdlet.ShouldProcess($DisplayName, "msiexec $msiArgs")) {
            Start-Process -FilePath "msiexec.exe" -ArgumentList $msiArgs -Wait -NoNewWindow
        }
        Write-Ok "Uninstall command sent: $DisplayName"
        return $true
    }

    $parsed = Split-ExeAndArgs -CommandLine $cmd
    if (-not $parsed) {
        Write-WarnLine "Cannot parse uninstall command for '$DisplayName'"
        return $false
    }

    $exe = $parsed.Exe
    $args = $parsed.Args
    if (-not ($args -match '(?i)(/quiet|/qn|/s|/silent|/verysilent)')) {
        $args = "$args /quiet /norestart".Trim()
    }

    if ($PSCmdlet.ShouldProcess($DisplayName, "$exe $args")) {
        Start-Process -FilePath $exe -ArgumentList $args -Wait -NoNewWindow
    }
    Write-Ok "Uninstall command sent: $DisplayName"
    return $true
}

function Get-UninstallEntries([regex]$Pattern) {
    $roots = @(
        "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall",
        "HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall",
        "HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall"
    )

    $items = @()
    foreach ($root in $roots) {
        if (-not (Test-Path $root)) {
            continue
        }
        $items += Get-ItemProperty -Path "$root\*" -ErrorAction SilentlyContinue | ForEach-Object {
            $displayName = [string](Get-PropValue -Object $_ -Names @("DisplayName", "Display Name", "Display name"))
            if (-not $displayName) {
                return
            }
            if (-not $Pattern.IsMatch($displayName)) {
                return
            }

            [PSCustomObject]@{
                DisplayName         = $displayName
                UninstallString     = [string](Get-PropValue -Object $_ -Names @("UninstallString"))
                QuietUninstallString = [string](Get-PropValue -Object $_ -Names @("QuietUninstallString"))
                PSPath              = [string](Get-PropValue -Object $_ -Names @("PSPath"))
            }
        }
    }

    return $items |
        Sort-Object DisplayName, PSPath -Unique
}

function Remove-ByRegistryPattern([regex]$Pattern, [string]$Label) {
    $entries = @(Get-UninstallEntries -Pattern $Pattern)
    if ($entries.Count -eq 0) {
        Write-Info "No $Label entries found in uninstall registry"
        return
    }

    Write-Info "Found $($entries.Count) $Label uninstall entry(s)"
    foreach ($entry in $entries) {
        $cmd = if ($entry.QuietUninstallString) { $entry.QuietUninstallString } else { $entry.UninstallString }
        try {
            [void](Invoke-UninstallCommand -DisplayName $entry.DisplayName -UninstallString $cmd)
        } catch {
            Write-WarnLine "Failed to uninstall '$($entry.DisplayName)': $($_.Exception.Message)"
        }
    }
}

function Remove-PathSafe([string]$PathToRemove) {
    if (-not (Test-Path -LiteralPath $PathToRemove)) {
        return
    }
    if ($PSCmdlet.ShouldProcess($PathToRemove, "Remove-Item -Recurse -Force")) {
        Remove-Item -LiteralPath $PathToRemove -Recurse -Force -ErrorAction Stop
    }
    Write-Ok "Removed: $PathToRemove"
}

function Remove-JavaEnvironmentVars {
    $scopes = @("User", "Machine")
    foreach ($scope in $scopes) {
        try {
            if ($PSCmdlet.ShouldProcess("JAVA_HOME ($scope)", "Clear environment variable")) {
                [Environment]::SetEnvironmentVariable("JAVA_HOME", $null, $scope)
            }
            Write-Ok "JAVA_HOME cleared ($scope)"
        } catch {
            Write-WarnLine "Failed to clear JAVA_HOME ($scope): $($_.Exception.Message)"
        }
    }
}

function Remove-WingetStack {
    if ($SkipWinget) {
        Write-Info "SkipWinget is set; winget/App Installer removal skipped"
        return
    }

    Write-WarnLine "Removing winget means removing Microsoft App Installer package"

    try {
        $wingetExe = Get-Command winget -ErrorAction SilentlyContinue
        if ($wingetExe) {
            Write-Info "winget path: $($wingetExe.Source)"
        } else {
            Write-Info "winget.exe not found in PATH (will still try App Installer removal)"
        }
    } catch {
        Write-WarnLine "winget detection failed: $($_.Exception.Message)"
    }

    try {
        $pkgs = Get-AppxPackage -Name "Microsoft.DesktopAppInstaller" -AllUsers -ErrorAction SilentlyContinue
        foreach ($pkg in $pkgs) {
            if ($PSCmdlet.ShouldProcess($pkg.PackageFullName, "Remove-AppxPackage -AllUsers")) {
                Remove-AppxPackage -Package $pkg.PackageFullName -AllUsers -ErrorAction SilentlyContinue
            }
            Write-Ok "Removed App Installer package: $($pkg.PackageFullName)"
        }
    } catch {
        Write-WarnLine "Failed to remove App Installer package(s): $($_.Exception.Message)"
    }

    try {
        $prov = Get-AppxProvisionedPackage -Online | Where-Object {
            ([string](Get-PropValue -Object $_ -Names @("DisplayName", "Display Name", "Display name"))) -eq "Microsoft.DesktopAppInstaller"
        }
        foreach ($entry in $prov) {
            if ($PSCmdlet.ShouldProcess($entry.PackageName, "Remove-AppxProvisionedPackage -Online")) {
                Remove-AppxProvisionedPackage -Online -PackageName $entry.PackageName -ErrorAction SilentlyContinue | Out-Null
            }
            Write-Ok "Removed provisioned App Installer: $($entry.PackageName)"
        }
    } catch {
        Write-WarnLine "Failed to remove provisioned App Installer: $($_.Exception.Message)"
    }

    # PowerShell module installed by our bootstrap path.
    try {
        if (Get-Command Get-InstalledModule -ErrorAction SilentlyContinue) {
            $mods = Get-InstalledModule -Name "Microsoft.WinGet.Client" -AllVersions -ErrorAction SilentlyContinue
            foreach ($m in $mods) {
                if ($PSCmdlet.ShouldProcess($m.Name, "Uninstall-Module")) {
                    Uninstall-Module -Name $m.Name -RequiredVersion $m.Version -Force -ErrorAction SilentlyContinue
                }
                Write-Ok "Removed module: $($m.Name) $($m.Version)"
            }
        }
    } catch {
        Write-WarnLine "Failed to remove Microsoft.WinGet.Client module: $($_.Exception.Message)"
    }
}

if (-not (Test-IsAdmin)) {
    throw "Run this script as Administrator"
}

$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..\..")).Path

Write-Host ""
Write-WarnLine "This will uninstall Java, FFDec, and winget/App Installer components."
Write-Host "    Repo root: $repoRoot"
Write-Host "    SkipWinget: $SkipWinget"
Write-Host ""

if (-not $Force) {
    $answer = Read-Host "Type DELETE to continue"
    if ($answer -ne "DELETE") {
        Write-WarnLine "Cancelled"
        exit 1
    }
}

Write-Info "Step 1/5: uninstall Java entries from registry"
$javaPattern = [regex]::new("(?i)\b(java|jdk|jre|openjdk|temurin|adoptium|zulu)\b")
Remove-ByRegistryPattern -Pattern $javaPattern -Label "Java"

Write-Info "Step 2/5: uninstall FFDec entries from registry"
$ffdecPattern = [regex]::new("(?i)(ffdec|jpexs)")
Remove-ByRegistryPattern -Pattern $ffdecPattern -Label "FFDec"

Write-Info "Step 3/5: remove known Java/FFDec folders"
$knownFolders = @(
    "C:\Program Files\Eclipse Adoptium",
    "C:\Program Files\Java",
    "C:\Program Files\Zulu",
    "C:\Program Files\Microsoft\jdk-21",
    "C:\Program Files\Microsoft\jdk-17",
    "C:\Program Files\Microsoft\jdk-11",
    "C:\Program Files (x86)\FFDec",
    "C:\Program Files\FFDec",
    (Join-Path $repoRoot "ffdec"),
    (Join-Path $repoRoot "dist\ffdec")
)
foreach ($folder in $knownFolders) {
    try {
        Remove-PathSafe -PathToRemove $folder
    } catch {
        Write-WarnLine "Failed to remove folder '$folder': $($_.Exception.Message)"
    }
}

Write-Info "Step 4/5: clear JAVA_HOME"
Remove-JavaEnvironmentVars

Write-Info "Step 5/5: remove winget/App Installer stack"
Remove-WingetStack

Write-Host ""
Write-Ok "Done. Recommended: reboot Windows before test run."
Write-Host "Then run proxy and verify bootstrap path (winget/java/ffdec) from clean state."
Write-Host ""
