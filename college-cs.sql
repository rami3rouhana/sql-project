--Find the number of CS students enrolled in any course
SELECT COUNT(students_id)
FROM majors_in 
WHERE departments_id = (
    SELECT id 
    FROM departments 
    WHERE name="Computer Science"
    );