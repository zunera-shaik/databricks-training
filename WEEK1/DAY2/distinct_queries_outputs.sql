**Query #1**

    -- Display distinct department names
    SELECT DISTINCT department
    FROM Employees;

| department |
| ---------- |
| IT         |
| HR         |
| Finance    |
| Sales      |

---

**Query #2**

    -- Display distinct city names
    SELECT DISTINCT city
    FROM Employees;

| city      |
| --------- |
| Hyderabad |
| Chennai   |
| Bangalore |
| Pune      |
| Mumbai    |

---

**Query #3**

    -- Display distinct salary values
    SELECT DISTINCT salary
    FROM Employees;

| salary |
| ------ |
| 75000  |
| 45000  |
| 82000  |
| 67000  |
| 39000  |
| 91000  |
| 55000  |
| 48000  |
| 61000  |
| 73000  |
| 52000  |
| 88000  |
| 46000  |
| 97000  |
| 58000  |

---

**Query #4**

    -- Display distinct combinations of department and city
    SELECT DISTINCT department, city
    FROM Employees;

| department | city      |
| ---------- | --------- |
| IT         | Hyderabad |
| HR         | Chennai   |
| IT         | Bangalore |
| Finance    | Hyderabad |
| HR         | Pune      |
| Finance    | Mumbai    |
| IT         | Chennai   |
| Sales      | Bangalore |
| Sales      | Hyderabad |
| IT         | Mumbai    |
| Finance    | Bangalore |
| Sales      | Chennai   |

---

**Query #5**

    -- Display distinct experience values
    SELECT DISTINCT experience
    FROM Employees;

| experience |
| ---------- |
| 5          |
| 3          |
| 6          |
| 4          |
| 2          |
| 8          |
| 7          |
| 9          |

---
