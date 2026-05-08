**Query #1**

    -- Find employees whose names start with 'R'
    SELECT *
    FROM Employees
    WHERE emp_name LIKE 'R%';

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |

---
**Query #2**

    -- Find employees whose names end with 'a'
    SELECT *
    FROM Employees
    WHERE emp_name LIKE '%a';

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 107    | Divya    | IT         | 55000  | Chennai   | 3          |
| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

---
**Query #3**

    -- Find employees whose names contain 'v'
    SELECT *
    FROM Employees
    WHERE emp_name LIKE '%v%';

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 107    | Divya    | IT         | 55000  | Chennai   | 3          |
| 111    | Vikas    | HR         | 52000  | Pune      | 3          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

---
**Query #4**

    -- Find employees whose city starts with 'B'
    SELECT *
    FROM Employees
    WHERE city LIKE 'B%';

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |

---

**Query #5**

    -- Find employees whose department ends with 's'
    SELECT *
    FROM Employees
    WHERE department LIKE '%s';

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |
| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |
| 113    | Tarun    | Sales      | 46000  | Chennai   | 2          |

---
