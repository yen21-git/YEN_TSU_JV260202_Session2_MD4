CREATE DATABASE truyvan_db;
USE  truyvan_db;

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
-- Hiển thị sinh viên có năm sinh từ 2003 đến 2005
SELECT student_id, full_name, birth_date
FROM students
WHERE YEAR(birth_date) BETWEEN 2003 AND 2005;

-- Hiển thị sinh viên có giới tính là Nam hoặc Nữ
SELECT student_id, full_name, birth_date
FROM students
WHERE gender IN ('Nam', 'Nu');

-- Hiển thị sinh viên có mã SV001, SV004, SV005
SELECT student_id, full_name, birth_date
FROM students
WHERE student_id IN ('SV001', 'SV004', 'SV005');

