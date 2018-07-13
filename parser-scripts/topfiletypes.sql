-- Top File Types by hits
-- https://blogs.msdn.microsoft.com/carlosag/
SELECT
    EXTRACT_EXTENSION(cs-uri-stem) AS Extension, 
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
