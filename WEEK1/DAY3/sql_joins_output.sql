**Query #1**

    -- 1. All students and enrolled courses
    
    SELECT s.student_name, c.course_name
    FROM students s
    LEFT JOIN enrollments e
    ON s.student_id = e.student_id
    LEFT JOIN courses c
    ON e.course_id = c.course_id;

| student_name  | course_name         |
| ------------- | ------------------- |
| Alice Johnson | SQL Basics          |
| Bob Smith     | Python Fundamentals |
| Charlie Brown | SQL Basics          |
| Alice Johnson | Cloud Computing     |
| Diana Prince  |                     |
| Ethan Hunt    |                     |

---
**Query #2**

    -- 2. Courses with no students enrolled
    
    SELECT c.course_name
    FROM courses c
    LEFT JOIN enrollments e
    ON c.course_id = e.course_id
    WHERE e.student_id IS NULL;

| course_name      |
| ---------------- |
| Data Analytics   |
| Machine Learning |

---
**Query #3**

    -- 3. Instructors and courses they teach
    
    SELECT i.instructor_name, c.course_name
    FROM instructors i
    LEFT JOIN courses c
    ON i.instructor_id = c.instructor_id;

| instructor_name | course_name         |
| --------------- | ------------------- |
| Dr. John        | SQL Basics          |
| Prof. Sarah     | Python Fundamentals |
| Mr. David       | Cloud Computing     |
| Ms. Emily       |                     |

---
**Query #4**

    -- 4. Courses without instructors
    
    SELECT course_name
    FROM courses
    WHERE instructor_id IS NULL;

| course_name      |
| ---------------- |
| Data Analytics   |
| Machine Learning |

---
**Query #5**

    -- 5. Students and enrollment info using RIGHT JOIN
    
    SELECT s.student_name, e.course_id
    FROM students s
    RIGHT JOIN enrollments e
    ON s.student_id = e.student_id;

| student_name  | course_id |
| ------------- | --------- |
| Alice Johnson | 101       |
| Bob Smith     | 102       |
| Charlie Brown | 101       |
| Alice Johnson | 104       |

---
**Query #6**

    -- 6. Students not enrolled in any course
    
    SELECT s.student_name
    FROM students s
    LEFT JOIN enrollments e
    ON s.student_id = e.student_id
    WHERE e.course_id IS NULL;

| student_name |
| ------------ |
| Diana Prince |
| Ethan Hunt   |

---
**Query #7**

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

| student_name  | course_id |
| ------------- | --------- |
| Alice Johnson | 101       |
| Bob Smith     | 102       |
| Charlie Brown | 101       |
| Alice Johnson | 104       |
| Diana Prince  |           |
| Ethan Hunt    |           |

---
**Query #8**

  -- 8. Courses never appeared in enrollments

    SELECT c.course_name
    FROM courses c
    LEFT JOIN enrollments e
    ON c.course_id = e.course_id
    WHERE e.course_id IS NULL;

| course_name      |
| ---------------- |
| Data Analytics   |
| Machine Learning |

----

**Query #9**

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

| instructor_name | course_name         |
| --------------- | ------------------- |
| Dr. John        | SQL Basics          |
| Prof. Sarah     | Python Fundamentals |
| Mr. David       | Cloud Computing     |
| Ms. Emily       |                     |
|                 | Data Analytics      |
|                 | Machine Learning    |

---
**Query #10**

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

| student_name  | course_name         | instructor_name |
| ------------- | ------------------- | --------------- |
| Alice Johnson | SQL Basics          | Dr. John        |
| Bob Smith     | Python Fundamentals | Prof. Sarah     |
| Charlie Brown | SQL Basics          | Dr. John        |
| Alice Johnson | Cloud Computing     | Mr. David       |
| Diana Prince  |                     |                 |
| Ethan Hunt    |                     |                 |

---
**Query #11**

    -- Bonus Challenge
    
    SELECT
        s.student_name,
        c.course_name
    FROM students s
    CROSS JOIN courses c;

| student_name  | course_name         |
| ------------- | ------------------- |
| Alice Johnson | SQL Basics          |
| Bob Smith     | SQL Basics          |
| Charlie Brown | SQL Basics          |
| Diana Prince  | SQL Basics          |
| Ethan Hunt    | SQL Basics          |
| Alice Johnson | Python Fundamentals |
| Bob Smith     | Python Fundamentals |
| Charlie Brown | Python Fundamentals |
| Diana Prince  | Python Fundamentals |
| Ethan Hunt    | Python Fundamentals |
| Alice Johnson | Data Analytics      |
| Bob Smith     | Data Analytics      |
| Charlie Brown | Data Analytics      |
| Diana Prince  | Data Analytics      |
| Ethan Hunt    | Data Analytics      |
| Alice Johnson | Cloud Computing     |
| Bob Smith     | Cloud Computing     |
| Charlie Brown | Cloud Computing     |
| Diana Prince  | Cloud Computing     |
| Ethan Hunt    | Cloud Computing     |
| Alice Johnson | Machine Learning    |
| Bob Smith     | Machine Learning    |
| Charlie Brown | Machine Learning    |
| Diana Prince  | Machine Learning    |
| Ethan Hunt    | Machine Learning    |

---

[View on DB Fiddle](https://www.db-fiddle.com/)
