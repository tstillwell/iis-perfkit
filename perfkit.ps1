GET-ChildItem parser-scripts |
  ForEach-Object { # run logparser with each script
    $log_path =   "c:\inetpub\logs\LogFiles\W3SVC1\*"
    $script = "$_" # filename of the current script
    # logparser CLI arguments - see logparser help for more info
    $cmdargs = "-i IISW3C file:parser-scripts/$script?log_path=$log_path"
    Start-Process -FilePath ".\Logparser.exe " -ArgumentList "$cmdargs" -NoNewWindow -Wait
  }
  