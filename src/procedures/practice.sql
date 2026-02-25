DELIMITER //

CREATE PROCEDURE GetEmployeesByDepartment(IN dept_name VARCHAR(50))
BEGIN
    SELECT * 
    FROM employees
    WHERE department = dept_name;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE GetEmployeeById(IN emp_id INT)
BEGIN
    SELECT *
    FROM employees
    WHERE id = emp_id;
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE TotalSalaryByDept(IN dept_name VARCHAR(50))
BEGIN
    SELECT SUM(salary) AS total_salary
    FROM employees
    WHERE department = dept_name;
END //

DELIMITER ;

