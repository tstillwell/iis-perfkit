# perfkit.ps1 - runs logparser sql files
# MIT LICENSE 
# https://github.com/tstillwell/iis-perfkit
# usage: > perfkit.ps1
# See README for more info
GET-ChildItem -Path parser-scripts\*.sql | # all sql scripts in parser-scripts
  ForEach-Object {
    $log_path = "c:\inetpub\logs\LogFiles\W3SVC1\*"
    $script = "$_" # filename of the current script
    $cmdargs = "-i IISW3C file:$($script)?log_path=$log_path" # logparser CLI arguments
    Start-Process -FilePath ".\Logparser.exe " -ArgumentList "$cmdargs" -NoNewWindow -Wait
  }
