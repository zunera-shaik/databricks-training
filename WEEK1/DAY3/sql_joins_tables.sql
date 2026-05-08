CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE instructors (
    instructor_id INT PRIMARY KEY,
    instructor_name VARCHAR(100)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    instructor_id INT
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE
);

INSERT INTO students VALUES
(1, 'Alice Johnson', 'alice@email.com'),
(2, 'Bob Smith', 'bob@email.com'),
(3, 'Charlie Brown', 'charlie@email.com'),
(4, 'Diana Prince', 'diana@email.com'),
(5, 'Ethan Hunt', 'ethan@email.com');



INSERT INTO instructors VALUES
(1, 'Dr. John'),
(2, 'Prof. Sarah'),
(3, 'Mr. David'),
(4, 'Ms. Emily');


INSERT INTO courses VALUES
(101, 'SQL Basics', 1),
(102, 'Python Fundamentals', 2),
(103, 'Data Analytics', NULL),
(104, 'Cloud Computing', 3),
(105, 'Machine Learning', NULL);


INSERT INTO enrollments VALUES
(1, 1, 101, '2024-01-10'),
(2, 2, 102, '2024-01-11'),
(3, 3, 101, '2024-01-12'),
(4, 1, 104, '2024-01-15');
