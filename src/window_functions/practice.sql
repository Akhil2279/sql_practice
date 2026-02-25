
SELECT *,
       ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM employees;

SELECT *,
       RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rnk
FROM employees;

SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS rn
    FROM employees
) t
WHERE rn = 2;


SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS rn
    FROM employees
) t
WHERE rn = 2;


SELECT *,
       SUM(salary) OVER (ORDER BY joining_date) AS running_total
FROM employees;


SELECT *,
       salary - AVG(salary) OVER (PARTITION BY department) AS salary_diff
FROM employees;


SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS rn
    FROM employees
) t
WHERE rn <= 3;

