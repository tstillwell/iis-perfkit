--  List all the requests by user agent
-- https://blogs.msdn.microsoft.com/carlosag/2010/03/25/analyze-your-iis-log-files-favorite-log-parser-queries/
SELECT 
    cs(User-Agent) As UserAgent, 
    COUNT(*) as Hits 
FROM %log_path% 
GROUP BY UserAgent 
ORDER BY Hits DESC 	
--  UserAgent   Hits
--  iisbot/1.0+(+http://www.iis.net/iisbot.html)    104
--  Mozilla/4.0+(compatible;+MSIE+8.0;      77
--  Microsoft-WebDAV-MiniRedir/6.1.7600     23
--  DavClnt     1
