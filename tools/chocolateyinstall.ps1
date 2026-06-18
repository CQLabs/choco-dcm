$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/CQLabs/homebrew-dcm/releases/download/1.38.0/dcm-windows-release.zip'
$packageArgs = @{
  packageName   = 'dcm'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'DCMAnalyzer'
  checksum      = '1c55ad3633aac2d561134918a93f3987'
  checksumType  = 'md5'
}
Install-ChocolateyZipPackage @packageArgs
