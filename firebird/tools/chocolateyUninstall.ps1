$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$toolsScript = Join-Path $toolsDir "..\..\firebirdclient\tools\firebirdTools.ps1"

. $toolsScript

$packageName = 'firebird'

Uninstall-Firebird $packageName

Install-FirebirdClient 'firebirdclient'
