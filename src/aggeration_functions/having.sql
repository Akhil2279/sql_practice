
SELECT dept_id, SUM(salary) AS total_salary
FROM employees
GROUP BY dept_id;

SELECT dept_id, COUNT(emp_id) AS total_employees
FROM employees
GROUP BY dept_id
HAVING COUNT(emp_id) > 2;

SELECT dept_id, SUM(salary) AS total_salary
FROM employees
GROUP BY dept_id
HAVING SUM(salary) > 150000;

