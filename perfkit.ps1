GET-ChildItem parser-scripts | ForEach-Object 
{
  Start-Process -FilePath ".\LogParser.exe" 
}