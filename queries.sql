SELECT s.student_name FROM student AS s WHERE s.level = "SR" AND EXISTS 
    (SELECT * FROM semester_course as sc NATURAL JOIN enrolled as e WHERE s.student_id = e.student_id AND sc.prof_id="1"); 


SELECT DISTINCT s.student_name FROM student AS s NATURAL JOIN enrolled AS e NATURAL JOIN semester_course AS sc WHERE sc.prof_id = '1' AND s.level = 'SR';






(SELECT s.student_name, c.`name` FROM student AS s NATURAL JOIN enrolled AS e NATURAL JOIN semester_course AS sc NATURAL JOIN course AS c)
UNION
(SELECT s.student_name, NULL AS name FROM student AS s WHERE NOT EXISTS 
    (SELECT 1 FROM enrolled as e WHERE e.student_id=s.student_id));



SELECT DISTINCT s.student_name, c.`name` FROM student AS s LEFT JOIN enrolled AS e ON s.student_id=e.student_id LEFT JOIN course AS c ON c.course_code=e.course_code; 