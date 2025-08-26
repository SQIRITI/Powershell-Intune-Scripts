#Printer Name
$printerName = "Printer Upstairs"

#Driver Information
$driverName = "Kyocera ECOSYS M6235cidn KX"
$infFile = "OEMSETUP.INF"

#Printer Port Information
$portName = "IP_10.1.0.11"
$portAdress = "10.1.0.11"

#Do not edit lines after this
#------------------------------------------------------------#
$driverStore = "$PSScriptRoot/Drivers"

pnputil.exe /add-driver $driverStore/$infFile

Add-PrinterDriver -Name $driverName

Add-PrinterPort -Name $PortName -PrinterHostAddress $portAdress
Add-Printer -Name $printerName -DriverName $driverName -PortName $portName
