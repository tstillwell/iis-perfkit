--  Number of hits per Method (GET, POST, etc)
SELECT 
    cs-method As Method, 
    COUNT(*) As Hits 
FROM %log_path%
GROUP BY Method 
--  Method    Hits
--  GET       133566
--  POST       10901
--  HEAD         568
--  OPTIONS       11
--  PROPFIND      18
