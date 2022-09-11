-- For each department with more than one majoring student, print the department’s name and the number of majoring students
SELECT id,(
    SELECT COUNT(*) 
    FROM majors_in 
    where majors_in.departments_id = departments.id
    ) AS students_count FROM departments
WHERE id IN (
    SELECT departments_id 
    FROM majors_in
)
GROUP BY id 