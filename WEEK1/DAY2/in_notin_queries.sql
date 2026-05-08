-- Find employees working in ('Hyderabad', 'Mumbai')
SELECT *
FROM Employees
WHERE city IN ('Hyderabad', 'Mumbai');

-- Find employees whose department IN ('IT', 'Finance')
SELECT *
FROM Employees
WHERE department IN ('IT', 'Finance');

-- Find employees whose city NOT IN ('Chennai', 'Pune')
SELECT *
FROM Employees
WHERE city NOT IN ('Chennai', 'Pune');

-- Find employees whose salary IN (45000, 75000, 91000)
SELECT *
FROM Employees
WHERE salary IN (45000, 75000, 91000);

-- Find employees whose department NOT IN ('HR', 'Sales')
SELECT *
FROM Employees
WHERE department NOT IN ('HR', 'Sales');
