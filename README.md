# iis-perfkit

Uses logparser tool to automatically retrieve IIS webserver
performance information.

Requires the logparser tool. Download here

https://www.microsoft.com/en-us/download/details.aspx?id=24659

Once downloaded, place logparser.exe in the project directory then

In powershell, run

`
perfkit.ps1
`

to run all queries in parser-scripts

Change the `$log_path` value in `perfkit.ps1`
to point to the logs you want to analyze.

## Logparser tutorials ##

http://linuxlore.blogspot.com/2006/11/howto-use-microsofts-logparser-to.html

https://support.microsoft.com/en-us/help/910447/log-parser-2-2-and-asp-net

https://gallery.technet.microsoft.com/office/Query-IIS-Logs-using-fa66667f

https://blogs.msdn.microsoft.com/carlosag/2010/03/25/analyze-your-iis-log-files-favorite-log-parser-queries/
