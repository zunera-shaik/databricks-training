**Query #1**

    -- Find total salary department-wise
    SELECT department, SUM(salary) AS total_salary
    FROM Employees
    GROUP BY department;

| department | total_salary |
| ---------- | ------------ |
| Finance    | 304000       |
| HR         | 136000       |
| IT         | 382000       |
| Sales      | 155000       |

---
**Query #2**

    -- Find average salary in each department
    SELECT department, AVG(salary) AS average_salary
    FROM Employees
    GROUP BY department;

| department | average_salary |
| ---------- | -------------- |
| Finance    | 76000.0        |
| HR         | 45333.3333     |
| IT         | 76400.0        |
| Sales      | 51666.6667     |

---
**Query #3**

    -- Count employees in each city
    SELECT city, COUNT(*) AS employee_count
    FROM Employees
    GROUP BY city;

| city      | employee_count |
| --------- | -------------- |
| Bangalore | 3              |
| Chennai   | 3              |
| Hyderabad | 4              |
| Mumbai    | 3              |
| Pune      | 2              |

---
**Query #4**

    -- Find maximum salary in each department
    SELECT department, MAX(salary) AS maximum_salary
    FROM Employees
    GROUP BY department;

| department | maximum_salary |
| ---------- | -------------- |
| Finance    | 91000          |
| HR         | 52000          |
| IT         | 97000          |
| Sales      | 61000          |

---
**Query #5**

    -- Find minimum experience department-wise
    SELECT department, MIN(experience) AS minimum_experience
    FROM Employees
    GROUP BY department;

| department | minimum_experience |
| ---------- | ------------------ |
| Finance    | 4                  |
| HR         | 2                  |
| IT         | 3                  |
| Sales      | 2                  |

---
