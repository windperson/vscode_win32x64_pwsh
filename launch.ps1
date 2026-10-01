$env:DOTNET_ROOT = "$PSScriptRoot\cli-tools\dotnet\sdks\10.0"
$env:Path = "$env:DOTNET_ROOT;$env:Path"
# Set the user profile to a dummy location for isolation to prevent loading system-level Agent Skills
$env:USERPROFILE = "$PSScriptRoot\dummy_userprofile"
& "$PSScriptRoot\VSCode"