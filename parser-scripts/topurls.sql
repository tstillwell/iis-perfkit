--Top 25 URLs 	
SELECT TOP 25 
    cs-uri-stem as Url, 
    COUNT(*) As Hits 
FROM c:\inetpub\logs\LogFiles\W3SVC1\* 
GROUP BY cs-uri-stem 
ORDER By Hits DESC 	
-- Url 	  Hits
-- /WebResource.axd 	10318
-- /favicon.ico 	8523
-- /Tools/CodeTranslator/Translate.ashx 	6519
-- /App_Themes/Silver/carlosag.css 	5898
-- /images/arrow.gif 	5720