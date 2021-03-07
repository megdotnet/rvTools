. ".\variables.ps1"

#test for output path and create if necessary
if (-not (Test-Path -Path $outpath))
{
New-Item -ItemType "directory" -Path $outpath
}

set-location $RVToolsPath

$health = "vHealth"
$datastore = "vDatastore"
$ext = ".xlsx"

$file = -join ($health, $ext)
$arguments = "-u $VMWuser -p $VMWpass -s $VMWserv -c ExportvHealth2xlsx -d $outpath -f $file"
Start-Process -FilePath ".\RVTools.exe" -ArgumentList $arguments

$file = -join ($datastore, $ext)
$arguments = "-u $VMWuser -p $VMWpass -s $VMWserv -c ExportvDatastore2xlsx -d $outpath -f $file"
Start-Process -FilePath ".\RVTools.exe" -ArgumentList $arguments

#merge excel files
#Import-Module ImportExcel
#Import-Excel .\vDatastore.xlsx -WorksheetName vDatastore | Export-Excel rvtools.xlsx -WorksheetName vDatastore