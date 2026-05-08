**Query #1**

    -- Find employees with salary greater than 70000
    SELECT *
    FROM Employees
    WHERE salary > 70000;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

--

**Query #2**

    -- Find employees working in Hyderabad
    SELECT *
    FROM Employees
    WHERE city = 'Hyderabad';

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

---
**Query #3**

    -- Find employees with experience less than 4 years
    SELECT *
    FROM Employees
    WHERE experience < 4;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 102    | Anjali   | HR         | 45000  | Chennai   | 3          |
| 105    | Aman     | HR         | 39000  | Pune      | 2          |
| 107    | Divya    | IT         | 55000  | Chennai   | 3          |
| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |
| 111    | Vikas    | HR         | 52000  | Pune      | 3          |
| 113    | Tarun    | Sales      | 46000  | Chennai   | 2          |

---
**Query #4**

    -- Find employees from Finance department
    SELECT *
    FROM Employees
    WHERE department = 'Finance';

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |
| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |

---
**Query #5**

    -- Find employees whose salary is equal to 52000
    SELECT *
    FROM Employees
    WHERE salary = 52000;

| emp_id | emp_name | department | salary | city | experience |
| ------ | -------- | ---------- | ------ | ---- | ---------- |
| 111    | Vikas    | HR         | 52000  | Pune | 3          |

---
