show tables;
SELECT i.name FROM instructor i JOIN department d ON i.dept_name = d.dept_name 
WHERE d.dept_name = 'Biology';
SELECT course_id, title FROM course
WHERE dept_name = 'Computer Science' AND credits = 3;
SELECT t.course_id, c.title FROM takes t
JOIN course c ON t.course_id = c.course_id
WHERE t.ID = '12345';
SELECT t.course_id, c.title, SUM(c.credits) AS total_credits FROM takes t
JOIN course c ON t.course_id = c.course_id WHERE t.ID = '12345'
GROUP BY t.course_id, c.title;
SELECT t.ID, SUM(c.credits) AS total_credits FROM takes t
JOIN course c ON t.course_id = c.course_id GROUP BY t.ID ORDER BY t.ID;
SELECT DISTINCT s.name FROM student s JOIN takes t ON s.ID = t.ID
JOIN course c ON t.course_id = c.course_id AND c.dept_name = 'Computer Science';
SELECT DISTINCT i.ID FROM instructor i
LEFT JOIN teaches t ON i.ID = t.ID WHERE t.ID IS NULL;
SELECT DISTINCT i.ID, i.name FROM instructor i LEFT JOIN teaches t ON i.ID = t.ID
WHERE t.ID IS NULL;
 