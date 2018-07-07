-- Number of Hits per Client IP, including a Reverse DNS lookup (SLOW)
-- https://blogs.msdn.microsoft.com/carlosag/2010/03/25/analyze-your-iis-log-files-favorite-log-parser-queries/
SELECT 
    c-ip As Machine, 
    REVERSEDNS(c-ip) As Name, 
    COUNT(*) As Hits 
FROM %log_path%
GROUP BY Machine ORDER BY Hits DESC
-- Machine      Name            Hits
-- ::1          CARLOSAGDEV      57
-- 127.0.0.1    MACHINE1         28
-- 27.X.X.X     MACHINE2          1
