GET-ChildItem parser-scripts |
  ForEach-Object { # run logparser with each script
    $cmdargs = "-i IISW3C file:parser-scripts/$_"
    Start-Process -FilePath ".\Logparser.exe " -ArgumentList "$cmdargs" -NoNewWindow
  }