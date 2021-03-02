-- SELECT teachers.name AS teacher,
--   cohorts.name AS cohort
--   FROM teachers
--   JOIN assistance_requests ON teacher_id = teachers.id
--   JOIN students ON student_id = students.id
--   JOIN cohorts ON cohort_id = cohorts.id
--   WHERE cohorts.name = 'JUL02'
--   GROUP BY teachers.name, cohorts.name

SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;