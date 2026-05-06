**Query #1**

    SELECT * FROM Employee;

| emp_id | name    | age | salary  | hire_date  | department_id |
| ------ | ------- | --- | ------- | ---------- | ------------- |
| 1      | Alice   | 28  | 50000.0 | 2020-05-10 | 1             |
| 2      | Bob     | 35  | 70000.0 | 2019-03-15 | 2             |
| 3      | Charlie | 30  | 60000.0 | 2021-07-20 | 2             |
| 4      | David   | 40  | 90000.0 | 2018-01-25 | 3             |
| 5      | Eve     | 25  | 45000.0 | 2022-11-01 | 1             |
| 6      | Frank   | 32  | 75000.0 | 2020-09-10 | 3             |

---
**Query #2**

    SELECT name, salary FROM Employee;

| name    | salary  |
| ------- | ------- |
| Alice   | 50000.0 |
| Bob     | 70000.0 |
| Charlie | 60000.0 |
| David   | 90000.0 |
| Eve     | 45000.0 |
| Frank   | 75000.0 |

---
**Query #3**

    SELECT * FROM Employee WHERE age > 30;

| emp_id | name  | age | salary  | hire_date  | department_id |
| ------ | ----- | --- | ------- | ---------- | ------------- |
| 2      | Bob   | 35  | 70000.0 | 2019-03-15 | 2             |
| 4      | David | 40  | 90000.0 | 2018-01-25 | 3             |
| 6      | Frank | 32  | 75000.0 | 2020-09-10 | 3             |

---

**Query #4**

    SELECT name FROM Employee WHERE department_id = 1;

| name  |
| ----- |
| Alice |
| Eve   |

---

**Query #5**

    SELECT * FROM Employee WHERE department_id = 1;

| emp_id | name  | age | salary  | hire_date  | department_id |
| ------ | ----- | --- | ------- | ---------- | ------------- |
| 1      | Alice | 28  | 50000.0 | 2020-05-10 | 1             |
| 5      | Eve   | 25  | 45000.0 | 2022-11-01 | 1             |

---


**Query #6**

    SELECT * FROM Employee WHERE name LIKE 'A%';

| emp_id | name  | age | salary  | hire_date  | department_id |
| ------ | ----- | --- | ------- | ---------- | ------------- |
| 1      | Alice | 28  | 50000.0 | 2020-05-10 | 1             |

---
**Query #7**

    SELECT * FROM Employee WHERE name LIKE '%e';

| emp_id | name    | age | salary  | hire_date  | department_id |
| ------ | ------- | --- | ------- | ---------- | ------------- |
| 1      | Alice   | 28  | 50000.0 | 2020-05-10 | 1             |
| 3      | Charlie | 30  | 60000.0 | 2021-07-20 | 2             |
| 5      | Eve     | 25  | 45000.0 | 2022-11-01 | 1             |

---

**Query #8**

    SELECT * FROM Employee WHERE name LIKE '%a%';

| emp_id | name    | age | salary  | hire_date  | department_id |
| ------ | ------- | --- | ------- | ---------- | ------------- |
| 1      | Alice   | 28  | 50000.0 | 2020-05-10 | 1             |
| 3      | Charlie | 30  | 60000.0 | 2021-07-20 | 2             |
| 4      | David   | 40  | 90000.0 | 2018-01-25 | 3             |
| 6      | Frank   | 32  | 75000.0 | 2020-09-10 | 3             |

---

**Query #9**

    SELECT * FROM Employee WHERE LENGTH(name)=5;

| emp_id | name  | age | salary  | hire_date  | department_id |
| ------ | ----- | --- | ------- | ---------- | ------------- |
| 1      | Alice | 28  | 50000.0 | 2020-05-10 | 1             |
| 4      | David | 40  | 90000.0 | 2018-01-25 | 3             |
| 6      | Frank | 32  | 75000.0 | 2020-09-10 | 3             |

---

**Query #10**

    SELECT * FROM Employee WHERE name LIKE '____e';

| emp_id | name  | age | salary  | hire_date  | department_id |
| ------ | ----- | --- | ------- | ---------- | ------------- |
| 1      | Alice | 28  | 50000.0 | 2020-05-10 | 1             |

---
  
**Query #11**

    SELECT * FROM Employee WHERE YEAR(hire_date) = 2020;

| emp_id | name  | age | salary  | hire_date  | department_id |
| ------ | ----- | --- | ------- | ---------- | ------------- |
| 1      | Alice | 28  | 50000.0 | 2020-05-10 | 1             |
| 6      | Frank | 32  | 75000.0 | 2020-09-10 | 3             |

---



**Query #12**

    SELECT * FROM Employee WHERE YEAR(hire_date) > YEAR(CURDATE()) - 1;

There are no results to be displayed.

---


**Query #13**

    SELECT * FROM Employee WHERE YEAR(hire_date) < 2019;

| emp_id | name  | age | salary  | hire_date  | department_id |
| ------ | ----- | --- | ------- | ---------- | ------------- |
| 4      | David | 40  | 90000.0 | 2018-01-25 | 3             |

---

**Query #14**

    SELECT * FROM Employee WHERE hire_date BETWEEN '2021-01-01' AND '2021-12-31';

| emp_id | name    | age | salary  | hire_date  | department_id |
| ------ | ------- | --- | ------- | ---------- | ------------- |
| 3      | Charlie | 30  | 60000.0 | 2021-07-20 | 2             |

---

**Query #15**

    SELECT * FROM Employee WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR);

There are no results to be displayed.

---

**Query #16**

    SELECT SUM(salary) FROM Employee;

| SUM(salary) |
| ----------- |
| 390000.0    |

---

**Query #17**

    SELECT AVG(salary) FROM Employee;

| AVG(salary) |
| ----------- |
| 65000.0     |

---

**Query #18**

    SELECT MIN(salary) FROM Employee;

| MIN(salary) |
| ----------- |
| 45000.0     |

---

**Query #19**

    SELECT department_id, COUNT(*) FROM Employee GROUP BY department_id;

| department_id | COUNT(*) |
| ------------- | -------- |
| 1             | 2        |
| 2             | 2        |
| 3             | 2        |

---

**Query #20**

    SELECT department_id, AVG(salary) FROM Employee GROUP BY department_id;

| department_id | AVG(salary) |
| ------------- | ----------- |
| 1             | 47500.0     |
| 2             | 65000.0     |
| 3             | 82500.0     |

---
**Query #21**

    SELECT department_id, SUM(salary) FROM Employee GROUP BY department_id;

| department_id | SUM(salary) |
| ------------- | ----------- |
| 1             | 95000.0     |
| 2             | 130000.0    |
| 3             | 165000.0    |

---

**Query #22**

    SELECT department_id, AVG(age) FROM Employee GROUP BY department_id;

| department_id | AVG(age) |
| ------------- | -------- |
| 1             | 26.5     |
| 2             | 32.5     |
| 3             | 36.0     |

---


**Query #23**

    SELECT department_id, COUNT(*) FROM Employee GROUP BY department_id;

| department_id | COUNT(*) |
| ------------- | -------- |
| 1             | 2        |
| 2             | 2        |
| 3             | 2        |

---

**Query #24**

    SELECT department_id, MAX(salary) FROM Employee GROUP BY department_id;

| department_id | MAX(salary) |
| ------------- | ----------- |
| 1             | 50000.0     |
| 2             | 70000.0     |
| 3             | 90000.0     |

---


**Query #25**

    SELECT department_id
    FROM Employee
    GROUP BY department_id
    ORDER BY AVG(salary) DESC
    LIMIT 1;

| department_id |
| ------------- |
| 3             |

---


**Query #26**

    SELECT department_id FROM Employee GROUP BY department_id HAVING COUNT(*) > 2;

There are no results to be displayed.

---

**Query #27**

    SELECT department_id FROM Employee GROUP BY department_id HAVING AVG(salary) > 55000;

| department_id |
| ------------- |
| 2             |
| 3             |

---

**Query #28**

    SELECT department_id FROM Employee GROUP BY department_id HAVING COUNT(*) > 1;

| department_id |
| ------------- |
| 1             |
| 2             |
| 3             |

---

**Query #29**

    SELECT department_id FROM Employee GROUP BY department_id HAVING AVG(salary) < 100000;

| department_id |
| ------------- |
| 1             |
| 2             |
| 3             |

---

**Query #30**

    SELECT department_id FROM Employee GROUP BY department_id HAVING MIN(salary) > 70000;

| department_id |
| ------------- |
| 3             |

---

**Query #31**

    SELECT * FROM Employee ORDER BY salary DESC;

| emp_id | name    | age | salary  | hire_date  | department_id |
| ------ | ------- | --- | ------- | ---------- | ------------- |
| 4      | David   | 40  | 90000.0 | 2018-01-25 | 3             |
| 6      | Frank   | 32  | 75000.0 | 2020-09-10 | 3             |
| 2      | Bob     | 35  | 70000.0 | 2019-03-15 | 2             |
| 3      | Charlie | 30  | 60000.0 | 2021-07-20 | 2             |
| 1      | Alice   | 28  | 50000.0 | 2020-05-10 | 1             |
| 5      | Eve     | 25  | 45000.0 | 2022-11-01 | 1             |

---

**Query #32**

    SELECT * FROM Employee ORDER BY age ASC;

| emp_id | name    | age | salary  | hire_date  | department_id |
| ------ | ------- | --- | ------- | ---------- | ------------- |
| 5      | Eve     | 25  | 45000.0 | 2022-11-01 | 1             |
| 1      | Alice   | 28  | 50000.0 | 2020-05-10 | 1             |
| 3      | Charlie | 30  | 60000.0 | 2021-07-20 | 2             |
| 6      | Frank   | 32  | 75000.0 | 2020-09-10 | 3             |
| 2      | Bob     | 35  | 70000.0 | 2019-03-15 | 2             |
| 4      | David   | 40  | 90000.0 | 2018-01-25 | 3             |

---
**Query #33**

    SELECT * FROM Employee ORDER BY hire_date DESC;

| emp_id | name    | age | salary  | hire_date  | department_id |
| ------ | ------- | --- | ------- | ---------- | ------------- |
| 5      | Eve     | 25  | 45000.0 | 2022-11-01 | 1             |
| 3      | Charlie | 30  | 60000.0 | 2021-07-20 | 2             |
| 6      | Frank   | 32  | 75000.0 | 2020-09-10 | 3             |
| 1      | Alice   | 28  | 50000.0 | 2020-05-10 | 1             |
| 2      | Bob     | 35  | 70000.0 | 2019-03-15 | 2             |
| 4      | David   | 40  | 90000.0 | 2018-01-25 | 3             |

---

**Query #34**

    SELECT * FROM Employee ORDER BY department_id, salary DESC;

| emp_id | name    | age | salary  | hire_date  | department_id |
| ------ | ------- | --- | ------- | ---------- | ------------- |
| 1      | Alice   | 28  | 50000.0 | 2020-05-10 | 1             |
| 5      | Eve     | 25  | 45000.0 | 2022-11-01 | 1             |
| 2      | Bob     | 35  | 70000.0 | 2019-03-15 | 2             |
| 3      | Charlie | 30  | 60000.0 | 2021-07-20 | 2             |
| 4      | David   | 40  | 90000.0 | 2018-01-25 | 3             |
| 6      | Frank   | 32  | 75000.0 | 2020-09-10 | 3             |


**Query #35**

    SELECT * FROM Employee ORDER BY salary DESC LIMIT 3;

| emp_id | name  | age | salary  | hire_date  | department_id |
| ------ | ----- | --- | ------- | ---------- | ------------- |
| 4      | David | 40  | 90000.0 | 2018-01-25 | 3             |
| 6      | Frank | 32  | 75000.0 | 2020-09-10 | 3             |
| 2      | Bob   | 35  | 70000.0 | 2019-03-15 | 2             |

---
**Query #36**

    SELECT e.name, d.name
    FROM Employee e
    JOIN Department d ON e.department_id = d.department_id;

| name    | name    |
| ------- | ------- |
| Alice   | HR      |
| Eve     | HR      |
| Bob     | IT      |
| Charlie | IT      |
| David   | Finance |
| Frank   | Finance |

---

**Query #37**

    SELECT e.name, p.name
    FROM Employee e
    JOIN Project p ON e.department_id = p.department_id;

| name    | name     |
| ------- | -------- |
| Alice   | ProjectA |
| Eve     | ProjectA |
| Bob     | ProjectB |
| Charlie | ProjectB |
| Bob     | ProjectC |
| Charlie | ProjectC |
| David   | ProjectD |
| Frank   | ProjectD |

---

**Query #38**

    SELECT e.name, p.name
    FROM Employee e
    LEFT JOIN Project p ON e.department_id = p.department_id;

| name    | name     |
| ------- | -------- |
| Alice   | ProjectA |
| Eve     | ProjectA |
| Bob     | ProjectB |
| Charlie | ProjectB |
| Bob     | ProjectC |
| Charlie | ProjectC |
| David   | ProjectD |
| Frank   | ProjectD |

---

**Query #39**

    SELECT e.name, d.name
    FROM Employee e
    LEFT JOIN Department d ON e.department_id = d.department_id;

| name    | name    |
| ------- | ------- |
| Alice   | HR      |
| Eve     | HR      |
| Bob     | IT      |
| Charlie | IT      |
| David   | Finance |
| Frank   | Finance |

---

**Query #40**

    SELECT d.name
    FROM Department d
    LEFT JOIN Employee e ON d.department_id = e.department_id
    WHERE e.emp_id IS NULL;

There are no results to be displayed.

---

**Query #41**

    SELECT * FROM Employee WHERE emp_id NOT IN (SELECT emp_id FROM Project);

There are no results to be displayed.

---

**Query #42**

    SELECT d.name, COUNT(e.emp_id)
    FROM Department d
    LEFT JOIN Employee e ON d.department_id = e.department_id
    GROUP BY d.name;

| name    | COUNT(e.emp_id) |
| ------- | --------------- |
| Finance | 2               |
| HR      | 2               |
| IT      | 2               |

---

**Query #43**

    SELECT d.name
    FROM Department d
    LEFT JOIN Employee e ON d.department_id = e.department_id
    GROUP BY d.name
    HAVING COUNT(e.emp_id) = 0;

There are no results to be displayed.

---

**Query #44**

    SELECT p.name
    FROM Project p
    JOIN Employee e ON p.department_id = e.department_id
    WHERE e.name = 'Alice';

| name     |
| -------- |
| ProjectA |

---

**Query #45**

    SELECT department_id
    FROM Employee
    GROUP BY department_id
    ORDER BY AVG(salary) DESC
    LIMIT 1;

| department_id |
| ------------- |
| 3             |

---

**Query #46**

    SELECT * FROM Employee WHERE salary = (SELECT MAX(salary) FROM Employee);

| emp_id | name  | age | salary  | hire_date  | department_id |
| ------ | ----- | --- | ------- | ---------- | ------------- |
| 4      | David | 40  | 90000.0 | 2018-01-25 | 3             |

---
**Query #47**

    SELECT * FROM Employee WHERE salary > (SELECT AVG(salary) FROM Employee);

| emp_id | name  | age | salary  | hire_date  | department_id |
| ------ | ----- | --- | ------- | ---------- | ------------- |
| 2      | Bob   | 35  | 70000.0 | 2019-03-15 | 2             |
| 4      | David | 40  | 90000.0 | 2018-01-25 | 3             |
| 6      | Frank | 32  | 75000.0 | 2020-09-10 | 3             |

---

**Query #48**

    SELECT * FROM Employee WHERE salary = (SELECT MAX(salary) FROM Employee);

| emp_id | name  | age | salary  | hire_date  | department_id |
| ------ | ----- | --- | ------- | ---------- | ------------- |
| 4      | David | 40  | 90000.0 | 2018-01-25 | 3             |

---

**Query #49**

    SELECT department_id
    FROM Employee
    GROUP BY department_id
    ORDER BY COUNT(*) DESC
    LIMIT 1;

| department_id |
| ------------- |
| 3             |

---

**Query #50**

    SELECT * FROM Employee e
    WHERE salary > (
      SELECT AVG(salary)
      FROM Employee
      WHERE department_id = e.department_id
    );

| emp_id | name  | age | salary  | hire_date  | department_id |
| ------ | ----- | --- | ------- | ---------- | ------------- |
| 1      | Alice | 28  | 50000.0 | 2020-05-10 | 1             |
| 2      | Bob   | 35  | 70000.0 | 2019-03-15 | 2             |
| 4      | David | 40  | 90000.0 | 2018-01-25 | 3             |

---

**Query #51**

    SELECT * FROM Employee e
    WHERE salary > (
      SELECT AVG(salary)
      FROM Employee
      WHERE department_id = e.department_id
    );

| emp_id | name  | age | salary  | hire_date  | department_id |
| ------ | ----- | --- | ------- | ---------- | ------------- |
| 1      | Alice | 28  | 50000.0 | 2020-05-10 | 1             |
| 2      | Bob   | 35  | 70000.0 | 2019-03-15 | 2             |
| 4      | David | 40  | 90000.0 | 2018-01-25 | 3             |

---
  
**Query #52**

    SELECT * FROM Employee
    WHERE age > ALL (
      SELECT age FROM Employee WHERE department_id = 1
    );

| emp_id | name    | age | salary  | hire_date  | department_id |
| ------ | ------- | --- | ------- | ---------- | ------------- |
| 2      | Bob     | 35  | 70000.0 | 2019-03-15 | 2             |
| 3      | Charlie | 30  | 60000.0 | 2021-07-20 | 2             |
| 4      | David   | 40  | 90000.0 | 2018-01-25 | 3             |
| 6      | Frank   | 32  | 75000.0 | 2020-09-10 | 3             |

---


**Query #53**

    SELECT * FROM Employee
    WHERE salary > 50000 AND department_id = 2;

| emp_id | name    | age | salary  | hire_date  | department_id |
| ------ | ------- | --- | ------- | ---------- | ------------- |
| 2      | Bob     | 35  | 70000.0 | 2019-03-15 | 2             |
| 3      | Charlie | 30  | 60000.0 | 2021-07-20 | 2             |

---

**Query #54**

    SELECT department_id
    FROM Project
    GROUP BY department_id
    HAVING COUNT(*) >= 2;

| department_id |
| ------------- |
| 2             |

---

**Query #55**

    SELECT * FROM Employee WHERE hire_date > '2020-01-01';

| emp_id | name    | age | salary  | hire_date  | department_id |
| ------ | ------- | --- | ------- | ---------- | ------------- |
| 1      | Alice   | 28  | 50000.0 | 2020-05-10 | 1             |
| 3      | Charlie | 30  | 60000.0 | 2021-07-20 | 2             |
| 5      | Eve     | 25  | 45000.0 | 2022-11-01 | 1             |
| 6      | Frank   | 32  | 75000.0 | 2020-09-10 | 3             |

---
**Query #56**

    SELECT SUM(salary) FROM Employee WHERE YEAR(hire_date) = 2020;

| SUM(salary) |
| ----------- |
| 125000.0    |

---

**Query #57**

    SELECT department_id, AVG(salary)
    FROM Employee
    GROUP BY department_id
    ORDER BY AVG(salary) DESC;

| department_id | AVG(salary) |
| ------------- | ----------- |
| 3             | 82500.0     |
| 2             | 65000.0     |
| 1             | 47500.0     |

---

**Query #58**

    SELECT department_id, AVG(salary)
    FROM Employee
    GROUP BY department_id
    HAVING AVG(salary) > 55000;

| department_id | AVG(salary) |
| ------------- | ----------- |
| 2             | 65000.0     |
| 3             | 82500.0     |

---
**Query #59**

    SELECT * FROM Employee
    WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR)
    ORDER BY hire_date;

There are no results to be displayed.

---
**Query #60**

    SELECT department_id, COUNT(*)
    FROM Employee
    GROUP BY department_id
    HAVING COUNT(*) > 2;

There are no results to be displayed.

---

**Query #61**

    SELECT * FROM Employee e
    WHERE salary > (
      SELECT AVG(salary)
      FROM Employee
      WHERE department_id = e.department_id
    );

| emp_id | name  | age | salary  | hire_date  | department_id |
| ------ | ----- | --- | ------- | ---------- | ------------- |
| 1      | Alice | 28  | 50000.0 | 2020-05-10 | 1             |
| 2      | Bob   | 35  | 70000.0 | 2019-03-15 | 2             |
| 4      | David | 40  | 90000.0 | 2018-01-25 | 3             |

---


**Query #62**

    SELECT * FROM Employee
    WHERE department_id IN (
      SELECT department_id FROM Employee GROUP BY department_id HAVING COUNT(*) = 1
    );

There are no results to be displayed.

---

**Query #63**

    SELECT department_id, COUNT(project_id)
    FROM Project
    GROUP BY department_id;

| department_id | COUNT(project_id) |
| ------------- | ----------------- |
| 1             | 1                 |
| 2             | 2                 |
| 3             | 1                 |

---

**Query #64**

    SELECT department_id, COUNT(project_id)
    FROM Project
    GROUP BY department_id;

| department_id | COUNT(project_id) |
| ------------- | ----------------- |
| 1             | 1                 |
| 2             | 2                 |
| 3             | 1                 |

---

**Query #65**

    SELECT name, salary
    FROM Employee e
    WHERE age > (
      SELECT AVG(age)
      FROM Employee
      WHERE department_id = e.department_id
    );

| name  | salary  |
| ----- | ------- |
| Alice | 50000.0 |
| Bob   | 70000.0 |
| David | 90000.0 |

---

[View on DB Fiddle](https://www.db-fiddle.com/f/cm2X7PS5GqL7ZY5v9hn65j/0)



