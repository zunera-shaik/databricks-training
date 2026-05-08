**Query #1**

    -- Find departments having more than 3 employees
    SELECT department, COUNT(*) AS employee_count
    FROM Employees
    GROUP BY department
    HAVING COUNT(*) > 3;

| department | employee_count |
| ---------- | -------------- |
| Finance    | 4              |
| IT         | 5              |

---
**Query #2**

    -- Find departments where average salary is greater than 60000
    SELECT department, AVG(salary) AS average_salary
    FROM Employees
    GROUP BY department
    HAVING AVG(salary) > 60000;

| department | average_salary |
| ---------- | -------------- |
| Finance    | 76000.0        |
| IT         | 76400.0        |

---
**Query #3**

    -- Find cities having more than 2 employees
    SELECT city, COUNT(*) AS employee_count
    FROM Employees
    GROUP BY city
    HAVING COUNT(*) > 2;

| city      | employee_count |
| --------- | -------------- |
| Bangalore | 3              |
| Chennai   | 3              |
| Hyderabad | 4              |
| Mumbai    | 3              |

---
**Query #4**

    -- Find departments where total salary is greater than 200000
    SELECT department, SUM(salary) AS total_salary
    FROM Employees
    GROUP BY department
    HAVING SUM(salary) > 200000;

| department | total_salary |
| ---------- | ------------ |
| Finance    | 304000       |
| IT         | 382000       |

---
**Query #5**

    -- Find departments where maximum salary is above 90000
    SELECT department, MAX(salary) AS maximum_salary
    FROM Employees
    GROUP BY department
    HAVING MAX(salary) > 90000;

| department | maximum_salary |
| ---------- | -------------- |
| Finance    | 91000          |
| IT         | 97000          |

---
