--List all the requests by user agent
SELECT 
    cs(User-Agent) As UserAgent, 
    COUNT(*) as Hits 
FROM c:\inetpub\logs\LogFiles\W3SVC1\* 
GROUP BY UserAgent 
ORDER BY Hits DESC 	
--UserAgent 	Hits
--iisbot/1.0+(+http://www.iis.net/iisbot.html) 	104
--Mozilla/4.0+(compatible;+MSIE+8.0;� 	77
--Microsoft-WebDAV-MiniRedir/6.1.7600 	23
--DavClnt 	1