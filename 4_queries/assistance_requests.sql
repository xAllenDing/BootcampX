SELECT count(assistance_requests.*) as total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE teacher.name = 'Waylon Boehm'
GROUP BY teachers.name;