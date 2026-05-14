CREATE DATABASE students_db;
USE  students_db;

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
('SV003', 'Le Thi Hoa', '2004-01-20', 'Nu', NULL),
('SV004', 'Pham Minh Quan', '2003-12-10', 'Nam', 'quan@gmail.com'),
('SV005', 'Do Anh Thu', '2004-06-05', 'Nu', 'thu@gmail.com');

-- Hiển thị toàn bộ danh sách sinh viên
SELECT * 
FROM students;

-- Hiển thị mã sinh viên, họ tên, email
SELECT student_id, full_name, email
FROM students;