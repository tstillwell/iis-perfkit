GET-ChildItem parser-scripts |
  ForEach-Object {
    Start-Process -FilePath ".\Logparser.exe" -NoNewWindow
  }