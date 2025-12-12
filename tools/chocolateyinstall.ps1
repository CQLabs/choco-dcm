$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/CQLabs/homebrew-dcm/releases/download/1.34.0/dcm-windows-release.zip'
$packageArgs = @{
  packageName   = 'dcm'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'DCMAnalyzer'
  checksum      = '4196aaca05daa3cfe97e945ef7b04032'
  checksumType  = 'md5'
}
Install-ChocolateyZipPackage @packageArgs
