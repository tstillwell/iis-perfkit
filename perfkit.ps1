GET-ChildItem -Path parser-scripts\*.sql | # all sql files in parser-scripts
  ForEach-Object {
    # location of logfiles to query
    $log_path = "c:\inetpub\logs\LogFiles\W3SVC1\*"
    # filename of the current script
    $script = "$_"
    # logparser CLI arguments - see logparser help for more info
    $cmdargs = "-i IISW3C file:$($script)?log_path=$log_path"
	# run each logparser command
    Start-Process -FilePath ".\Logparser.exe " -ArgumentList "$cmdargs" -NoNewWindow -Wait
  }
