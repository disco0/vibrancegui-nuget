$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName  = 'vibrancegui' # arbitrary name for the package, used in messages
$url          = 'http://vibrancegui.com/vibrance/download' # download url
$checksum     = '52C9E0D6ECCC71FB71337124325D1BA0A3B2D502'
$checksumType = 'sha1'

Install-ChocolateyZipPackage $packageName `
  -Url $url `
  -Checksum $checksum `
  -ChecksumType $checksumType `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
