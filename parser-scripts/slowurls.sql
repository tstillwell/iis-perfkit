--  Find the Slowest URLs (in average) in the site
-- https://blogs.msdn.microsoft.com/carlosag/
SELECT
    cs-uri-stem AS URL, 
    MAX(time-taken) AS Max, 
    MIN(time-taken) AS Min, 
    Avg(time-taken) AS Average 
FROM %log_path%
GROUP BY URL 
ORDER By Average DESC 
--  URL                        Max     Min   Average
--  /Test/Default.aspx       23215   23215     23215
--  /WebSite/Default.aspx     5757     752      4178
--  /Remote2008.jpg           3510    3510      3510
--  /wordpress/               6541       2      3271
--  /RemoteVista.jpg          3314       2      1658
