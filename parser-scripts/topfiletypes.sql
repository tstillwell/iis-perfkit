-- Top 25 File Types

    SELECT TOP 25 
    EXTRACT_EXTENSION(cs-uri-stem) As Extension, 
    COUNT(*) As Hits 
FROM c:\inetpub\logs\LogFiles\W3SVC1\* 
GROUP BY Extension 
ORDER BY Hits DESC 	
--Extension 	Hits
--gif 	    52127
--bmp 	    20377
--axd 	    10321
--txt 	    460
--htm 	    362