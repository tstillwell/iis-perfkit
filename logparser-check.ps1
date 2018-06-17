# =======================
Write-Host " "
Write-Host " "
Write-Host "Checking for the Logparser.exe on local path..." -NoNewline

Start-Sleep -Seconds 2
If(Test-Path -Path Logparser.exe){
Write-Host "[   OK   ]" -ForegroundColor Green
} Else {
Write-Host "[ Failed ]" -ForegroundColor Red
Write-Host " "
Write-Host " "
Write-Warning "Either Logparser is not installed or you are running this script on a different folder where Logparser.exe file is unavailable."
Write-Host " "
Write-Host "To download logparser follow this link : " -NoNewline -BackgroundColor Yellow -ForegroundColor Black
Write-Host "http://www.microsoft.com/en-in/download/details.aspx?id=24659" -ForegroundColor Blue -BackgroundColor Yellow
Write-Host " "
exit
}
