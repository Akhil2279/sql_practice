
SELECT e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

Show All Employees Even If They Don’t Belong to Any Department

SELECT e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

Find Employees Without Department

SELECT e.emp_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;

Count Employees in Each Department Including Empty Departments

SELECT d.dept_name, COUNT(e.emp_id) AS total_employees
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;