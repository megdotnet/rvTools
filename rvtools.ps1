. ".\variables.ps1"

Write-Output $RVToolsPath
set-location $RVToolsPath

$arguments = "-u $VMWuser -p $VMWpass -s $VMWserv"
Start-Process -FilePath ".\RVTools.exe" -ArgumentList $arguments