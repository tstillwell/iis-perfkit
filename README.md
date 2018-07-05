# iis-perfkit

Runs multiple iis logparser queries

Requires the logparser tool. Download here

https://www.microsoft.com/en-us/download/details.aspx?id=24659

Once downloaded, place logparser.exe in the project directory then

In powershell, run

`
perfkit.ps1
`

to run each query file in `parser-scripts`

Change the `$log_path` value in `perfkit.ps1`
to point to the logs you want to analyze.

## Extending ##

Add your own sql script by saving
a logparser query to `parser-scripts`
with a .sql extension.

Each query should use the %log_path% variable in the 'from' clause
of each query to specify the IIS logs to parse.

`
FROM %log_path%
`

The existing queries are a starting point, and can be modified
to suit your analysis needs.

## Logparser tutorials ##

See links below for an intro to logparser

http://linuxlore.blogspot.com/2006/11/howto-use-microsofts-logparser-to.html

https://support.microsoft.com/en-us/help/910447/log-parser-2-2-and-asp-net

https://gallery.technet.microsoft.com/office/Query-IIS-Logs-using-fa66667f

https://blogs.msdn.microsoft.com/carlosag/2010/03/25/analyze-your-iis-log-files-favorite-log-parser-queries/
