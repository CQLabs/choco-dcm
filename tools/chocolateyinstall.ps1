$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/CQLabs/homebrew-dcm/releases/download/1.28.1/dcm-windows-release.zip'
$packageArgs = @{
  packageName   = 'dcm'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'DCMAnalyzer'
  checksum      = 'f862adff27f9b57f0de62df87edab87b'
  checksumType  = 'md5'
}
Install-ChocolateyZipPackage @packageArgs
