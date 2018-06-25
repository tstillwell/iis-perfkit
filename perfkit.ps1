GET-ChildItem parser-scripts |
  ForEach-Object { # run logparser with each script
    Start-Process -FilePath ".\Logparser.exe" -NoNewWindow
  }