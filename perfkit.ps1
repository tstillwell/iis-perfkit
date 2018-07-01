GET-ChildItem -Path parser-scripts\*.sql |
  ForEach-Object { # run logparser with each script
    # location of logfiles to query
    $log_path =   "c:\inetpub\logs\LogFiles\W3SVC1\*"
    # filename of the current script
    $script = "$_"
    # logparser CLI arguments - see logparser help for more info
    $cmdargs = "-i IISW3C file:$($script)?log_path=$log_path"
    Start-Process -FilePath ".\Logparser.exe " -ArgumentList "$cmdargs" -NoNewWindow -Wait
  }
