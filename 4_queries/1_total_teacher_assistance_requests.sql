-- SELECT  
-- (SELECT COUNT(teacher_feedback) 
-- FROM assistance_requests
-- WHERE teacher_id = teachers.id)
-- AS total_assistances, 
-- name
-- FROM teachers
-- WHERE name = 'Waylon Boehm';

SELECT count(assistance_requests.*) as total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;