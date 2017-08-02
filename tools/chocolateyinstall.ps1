$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName  = 'vibrancegui' # arbitrary name for the package, used in messages
$url          = 'http://vibrancegui.com/vibrance/download' # download url
$checksum     = 'cef3d364a76b6a93055b144bcd0a6844f73099e2'
$checksumType = 'sha1'

Install-ChocolateyZipPackage $packageName `
  -Url $url `
  -Checksum $checksum `
  -ChecksumType $checksumType `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
