# iis-perfkit

Powershell admin tool to run
multiple logparser sql queries
on IIS log files to provide performance intel

_________________________________________________________________

Needs the logparser CLI tool. Download here

https://www.microsoft.com/en-us/download/details.aspx?id=24659

Once downloaded, place logparser.exe in the same directory as
perfkit.ps1
__________________________________________________________________

## Usage ##

In powershell, run

`> perfkit.ps1`

to run each query file in `parser-scripts`

Change the `$log_path` value in `perfkit.ps1`
to point to the logs you want to analyze.

Directory & filename wildcards are supported.

## Extending ##

Add your own  custom sql script(s) by saving
a logparser query to `parser-scripts`
with a .sql extension.

Queries can use the %log_path% variable in the 'from' clause
to specify the IIS log files to parse. This is useful
since you only have to specify the target logs once.

`
SELECT *
FROM %log_path%
`

The existing queries are a starting point, and can be changed
to suit your analysis needs.

The logparser command arguments are in `perfkit.ps1`, and
can be changed by altering the cmdargs variable.

This will change the way the logparser executable is called.

`
$cmdargs = "-i IISW3C file:$($script)?log_path=$log_path"
`

For a full list of available logparser CLI switches,
check the logparser.exe command help.

Arbitrary variables can also be passed into the scripts by following
this convention.

## Logparser tutorials ##

See links below for more info on parsing IIS log files with logparser

http://linuxlore.blogspot.com/2006/11/howto-use-microsofts-logparser-to.html

https://support.microsoft.com/en-us/help/910447/log-parser-2-2-and-asp-net

https://gallery.technet.microsoft.com/office/Query-IIS-Logs-using-fa66667f

https://blogs.msdn.microsoft.com/carlosag/2010/03/25/analyze-your-iis-log-files-favorite-log-parser-queries/
