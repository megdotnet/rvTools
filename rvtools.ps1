. ".\variables.ps1"

#test for output path and create if necessary
if (-not (Test-Path -Path $outpath))
{
New-Item -ItemType "directory" -Path $outpath
}

set-location $RVToolsPath

$arguments = "-u $VMWuser -p $VMWpass -s $VMWserv -c ExportvHealth2xlsx -d $outpath -f vHealth.xlsx"
Start-Process -FilePath ".\RVTools.exe" -ArgumentList $arguments

$arguments = "-u $VMWuser -p $VMWpass -s $VMWserv -c ExportvDatastore2xlsx -d $outpath -f vDatastore.xlsx"
Start-Process -FilePath ".\RVTools.exe" -ArgumentList $arguments
