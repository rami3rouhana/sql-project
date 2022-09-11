-- Find the number of CS students enrolled in CSC275
SELECT COUNT(students_id)
FROM enrolled
WHERE courses_crn = (
    SELECT crn 
    FROM courses
    WHERE name = "cs275"
)
AND students_id IN (
    SELECT students_id
        FROM majors_in 
        WHERE departments_id = (
            SELECT id 
            FROM departments 
            WHERE name="Computer Science"
            )
)
