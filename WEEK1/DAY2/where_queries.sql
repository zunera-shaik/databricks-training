-- Find employees with salary greater than 70000
SELECT *
FROM Employees
WHERE salary > 70000;

-- Find employees working in Hyderabad
SELECT *
FROM Employees
WHERE city = 'Hyderabad';

-- Find employees with experience less than 4 years
SELECT *
FROM Employees
WHERE experience < 4;

-- Find employees from Finance department
SELECT *
FROM Employees
WHERE department = 'Finance';

-- Find employees whose salary is equal to 52000
SELECT *
FROM Employees
WHERE salary = 52000;
