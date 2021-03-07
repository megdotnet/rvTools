. ".\variables.ps1"

Write-Output $RVToolsPath
set-location $RVToolsPath

$arguments = "-u $VMWuser -p $VMWpass -s $VMWserv -c ExportvHealth2xlsx -d $outpath -f vHealth.xlsx"
Start-Process -FilePath ".\RVTools.exe" -ArgumentList $arguments