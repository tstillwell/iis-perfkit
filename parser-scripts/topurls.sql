-- Top URLs by hit count
-- https://blogs.msdn.microsoft.com/carlosag/
SELECT
    cs-uri-stem AS Url, 
    COUNT(*) AS Hits 
FROM %log_path%
GROUP BY cs-uri-stem 
ORDER BY Hits DESC 
--  Url       Hits
--  /WebResource.axd     10318
--  /favicon.ico     8523
--  /Tools/CodeTranslator/Translate.ashx     6519
--  /App_Themes/Silver/carlosag.css     5898
--  /images/arrow.gif     5720
