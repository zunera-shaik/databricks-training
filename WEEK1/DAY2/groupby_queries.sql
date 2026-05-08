-- Find total salary department-wise
SELECT department, SUM(salary) AS total_salary
FROM Employees
GROUP BY department;

-- Find average salary in each department
SELECT department, AVG(salary) AS average_salary
FROM Employees
GROUP BY department;

-- Count employees in each city
SELECT city, COUNT(*) AS employee_count
FROM Employees
GROUP BY city;

-- Find maximum salary in each department
SELECT department, MAX(salary) AS maximum_salary
FROM Employees
GROUP BY department;

-- Find minimum experience department-wise
SELECT department, MIN(experience) AS minimum_experience
FROM Employees
GROUP BY department;
