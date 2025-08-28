oh-my-posh init pwsh --config ~/jandedobbeleer.omp.json | Invoke-Expression

# Import modules
Import-Module -Name Terminal-Icons
Import-Module -Name PSReadLine
Import-Module -Name posh-git

# Use the history as a cheap autocomplete option
Set-PSReadLineOption -PredictionSource History

# Aliases
Set-Alias vim nvim

# Fuzzy search with Ctrl + t
Set-PSReadLineKeyHandler -Chord Ctrl+t -ScriptBlock {
  $file = & rg --files -uu | fzf --height 40% --border
  if ($file) { Set-PSReadLineBuffer $file }
}

# History search with Ctrl + r
Set-PSReadLineKeyHandler -Chord Ctrl+r -ScriptBlock {
  $history = Get-History | ForEach-Object CommandLine | fzf
  if ($history) { Set-PSReadLineBuffer $history }
}

