
CREATE VIEW IT_Employees AS
SELECT *
FROM employees
WHERE department = 'IT';

CREATE VIEW Dept_Total_Salary AS
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

CREATE VIEW High_Salary_Employees AS
SELECT *
FROM employees
WHERE salary > 60000;

