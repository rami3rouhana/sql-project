-- Find all courses taken by BIF majors
SELECT courses.name FROM courses 
WHERE courses.crn IN (
        SELECT courses_crn
        FROM enrolled 
		WHERE students_id IN (
            SELECT students_id 
            FROM majors_in
            WHERE departments_id IN (
                SELECT MAX(id)
                FROM departments 
                WHERE name = "BIF"
    )))