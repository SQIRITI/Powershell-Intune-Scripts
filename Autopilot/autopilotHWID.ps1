$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath

New-Item -Type Directory -Path $dir\HWID
#Set-Location -Path $dir\HWID
$env:Path += ";C:\Program Files\WindowsPowerShell\Scripts"
Set-ExecutionPolicy -Scope Process -ExecutionPolicy RemoteSigned
Install-Script -Name Get-WindowsAutopilotInfo
Get-WindowsAutopilotInfo -OutputFile $dir\HWID\AutopilotHWID.csv -Append 