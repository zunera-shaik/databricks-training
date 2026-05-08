-- Find employees from IT department AND salary greater than 70000
SELECT *
FROM Employees
WHERE department = 'IT' AND salary > 70000;

-- Find employees from Hyderabad OR Bangalore
SELECT *
FROM Employees
WHERE city = 'Hyderabad' OR city = 'Bangalore';

-- Find employees from HR department AND experience less than 3
SELECT *
FROM Employees
WHERE department = 'HR' AND experience < 3;

-- Find employees with salary greater than 60000 OR experience greater than 6
SELECT *
FROM Employees
WHERE salary > 60000 OR experience > 6;

-- Find employees NOT from Sales department
SELECT *
FROM Employees
WHERE department <> 'Sales';
