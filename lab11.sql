--1
SELECT title, due_date FROM assignments WHERE course_id LIKE 'COMP1234' ORDER BY due_date;
--2
SELECT title, due_date FROM assignments ORDER BY due_date;
--3
SELECT title, due_date FROM assignments ORDER BY due_date DESC;
--4
SELECT title, due_date FROM assignments WHERE due_date LIKE '2024-10-08' ORDER BY due_date ;
--5
SELECT title, due_date FROM assignments WHERE due_date LIKE '2024-10%' ORDER BY due_date ;
--6
SELECT title, due_date FROM assignments WHERE status = 'Completed' ORDER BY due_date ;

--2.1
SELECT title, due_date FROM assignments WHERE status = 'Not Started' ORDER BY due_date;
--2.2         course_id semester course_name lab_time
SELECT * FROM courses WHERE lab_time LiKE 'Tue%';
--2.3
SELECT a.course_name, b.due_date, b.status, a.lab_time FROM courses a JOIN assignments b ON a.course_id = b.course_id 
WHERE b.status != 'Completed' ORDER BY b.due_date;
