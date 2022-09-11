-- Create a list of all students who are not enrolled in a course
SELECT * FROM students 
WHERE id NOT IN (
    SELECT students_id 
    FROM enrolled
)