# Portable VSCode PowerShell development environment

This is a portable development environment for PowerShell using [Visual Studio Code Portable Mode](https://code.visualstudio.com/docs/editor/portable), so the User computer can use it without installing VSCode, git, PowerShell v7+.

The benefit to use this portable development environment is providing a cleaner PowerShell environment for TDD( Test Driven Development), it will not being affected by host machine's *Windows PowerShell* module, and by using a open-sourced [ModuleFast](https://github.com/JustinGrote/ModuleFast) to install PowerShell modules, the testing modules will not pollute User computer.

## Pre-requisites

- Windows 10 or Windows 11 x64 environment
- Download the portable (zip) distribution from the release page:
  - [VSCode zip](https://code.visualstudio.com/download)
  - [PowerShell v7.+ zip](https://github.com/PowerShell/PowerShell/releases/tag/v7.4.5)
  - [Git Portable](https://git-scm.com/downloads/win)
  - (Optional) [NeoVim win64 zip](https://github.com/neovim/neovim/releases/tag/v0.10.1), [im-select x64 pre-build executable](https://github.com/daipeihust/im-select/tree/master/win/out/x64) if you want to use Vim extension in VSCode.
- Extract the zip file to the desired location:
  - VSCode to **VSCode-win32-x64** folder, be sure to not overwrite the `data` folder symbolic link.
  - PowerShell to **PowerShell-x64** folder.
  - Git to **PortableGit** folder.
  - (Optional) Neovim to **cli-tools\nvim-win64** folder, and im-select.exe to **cli-tools** folder if you want to use Vim extension in VSCode.
- Download latest [PowerShell for Visual Studio Code extension install file(*.vsix*)](https://github.com/PowerShell/vscode-powershell/releases/)
- (Optional) Download [Vim Visual Studio Code extension install file(*.vsix*)](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim) if you want to use Vim extension in VSCode.
- Download [ModuleFast v0.5.0 zip](https://github.com/JustinGrote/ModuleFast/releases/tag/v0.5.0) PowerShell module and extract to `**pwsh_modules\ModuleFast\0.5.0**` folder.

## Modify settings.json before first run

1. The configuration file is at  **vscode_data\user-data\User\settings.json**, open it with a text editor and modify all absolute path value (default is written as `D:\\vscode_portable\\`) to match the actual path in your computer.

2. Make sure the `data` folder symbolic link in **VSCode-win32-x64** folder is not broken (It will point to upper directory **vscode_data**).

If not, recreate the symbolic link in **VSCode-win32-x64** folder:

```powershell
rm data
New-Item -ItemType SymbolicLink -Path data -Target .\..\vscode_data\
```

3. Make sure the `VSCode` symbolic link in top directory is not broken (It will point to *VSCode-win32-x64/Code.exe*).

If not, recreate the symbolic link in top folder:

```powershell
rm VSCode
New-Item -ItemType SymbolicLink -Path VSCode -Target .\VSCode-win32-x64\Code.exe
```

The **Update-SymLink.ps1** script on root folder can automate the above step 2 and 3, on cmd or Windows PowerShell with Administrator right (or turn on Developer mode in Settings in Windows10/11), run:

```powershell
.\PowerShell-x664\pwsh.exe -nop -c .\Update-SymLink.ps1 
```

If you want to use Vim extension, be sure to un-comment the related setting below `// Vim extension settings`.

## Start VSCode

Run `VSCode-win32-x64\Code.exe` or the **VSCode** symbolic link in root folder to start the portable VSCode, and install the PowerShell and (Optional) Vim extensions from the ***.vsix*** files that download before.

## How to install PowerShell modules

This portable development environment has configure the **pwsh_modules** folder to be the first PowerShell module probing path, so we can use `Install-ModuleFast` cmdlet of [ModuleFast](https://github.com/JustinGrote/ModuleFast) to install PowerShell modules to **pwsh_modules** folder without polluting the host machine.

For example, to install test framework [Pester](https://pester.dev/) and specify to install version v5.6.1 , in Integrated Terminal of VSCode, run:

```powershell
 @{ModuleName='Pester';ModuleVersion='5.6.1'} | Install-ModuleFast -Source api.nuget.org/v3 -Destination D:\vscode_portable\pwsh_modules
```

so the Pester module will be installed to `pwsh_modules\Pester\5.6.1` folder, and ready for using in this portable development environment.

## How to update various components

- When you want to update the VSCode portable version, just replace all file except the `data` folder symbolic link with the updated VSCode zip distribution in **VSCode-Win32-x64** directory.
- When you want to update the PowerShell version, just replace all file with the updated PowerShell zip distribution in **PowerShell-x64** directory.
- When you want to update the Git portable version, just replace all file with the updated Git zip distribution in **PortableGit** directory.
- (Optional) When you want to update the Neovim version, just replace all file with the updated Neovim zip distribution in **cli-tools\nvim-win64** directory.
