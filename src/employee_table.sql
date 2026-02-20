
CREATE TABLE employee (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(100) NOT NULL,
    salary DECIMAL(10,2),
    department VARCHAR(50),
    hire_date DATE
);
