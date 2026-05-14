CREATE DATABASE truyvannc_db;
USE  truyvannc_db;

CREATE TABLE students (
    student_id VARCHAR(10) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    birth_date DATE,
    gender VARCHAR(10),
    email VARCHAR(100)
);

-- Thêm dữ liệu sinh viên
INSERT INTO students (student_id, full_name, birth_date, gender, email)
VALUES
('SV001', 'Tran Thi Yen', '2004-04-26', 'Nu', 'yen@gmail.com'),
('SV002', 'Nguyen Van Nam', '2003-08-15', 'Nam', 'nam@gmail.com'),
('SV003', 'Le Thi Hoa', '2006-01-20', 'Nu', NULL),
('SV004', 'Pham Minh Quan', '2005-12-10', 'Nam', 'quan@gmail.com'),
('SV005', 'Do Anh Thu', '2007-06-05', 'Nu', 'thu@gmail.com');
-- Hiển thị sinh viên chưa có email
SELECT *
FROM students
WHERE email IS NULL;

-- Hiển thị sinh viên đã có email
SELECT *
FROM students
WHERE email IS NOT NULL;

-- Hiển thị sinh viên có họ tên bắt đầu bằng "Ng"
SELECT *
FROM students
WHERE full_name LIKE 'Ng%';

-- Hiển thị sinh viên không phải giới tính Nam
SELECT *
FROM students
WHERE gender <> 'Nam';