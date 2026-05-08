-- Display top 5 highest paid employees
SELECT *
FROM Employees
ORDER BY salary DESC
LIMIT 5;

-- Display top 3 employees with highest experience
SELECT *
FROM Employees
ORDER BY experience DESC
LIMIT 3;

-- Display top 2 salaries from Finance department
SELECT *
FROM Employees
WHERE department = 'Finance'
ORDER BY salary DESC
LIMIT 2;

-- Display top 4 employees from Hyderabad
SELECT *
FROM Employees
WHERE city = 'Hyderabad'
LIMIT 4;

-- Display top 1 highest salary employee
SELECT *
FROM Employees
ORDER BY salary DESC
LIMIT 1;
