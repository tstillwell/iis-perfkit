-- Number of hits per hour for the month of March
-- https://blogs.msdn.microsoft.com/carlosag/
SELECT 
    QUANTIZE(TO_LOCALTIME(TO_TIMESTAMP(date, time)), 3600) AS Hour, 
    COUNT(*) AS Hits 
FROM %log_path%
WHERE date>'2010-03-01' AND date<'2010-04-01' 
GROUP BY Hour 
--  Date         Hour        Hits
--  3/3/2010     10:00:00    33
--  3/3/2010     11:00:00    5
--  3/3/2010     12:00:00    3
