-- Find the course or courses with the earliest start time
SELECT * from courses where start_time= (SELECT Min(start_time) from courses)
