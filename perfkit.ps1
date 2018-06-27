GET-ChildItem parser-scripts |
  ForEach-Object { # run logparser with each script
    $log_path =   "c:\inetpub\logs\LogFiles\W3SVC1\*"
    $cmdargs = "-i IISW3C file:parser-scripts/$_?log_path=$log_path"
    Start-Process -FilePath ".\Logparser.exe " -ArgumentList "$cmdargs" -NoNewWindow -Wait
  }
  