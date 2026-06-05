SELECT students.name AS student_name
FROM students
WHERE students.id IN (
    SELECT student_id
    FROM enrollments
);