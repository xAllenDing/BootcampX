SELECT cohorts.name as cohort, count(assignments_submissions.*) as total_submissions
FROM assignments_submissions
JOIN students ON student.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;