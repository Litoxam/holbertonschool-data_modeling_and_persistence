SELECT courses.title AS course_title
FROM courses
JOIN enrollments
ON courses.id = enrollments.course_id
GROUP BY courses.id
HAVING COUNT(*) > (
    SELECT AVG(enrollment_total)
    FROM (
        SELECT COUNT(*) AS enrollment_total
        FROM enrollments
        GROUP BY course_id
        )
    )
ORDER BY title ASC;