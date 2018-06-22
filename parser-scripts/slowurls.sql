--  Find the Slowest 25 URLs (in average) in the site
SELECT TOP 25 
    cs-uri-stem as URL, 
    MAX(time-taken) As Max, 
    MIN(time-taken) As Min, 
    Avg(time-taken) As Average 
FROM c:\inetpub\logs\LogFiles\W3SVC1\* 
GROUP BY URL 
ORDER By Average DESC 	
--  URL                        Max     Min   Average
--  /Test/Default.aspx       23215   23215     23215
--  /WebSite/Default.aspx     5757     752      4178
--  /Remote2008.jpg           3510    3510      3510
--  /wordpress/               6541       2      3271
--  /RemoteVista.jpg          3314       2      1658