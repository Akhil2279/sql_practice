
CREATE DATABASE company_db;

USE company_db;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL,
    location VARCHAR(50)
);


CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    salary DECIMAL(10,2),
    dept_id INT,
    hire_date DATE,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);


ALTER TABLE employees
ADD email VARCHAR(100);


DROP TABLE employees;