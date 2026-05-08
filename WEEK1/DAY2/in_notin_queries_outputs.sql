**Query #1**

    -- Find employees working in ('Hyderabad', 'Mumbai')
    SELECT *
    FROM Employees
    WHERE city IN ('Hyderabad', 'Mumbai');

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |
| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |

---
**Query #2**

    -- Find employees whose department IN ('IT', 'Finance')
    SELECT *
    FROM Employees
    WHERE department IN ('IT', 'Finance');

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 107    | Divya    | IT         | 55000  | Chennai   | 3          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |
| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |

---
**Query #1**

    -- Find employees whose city NOT IN ('Chennai', 'Pune')
    SELECT *
    FROM Employees
    WHERE city NOT IN ('Chennai', 'Pune');

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |
| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |
| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |

---
**Query #4**

    -- Find employees whose salary IN (45000, 75000, 91000)
    SELECT *
    FROM Employees
    WHERE salary IN (45000, 75000, 91000);

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 102    | Anjali   | HR         | 45000  | Chennai   | 3          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |

---
**Query #5**

    -- Find employees whose department NOT IN ('HR', 'Sales')
    SELECT *
    FROM Employees
    WHERE department NOT IN ('HR', 'Sales');

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 107    | Divya    | IT         | 55000  | Chennai   | 3          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |
| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |

---

