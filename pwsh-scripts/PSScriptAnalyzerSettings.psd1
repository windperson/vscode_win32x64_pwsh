### This script is for setting up PSScriptAnalyzer settings
### see https://learn.microsoft.com/en-us/powershell/utility-modules/psscriptanalyzer/using-scriptanalyzer
@{
    # Rules to include in the analysis
    IncludeDefaultRules = $true
    #IncludeRules        = @(
    #     'PSAvoidUsingCmdletAliases',
    #     'PSUseApprovedVerbs',
    #     'PSAvoidUsingPlainTextForPassword',
    #     'PSReservedCmdletChar',
    #     'PSReservedParams'
    #)

    # Rules to exclude from the analysis
    # ExcludeRules = @(
    #     'PSUseApprovedVerbs',
    #     'PSAvoidUsingWriteHost',
    #     'PSReservedCmdletChar',
    #     'PSReservedParams')

    Rules               = @{
        
        # Rules for testing Compatible Windows PowerShell Version 5.1
        # PSUseCompatibleSyntax   = @{
        #     Enable         = $true
        #     TargetVersions = @(
        #         '5.1'
        #     )
        # }
        # PSUseCompatibleCmdlets  = @{
        #     Compatibility = @('desktop-5.1.14393.206-windows')
        # }
        # PSUseCompatibleCommands = @{
        #     Enable         = $true
        #     TargetProfiles = @(
        #         # Windows 10 Pro built-in "Windows PowerShell" v5.1
        #         'win-48_x64_10.0.17763.0_5.1.17763.316_x64_4.0.30319.42000_framework' 
        #     )
        #     IgnoreCommands = @(
        #         'Install-Module'
        #     )
        # }
        # PSUseCompatibleTypes    = @{
        #     Enable         = $true
        #     TargetProfiles = @(
        #         # Windows 10 built-in Windows PowerShell v5.1
        #         'win-48_x64_10.0.17763.0_5.1.17763.316_x64_4.0.30319.42000_framework'
        #     )
        #     IgnoreTypes    = @(
        #         'System.IO.Compression.ZipFile'
        #     )
        # }

    }
}