-- Number of hits per Method (GET, POST, etc)
-- https://blogs.msdn.microsoft.com/carlosag/
SELECT
  cs-method AS Method,
  COUNT(*) AS Hits
FROM %log_path%
GROUP BY Method
--  Method    Hits
--  GET       133566
--  POST       10901
--  HEAD         568
--  OPTIONS       11
--  PROPFIND      18
