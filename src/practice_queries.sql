DDL Operations

-- Create Departments Table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

-- Create Employees Table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    salary DECIMAL(10,2),
    dept_id INT,
    manager_id INT,
    hire_date DATE,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Add Column
ALTER TABLE employees ADD email VARCHAR(100);

-- Rename Column
ALTER TABLE employees RENAME COLUMN emp_name TO employee_name;

-- Drop Column
ALTER TABLE employees DROP COLUMN email;

DML Operations

-- Insert Data
INSERT INTO departments VALUES
(1, 'HR', 'Bangalore'),
(2, 'IT', 'Hyderabad'),
(3, 'Finance', 'Mumbai'),
(4, 'Marketing', 'Delhi');

INSERT INTO employees VALUES
(101, 'Akhil', 60000, 2, NULL, '2022-01-10'),
(102, 'Ravi', 50000, 1, 101, '2021-03-15'),
(103, 'Sneha', 75000, 2, 101, '2020-07-20'),
(104, 'Kiran', 45000, 3, 102, '2023-05-01'),
(105, 'Meena', 80000, NULL, 101, '2019-11-25');

-- Update
UPDATE employees
SET salary = salary + 5000
WHERE dept_id = 2;

-- Delete
DELETE FROM employees
WHERE salary < 40000;

DCL Operations

CREATE USER 'intern' IDENTIFIED BY 'intern123';

GRANT SELECT, INSERT ON employees TO 'intern';

REVOKE INSERT ON employees FROM 'intern';

WHERE Clause Examples

-- Employees earning more than 60000
SELECT * FROM employees
WHERE salary > 60000;

-- Employees hired after 2021
SELECT * FROM employees
WHERE hire_date > '2021-01-01';

-- Employees in IT department
SELECT * FROM employees
WHERE dept_id = 2;

GROUP BY + HAVING

-- Total salary department-wise
SELECT dept_id, SUM(salary) AS total_salary
FROM employees
GROUP BY dept_id;

-- Departments having more than 1 employee
SELECT dept_id, COUNT(emp_id) AS total_employees
FROM employees
GROUP BY dept_id
HAVING COUNT(emp_id) > 1;

-- Departments where average salary > 60000
SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id
HAVING AVG(salary) > 60000;

Subqueries

-- Second highest salary
SELECT MAX(salary)
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);

-- Employees earning above average salary
SELECT employee_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);