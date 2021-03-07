"C:\Program Files (x86)\Robware\RVTools\RVTools.exe" -u administrator@vsphere.local -p _RVToolsPWDZazklB5Rb74qUrIo2XyGdAB/a4P/pllHCzPYRaNy5G4= -s 10.202.101.10 -c ExportvHealth2xlsx -d C:\temp -f vHealth.xlsx
"C:\Program Files (x86)\Robware\RVTools\RVTools.exe" -u administrator@vsphere.local -p _RVToolsPWDZazklB5Rb74qUrIo2XyGdAB/a4P/pllHCzPYRaNy5G4= -s 10.202.101.10 -c ExportvDatastore2xlsx -d C:\temp -f vDatastore.xlsx

powershell.exe -ExecutionPolicy Bypass -File "C:\script\sendmail.ps1"
