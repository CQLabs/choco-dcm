$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/CQLabs/homebrew-dcm/releases/download/1.13.1/dcm-windows-release.zip'
$packageArgs = @{
  packageName   = 'dcm'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'DCMAnalyzer'
  checksum      = '6cf869f65b8b012677d22c1ad0aa1f6b'
  checksumType  = 'md5'
}
Install-ChocolateyZipPackage @packageArgs
