-- Top 25 File Types
-- https://blogs.msdn.microsoft.com/carlosag/2010/03/25/analyze-your-iis-log-files-favorite-log-parser-queries/
SELECT TOP 25 
    EXTRACT_EXTENSION(cs-uri-stem) As Extension, 
    COUNT(*) As Hits 
FROM %log_path%
GROUP BY Extension 
ORDER BY Hits DESC 	
--  Extension   Hits
--  gif         52127
--  bmp         20377
--  axd         10321
--  txt         460
--  htm         362
