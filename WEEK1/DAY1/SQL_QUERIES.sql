-- ==============================
-- TABLE CREATION
-- ==============================

CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    salary DECIMAL(10,2),
    hire_date DATE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

-- ==============================
-- INSERT DATA
-- ==============================

INSERT INTO Department VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

INSERT INTO Employee VALUES
(1, 'Alice', 28, 50000, '2020-05-10', 1),
(2, 'Bob', 35, 70000, '2019-03-15', 2),
(3, 'Charlie', 30, 60000, '2021-07-20', 2),
(4, 'David', 40, 90000, '2018-01-25', 3),
(5, 'Eve', 25, 45000, '2022-11-01', 1),
(6, 'Frank', 32, 75000, '2020-09-10', 3);

INSERT INTO Project VALUES
(1, 'ProjectA', 1),
(2, 'ProjectB', 2),
(3, 'ProjectC', 2),
(4, 'ProjectD', 3);

-- ==============================
-- QUERIES (1–65)
-- ==============================

-- 1
SELECT * FROM Employee;

-- 2
SELECT name, salary FROM Employee;

-- 3
SELECT * FROM Employee WHERE age > 30;

-- 4
SELECT name FROM Employee WHERE department_id = 1;

-- 5
SELECT * FROM Employee WHERE department_id = 1;

-- 6
SELECT * FROM Employee WHERE name LIKE 'A%';

-- 7
SELECT * FROM Employee WHERE name LIKE '%e';

-- 8
SELECT * FROM Employee WHERE name LIKE '%a%';

-- 9
SELECT * FROM Employee WHERE LENGTH(name) = 5;

-- 10
SELECT * FROM Employee WHERE name LIKE '____e';

-- 11
SELECT * FROM Employee WHERE YEAR(hire_date) = 2020;

-- 12
SELECT * FROM Employee WHERE YEAR(hire_date) > YEAR(CURDATE()) - 1;

-- 13
SELECT * FROM Employee WHERE YEAR(hire_date) < 2019;

-- 14
SELECT * FROM Employee WHERE hire_date BETWEEN '2021-01-01' AND '2021-12-31';

-- 15
SELECT * FROM Employee WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR);

-- 16
SELECT SUM(salary) FROM Employee;

-- 17
SELECT AVG(salary) FROM Employee;

-- 18
SELECT MIN(salary) FROM Employee;

-- 19
SELECT department_id, COUNT(*) FROM Employee GROUP BY department_id;

-- 20
SELECT department_id, AVG(salary) FROM Employee GROUP BY department_id;

-- 21
SELECT department_id, SUM(salary) FROM Employee GROUP BY department_id;

-- 22
SELECT department_id, AVG(age) FROM Employee GROUP BY department_id;

-- 23
SELECT department_id, COUNT(*) FROM Employee GROUP BY department_id;

-- 24
SELECT department_id, MAX(salary) FROM Employee GROUP BY department_id;

-- 25
SELECT department_id
FROM Employee
GROUP BY department_id
ORDER BY AVG(salary) DESC
LIMIT 1;

-- 26
SELECT department_id FROM Employee GROUP BY department_id HAVING COUNT(*) > 2;

-- 27
SELECT department_id FROM Employee GROUP BY department_id HAVING AVG(salary) > 55000;

-- 28
SELECT department_id FROM Employee GROUP BY department_id HAVING COUNT(*) > 1;

-- 29
SELECT department_id FROM Employee GROUP BY department_id HAVING AVG(salary) < 100000;

-- 30
SELECT department_id FROM Employee GROUP BY department_id HAVING MIN(salary) > 70000;

-- 31
SELECT * FROM Employee ORDER BY salary DESC;

-- 32
SELECT * FROM Employee ORDER BY age ASC;

-- 33
SELECT * FROM Employee ORDER BY hire_date DESC;

-- 34
SELECT * FROM Employee ORDER BY department_id, salary DESC;

-- 35
SELECT * FROM Employee ORDER BY salary DESC LIMIT 3;

-- 36
SELECT e.name, d.name
FROM Employee e
JOIN Department d ON e.department_id = d.department_id;

-- 37
SELECT e.name, p.name
FROM Employee e
JOIN Project p ON e.department_id = p.department_id;

-- 38
SELECT e.name, p.name
FROM Employee e
LEFT JOIN Project p ON e.department_id = p.department_id;

-- 39
SELECT e.name, d.name
FROM Employee e
LEFT JOIN Department d ON e.department_id = d.department_id;

-- 40
SELECT d.name
FROM Department d
LEFT JOIN Employee e ON d.department_id = e.department_id
WHERE e.emp_id IS NULL;

-- 41
SELECT * FROM Employee WHERE emp_id NOT IN (SELECT emp_id FROM Project);

-- 42
SELECT d.name, COUNT(e.emp_id)
FROM Department d
LEFT JOIN Employee e ON d.department_id = e.department_id
GROUP BY d.name;

-- 43
SELECT d.name
FROM Department d
LEFT JOIN Employee e ON d.department_id = e.department_id
GROUP BY d.name
HAVING COUNT(e.emp_id) = 0;

-- 44
SELECT p.name
FROM Project p
JOIN Employee e ON p.department_id = e.department_id
WHERE e.name = 'Alice';

-- 45
SELECT department_id
FROM Employee
GROUP BY department_id
ORDER BY AVG(salary) DESC
LIMIT 1;

-- 46
SELECT * FROM Employee WHERE salary = (SELECT MAX(salary) FROM Employee);

-- 47
SELECT * FROM Employee WHERE salary > (SELECT AVG(salary) FROM Employee);

-- 48
SELECT * FROM Employee WHERE salary = (SELECT MAX(salary) FROM Employee);

-- 49
SELECT department_id
FROM Employee
GROUP BY department_id
ORDER BY COUNT(*) DESC
LIMIT 1;

-- 50
SELECT * FROM Employee e
WHERE salary > (
  SELECT AVG(salary)
  FROM Employee
  WHERE department_id = e.department_id
);

-- 51
SELECT * FROM Employee e
WHERE salary > (
  SELECT AVG(salary)
  FROM Employee
  WHERE department_id = e.department_id
);

-- 52
SELECT * FROM Employee
WHERE age > ALL (
  SELECT age FROM Employee WHERE department_id = 1
);

-- 53
SELECT * FROM Employee
WHERE salary > 50000 AND department_id = 2;

-- 54
SELECT department_id
FROM Project
GROUP BY department_id
HAVING COUNT(*) >= 2;

-- 55
SELECT * FROM Employee WHERE hire_date > '2020-01-01';

-- 56
SELECT SUM(salary) FROM Employee WHERE YEAR(hire_date) = 2020;

-- 57
SELECT department_id, AVG(salary)
FROM Employee
GROUP BY department_id
ORDER BY AVG(salary) DESC;

-- 58
SELECT department_id, AVG(salary)
FROM Employee
GROUP BY department_id
HAVING AVG(salary) > 55000;

-- 59
SELECT * FROM Employee
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR)
ORDER BY hire_date;

-- 60
SELECT department_id, COUNT(*)
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 2;

-- 61
SELECT * FROM Employee e
WHERE salary > (
  SELECT AVG(salary)
  FROM Employee
  WHERE department_id = e.department_id
);

-- 62
SELECT * FROM Employee
WHERE department_id IN (
  SELECT department_id FROM Employee GROUP BY department_id HAVING COUNT(*) = 1
);

-- 63
SELECT department_id, COUNT(project_id)
FROM Project
GROUP BY department_id;

-- 64
SELECT department_id, MAX(salary)
FROM Employee
GROUP BY department_id;

-- 65
SELECT name, salary
FROM Employee e
WHERE age > (
  SELECT AVG(age)
  FROM Employee
  WHERE department_id = e.department_id
);
