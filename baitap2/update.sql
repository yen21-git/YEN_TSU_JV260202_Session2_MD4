CREATE DATABASE update_db;
USE  update_db;

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
-- Cập nhật email cho sinh viên chưa có email
UPDATE students
SET email = 'hoa@gmail.com'
WHERE student_id = 'SV003';

-- Kiểm tra lại dữ liệu sau khi cập nhật email
SELECT * 
FROM students;

-- Cập nhật giới tính cho sinh viên có mã SV005
UPDATE students
SET gender = 'Nu'
WHERE student_id = 'SV005';

-- Kiểm tra lại dữ liệu sau khi cập nhật giới tính
SELECT * 
FROM students;

-- Xóa sinh viên có mã SV003
DELETE FROM students
WHERE student_id = 'SV003';

-- Kiểm tra lại dữ liệu sau khi xóa
SELECT * 
FROM students;