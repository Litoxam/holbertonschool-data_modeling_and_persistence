SELECT DISTINCT students.name
FROM students
INNER JOIN registrations
ON students.id = registrations.student_id
ORDER BY students.name ASC;