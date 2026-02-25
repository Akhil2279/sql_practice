


SELECT e.emp_name, d.dept_name
FROM employees e
FULL OUTER JOIN departments d
ON e.dept_id = d.dept_id;

Employees Without Department + Departments Without Employees

SELECT e.emp_name, d.dept_name
FROM employees e
FULL OUTER JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.emp_id IS NULL
OR d.dept_id IS NULL;