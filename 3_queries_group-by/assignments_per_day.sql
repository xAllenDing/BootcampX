SELECT day, count(*) as total_assignments
FROM total_assignments
GROUP BY day
ORDER BY day;