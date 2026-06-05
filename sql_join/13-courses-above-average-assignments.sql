SELECT courses.title
FROM courses
INNER JOIN assignments
ON assignments.course_id = courses.id
GROUP BY courses.id
HAVING COUNT(*) > (
    SELECT AVG(assignments_total)
    FROM (
        SELECT COUNT(*) AS assignments_total
        FROM assignments
        GROUP BY course_id
    )
)
ORDER BY courses.title ASC;