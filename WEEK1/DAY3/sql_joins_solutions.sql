-- 1. All students and enrolled courses

SELECT s.student_name, c.course_name
FROM students s
LEFT JOIN enrollments e
ON s.student_id = e.student_id
LEFT JOIN courses c
ON e.course_id = c.course_id;



-- 2. Courses with no students enrolled

SELECT c.course_name
FROM courses c
LEFT JOIN enrollments e
ON c.course_id = e.course_id
WHERE e.student_id IS NULL;



-- 3. Instructors and courses they teach

SELECT i.instructor_name, c.course_name
FROM instructors i
LEFT JOIN courses c
ON i.instructor_id = c.instructor_id;



-- 4. Courses without instructors

SELECT course_name
FROM courses
WHERE instructor_id IS NULL;



-- 5. Students and enrollment info using RIGHT JOIN

SELECT s.student_name, e.course_id
FROM students s
RIGHT JOIN enrollments e
ON s.student_id = e.student_id;



-- 6. Students not enrolled in any course

SELECT s.student_name
FROM students s
LEFT JOIN enrollments e
ON s.student_id = e.student_id
WHERE e.course_id IS NULL;

--------------------------------------------------

-- 7. FULL OUTER JOIN students and enrollments

SELECT s.student_name, e.course_id
FROM students s
LEFT JOIN enrollments e
ON s.student_id = e.student_id

UNION

SELECT s.student_name, e.course_id
FROM students s
RIGHT JOIN enrollments e
ON s.student_id = e.student_id;



-- 8. Courses never appeared in enrollments

SELECT c.course_name
FROM courses c
LEFT JOIN enrollments e
ON c.course_id = e.course_id
WHERE e.course_id IS NULL;



-- 9. FULL OUTER JOIN instructors and courses

SELECT i.instructor_name, c.course_name
FROM instructors i
LEFT JOIN courses c
ON i.instructor_id = c.instructor_id

UNION

SELECT i.instructor_name, c.course_name
FROM instructors i
RIGHT JOIN courses c
ON i.instructor_id = c.instructor_id;


-- 10. Student, course and instructor report

SELECT
    s.student_name,
    c.course_name,
    i.instructor_name
FROM students s
LEFT JOIN enrollments e
ON s.student_id = e.student_id
LEFT JOIN courses c
ON e.course_id = c.course_id
LEFT JOIN instructors i
ON c.instructor_id = i.instructor_id;


-- Bonus Challenge

SELECT
    s.student_name,
    c.course_name
FROM students s
CROSS JOIN courses c;
