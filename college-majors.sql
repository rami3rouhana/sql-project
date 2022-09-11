-- Find the number of majors that each student has declared
SELECT students_id, COUNT(students_id) 
FROM majors_in
GROUP BY students_id;