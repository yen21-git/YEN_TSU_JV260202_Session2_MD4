CREATE DATABASE employees_db;
USE employees_db;

CREATE TABLE employees (
    emp_id VARCHAR(10) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    birth_year INT,
    department VARCHAR(50),
    salary DECIMAL(12,2),
    phone VARCHAR(15)
);

INSERT INTO employees (emp_id, full_name, birth_year, department, salary, phone)
VALUES
('EMP001', 'Nguyen Van Anh', 1998, 'IT', 15000000, '0901234567'),
('EMP002', 'Tran Thi Mai', 1995, 'HR', 12000000, '0912345678'),
('EMP003', 'Le Quoc Anh', 1997, 'Marketing', 18000000, NULL),
('EMP004', 'Pham Minh Tuan', 1993, 'IT', 22000000, '0934567890'),
('EMP005', 'Do Thi Lan', 1999, 'HR', 9500000, NULL),
('EMP006', 'Hoang Gia Bao', 1996, 'Finance', 25000000, '0945678901'),
('EMP007', 'Nguyen Thi Anh', 2000, 'IT', 11000000, '0956789012'),
('EMP008', 'Tran Van Dat', 1994, 'Sales', 4500000, NULL),
('EMP009', 'Le Minh Quan', 1992, 'Marketing', 7000000, '0967890123'),
('EMP010', 'Pham Thu Hang', 1998, 'HR', 14000000, '0978901234');


SELECT *
FROM employees
WHERE salary BETWEEN 10000000 AND 20000000;


SELECT *
FROM employees
WHERE department IN ('IT', 'HR');


SELECT *
FROM employees
WHERE full_name LIKE '%Anh%';


SELECT *
FROM employees
WHERE phone IS NULL;


UPDATE employees
SET salary = salary * 1.10
WHERE department = 'IT';


SELECT *
FROM employees
WHERE department = 'IT';


UPDATE employees
SET phone = '0832763180'
WHERE phone IS NULL;


SELECT *
FROM employees
WHERE phone = '0832763180';


DELETE FROM employees
WHERE salary < 5000000;


SELECT *
FROM employees;