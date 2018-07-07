-- Top 25 URLs
-- https://blogs.msdn.microsoft.com/carlosag/2010/03/25/analyze-your-iis-log-files-favorite-log-parser-queries/
SELECT TOP 25 
    cs-uri-stem as Url, 
    COUNT(*) As Hits 
FROM %log_path%
GROUP BY cs-uri-stem 
ORDER By Hits DESC 	
--  Url       Hits
--  /WebResource.axd     10318
--  /favicon.ico     8523
--  /Tools/CodeTranslator/Translate.ashx     6519
--  /App_Themes/Silver/carlosag.css     5898
--  /images/arrow.gif     5720
