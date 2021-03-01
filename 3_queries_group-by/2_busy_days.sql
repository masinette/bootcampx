SELECT day, count(*) as total_assignments
FROM assignments
GROUP BY day
HAVING COUNT(*) > 9;