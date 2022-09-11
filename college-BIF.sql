-- Find all courses taken by BIF majors
SELECT courses.name FROM courses 
LEFT JOIN enrolled ON enrolled.courses_crn = courses.crn
LEFT JOIN students ON students.id = enrolled.students_id
LEFT JOIN majors_in ON majors_in.students_id = enrolled.students_id
LEFT JOIN departments ON departments.id = majors_in.departments_id
WHERE departments.name="BIF"