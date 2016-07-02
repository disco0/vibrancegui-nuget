$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'vibrance-gui'

Uninstall-ChocolateyZipPackage $packageName
