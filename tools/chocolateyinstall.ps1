$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/CQLabs/homebrew-dcm/releases/download/1.30.0/dcm-windows-release.zip'
$packageArgs = @{
  packageName   = 'dcm'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'DCMAnalyzer'
  checksum      = '8338b8da78347342395a462efe1e4847'
  checksumType  = 'md5'
}
Install-ChocolateyZipPackage @packageArgs
