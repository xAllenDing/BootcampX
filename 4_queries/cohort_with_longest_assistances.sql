SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests
JOIN cohorts ON cohorts.id = cohort_id
JOIN students ON student.id = student_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;