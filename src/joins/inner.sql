
SELECT e.emp_name, e.salary, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

Get Employee Name and Department Name

SELECT e.emp_name, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

Get Employees Working in Bangalore Location

SELECT e.emp_name, d.location
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.location = 'Bangalore';

Get Employees With Salary > 60000 Along With Department

SELECT e.emp_name, e.salary, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.salary > 60000;

Count Employees Per Department
SELECT d.dept_name, COUNT(e.emp_id) AS total_employees
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;
