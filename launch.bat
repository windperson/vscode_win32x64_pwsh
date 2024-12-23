@echo on
setlocal
pushd %~dp0
.\PowerShell-x64\pwsh.exe -NoProfile -ExecutionPolicy RemoteSigned -File ".\launch.ps1"
endlocal