
SELECT e.emp_name, d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;


Show All Departments Even If No Employees

SELECT e.emp_name, d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;

Find Departments With No Employees

SELECT d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.emp_id IS NULL;