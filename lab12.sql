1. Concatenate course name and semester.
SELECT CONCAT(course_name, ' - ' ,semester) FROM courses;

2. Find courses with labs on Fridays
SELECT * FROM courses WHERE lab_time LIKE 'Fri%';

3. All assignments with a due date after the current date
SELECT * FROM assignments WHERE due_date > '2024-11-26'

4. Count Assignments by Status
SELECT COUNT(*), status FROM assignments GROUP BY status;

5. Course with the longest name
SELECT max(length(course_name)), course_name FROM courses;

6. All course names in uppercase
SELECT UPPER(course_name) FROM courses;

7. Assignment due dates in September
SELECT * FROM assignments WHERE due_date LIKE '2024-09-%';

8. Assignments with missing due dates
SELECT * FROM assignments WHERE due_date IS Null;
