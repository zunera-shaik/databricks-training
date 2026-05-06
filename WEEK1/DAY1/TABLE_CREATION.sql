-- ==============================
-- TABLE CREATION
-- ==============================

CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    salary DECIMAL(10,2),
    hire_date DATE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

-- ==============================
-- INSERT DATA
-- ==============================

INSERT INTO Department VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

INSERT INTO Employee VALUES
(1, 'Alice', 28, 50000, '2020-05-10', 1),
(2, 'Bob', 35, 70000, '2019-03-15', 2),
(3, 'Charlie', 30, 60000, '2021-07-20', 2),
(4, 'David', 40, 90000, '2018-01-25', 3),
(5, 'Eve', 25, 45000, '2022-11-01', 1),
(6, 'Frank', 32, 75000, '2020-09-10', 3);

INSERT INTO Project VALUES
(1, 'ProjectA', 1),
(2, 'ProjectB', 2),
(3, 'ProjectC', 2),
(4, 'ProjectD', 3);
