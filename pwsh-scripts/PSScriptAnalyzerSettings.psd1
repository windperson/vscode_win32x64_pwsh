### This script is for setting up PSScriptAnalyzer settings
### see https://learn.microsoft.com/en-us/powershell/utility-modules/psscriptanalyzer/using-scriptanalyzer
@{
    # Rules to include in the analysis
    IncludeDefaultRules = $true
    # IncludeRules = @(
    #     'PSAvoidUsingCmdletAliases',
    #     'PSUseApprovedVerbs',
    #     'PSAvoidUsingPlainTextForPassword',
    #     'PSReservedCmdletChar',
    #     'PSReservedParams')

    # Rules to exclude from the analysis
    # ExcludeRules = @(
    #     'PSUseApprovedVerbs',
    #     'PSAvoidUsingWriteHost',
    #     'PSReservedCmdletChar',
    #     'PSReservedParams')
}