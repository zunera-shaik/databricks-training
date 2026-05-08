-- Find employees whose names start with 'R'
SELECT *
FROM Employees
WHERE emp_name LIKE 'R%';

-- Find employees whose names end with 'a'
SELECT *
FROM Employees
WHERE emp_name LIKE '%a';

-- Find employees whose names contain 'v'
SELECT *
FROM Employees
WHERE emp_name LIKE '%v%';

-- Find employees whose city starts with 'B'
SELECT *
FROM Employees
WHERE city LIKE 'B%';

-- Find employees whose department ends with 's'
SELECT *
FROM Employees
WHERE department LIKE '%s';
