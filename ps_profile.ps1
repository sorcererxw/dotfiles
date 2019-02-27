Import-Module Get-ChildItemColor
Import-Module posh-git
Import-Module oh-my-posh
Import-Module windows-screenfetch
Import-Module PSColor
Import-Module Posh-SSH
Import-Module PSReadline

Set-Alias l Get-ChildItemColor -option AllScope
Set-Alias ls Get-ChildItemColorFormatWide -option AllScope
Set-Alias open Invoke-Item
Set-Alias which Get-Command

Set-Theme Paradox

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete