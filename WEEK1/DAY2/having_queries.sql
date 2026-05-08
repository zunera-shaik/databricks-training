-- Find departments having more than 3 employees
SELECT department, COUNT(*) AS employee_count
FROM Employees
GROUP BY department
HAVING COUNT(*) > 3;

-- Find departments where average salary is greater than 60000
SELECT department, AVG(salary) AS average_salary
FROM Employees
GROUP BY department
HAVING AVG(salary) > 60000;

-- Find cities having more than 2 employees
SELECT city, COUNT(*) AS employee_count
FROM Employees
GROUP BY city
HAVING COUNT(*) > 2;

-- Find departments where total salary is greater than 200000
SELECT department, SUM(salary) AS total_salary
FROM Employees
GROUP BY department
HAVING SUM(salary) > 200000;

-- Find departments where maximum salary is above 90000
SELECT department, MAX(salary) AS maximum_salary
FROM Employees
GROUP BY department
HAVING MAX(salary) > 90000;
