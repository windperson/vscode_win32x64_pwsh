# Shows navigable menu of all options when hitting Tab
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# Autocompleteion for Arrow keys
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -ShowToolTips

function Touch ($file) {
    if (Test-Path $file) {
          (Get-Item $file).LastWriteTime = (Get-Date)
    }
    else {
        New-Item $file -ItemType File | Out-Null
    }
}