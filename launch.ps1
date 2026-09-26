$env:DOTNET_ROOT = "$PSScriptRoot\cli-tools\dotnet\sdks\10.0"
$env:Path = "$env:DOTNET_ROOT;$env:Path"
& "$PSScriptRoot\VSCode"