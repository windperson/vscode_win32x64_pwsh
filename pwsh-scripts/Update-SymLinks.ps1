$originErrorActionPreference = $ErrorActionPreference 
$ErrorActionPreference = "Stop"

try {
    Set-Location .\VSCode-win32-x64
    if ( Test-Path data) { Remove-Item data -Force }
    New-Item -ItemType SymbolicLink -Path data -Target .\..\vscode_data\
}
catch {
    Set-Location $PSScriptRoot
    Write-Error "Create VSCode user data folder link failed: $_"
    throw
}

try {
    Set-Location ..
    if (Test-Path VSCode) { Remove-Item VSCode -Force }
    New-Item -ItemType SymbolicLink -Path VSCode -Target .\VSCode-win32-x64\Code.exe
}
catch {
    Set-Location $PSScriptRoot
    Write-Error "Create VSCode executable link failed: $_"
    throw
}

$ErrorActionPreference = $originErrorActionPreference