-- Display all employee details
SELECT * FROM Employees;

-- Display only employee names and salaries
SELECT emp_name, salary
FROM Employees;

-- Display employee names and departments
SELECT emp_name, department
FROM Employees;

-- Display all employees from the IT department
SELECT *
FROM Employees
WHERE department = 'IT';

-- Display employee names and experience
SELECT emp_name, experience
FROM Employees;
