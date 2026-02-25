
INSERT INTO departments VALUES
(1, 'HR', 'Bangalore'),
(2, 'IT', 'Hyderabad'),
(3, 'Finance', 'Mumbai');

INSERT INTO employees VALUES
(101, 'Akhil', 50000, 2, '2023-01-10', 'akhil@gmail.com'),
(102, 'Ravi', 60000, 1, '2022-03-15', 'ravi@gmail.com'),
(103, 'Sneha', 75000, 2, '2021-07-20', 'sneha@gmail.com'),
(104, 'Meena', 45000, 3, '2023-05-01', 'meena@gmail.com'),
(105, 'Kiran', 80000, 2, '2020-11-25', 'kiran@gmail.com');


UPDATE employees
SET salary = 70000
WHERE emp_id = 101;

DELETE FROM employees
WHERE emp_id = 104;

SELECT * FROM employees;

SELECT emp_name, salary
FROM employees
WHERE salary > 60000;

