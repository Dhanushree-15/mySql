CREATE DATABASE college;
use college;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    dob DATE,
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    department VARCHAR(50),
    credits INT,
    instructor VARCHAR(100),
    semester VARCHAR(10),
    year INT,
    mode VARCHAR(20)
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    grade CHAR(2),
    attendance_percentage DECIMAL(5,2),
    status VARCHAR(20),
    remarks TEXT
);

INSERT INTO students VALUES
(1, 'John', 'Doe', 'Male', '2000-01-01', 'john@example.com', '1234567890', 'Bangalore'),
(2, 'Jane', 'Smith', 'Female', '1999-05-10', 'jane@example.com', '9876543210', 'Mysore'),
(3, 'Raj', 'Kumar', 'Male', '2001-03-15', 'raj@example.com', '9871234560', 'Chennai'),
(4, 'Priya', 'Iyer', 'Female', '2000-07-20', 'priya@example.com', '9081726354', 'Hyderabad'),
(5, 'Amit', 'Shah', 'Male', '1998-12-10', 'amit@example.com', '9123456789', 'Mumbai'),
(6, 'Sara', 'Ali', 'Female', '1999-06-05', 'sara@example.com', '9234567890', 'Delhi'),
(7, 'Ravi', 'Verma', 'Male', '2000-09-18', 'ravi@example.com', '9345678901', 'Pune'),
(8, 'Neha', 'Singh', 'Female', '2001-02-22', 'neha@example.com', '9456789012', 'Kolkata'),
(9, 'Vikram', 'Rao', 'Male', '1999-11-11', 'vikram@example.com', '9567890123', 'Ahmedabad'),
(10, 'Divya', 'Menon', 'Female', '2000-03-03', 'divya@example.com', '9678901234', 'Bangalore'),
(11, 'Rohan', 'Joshi', 'Male', '2001-04-01', 'rohan@example.com', '9789012345', 'Mysore'),
(12, 'Kiran', 'Das', 'Female', '2002-01-25', 'kiran@example.com', '9890123456', 'Chennai'),
(13, 'Sunil', 'Patel', 'Male', '1998-08-14', 'sunil@example.com', '9901234567', 'Mumbai'),
(14, 'Meena', 'Jain', 'Female', '1999-10-30', 'meena@example.com', '9012345678', 'Delhi'),
(15, 'Nikhil', 'Reddy', 'Male', '2000-06-09', 'nikhil@example.com', '9123456780', 'Hyderabad'),
(16, 'Anjali', 'Kapoor', 'Female', '2001-07-07', 'anjali@example.com', '9234567891', 'Pune'),
(17, 'Sameer', 'Khan', 'Male', '1999-05-23', 'sameer@example.com', '9345678902', 'Kolkata'),
(18, 'Tina', 'Fernandez', 'Female', '2000-08-12', 'tina@example.com', '9456789013', 'Ahmedabad'),
(19, 'Deepak', 'Nair', 'Male', '1998-11-29', 'deepak@example.com', '9567890124', 'Chennai'),
(20, 'Arun', 'Verma', 'Male', '2000-11-29', 'arun@example.com', '7776665544', 'Mumbai');

INSERT INTO courses VALUES
(101, 'Data Structures', 'CS', 4, 'Dr. Patel', 'Fall', 2024, 'Offline'),
(102, 'Algorithms', 'CS', 4, 'Dr. Rao', 'Fall', 2024, 'Online'),
(103, 'DBMS', 'IT', 4, 'Dr. Mehta', 'Fall', 2024, 'Hybrid'),
(104, 'Computer Networks', 'CS', 3, 'Dr. Das', 'Spring', 2025, 'Offline'),
(105, 'Operating Systems', 'CS', 4, 'Dr. Naik', 'Spring', 2025, 'Online'),
(106, 'Machine Learning', 'AI', 4, 'Dr. Gupta', 'Fall', 2024, 'Offline'),
(107, 'Cloud Computing', 'IT', 3, 'Dr. Reddy', 'Fall', 2024, 'Online'),
(108, 'Cyber Security', 'IT', 3, 'Dr. Khan', 'Spring', 2025, 'Hybrid'),
(109, 'Software Engg.', 'CS', 3, 'Dr. Iyer', 'Fall', 2024, 'Offline'),
(110, 'AI & Ethics', 'AI', 2, 'Dr. Bose', 'Spring', 2025, 'Online'),
(111, 'OOP', 'CS', 4, 'Dr. Singh', 'Fall', 2024, 'Offline'),
(112, 'Statistics', 'Maths', 3, 'Dr. Verma', 'Fall', 2024, 'Hybrid'),
(113, 'Discrete Maths', 'Maths', 3, 'Dr. Rao', 'Spring', 2025, 'Online'),
(114, 'Linear Algebra', 'Maths', 3, 'Dr. Shah', 'Fall', 2024, 'Offline'),
(115, 'Physics', 'Science', 4, 'Dr. Nair', 'Fall', 2024, 'Offline'),
(116, 'Chemistry', 'Science', 4, 'Dr. George', 'Spring', 2025, 'Online'),
(117, 'Biology', 'Science', 4, 'Dr. Fernandez', 'Fall', 2024, 'Online'),
(118, 'Environmental Sci.', 'Science', 2, 'Dr. Rao', 'Spring', 2025, 'Offline'),
(119, 'Philosophy', 'Arts', 3, 'Dr. Sharma', 'Fall', 2024, 'Online'),
(120, 'History of Art', 'Arts', 3, 'Dr. Singh', 'Spring', 2025, 'Offline');

INSERT INTO enrollments VALUES
(1001, 1, 101, '2024-08-01', 'A', 95.0, 'Active', 'Excellent performance'),
(1002, 2, 102, '2024-08-02', 'B', 85.5, 'Active', 'Good participation'),
(1003, 3, 103, '2024-08-03', 'C', 75.0, 'Completed', 'Needs improvement'),
(1004, 4, 104, '2024-08-04', 'A', 92.3, 'Active', 'Excellent'),
(1005, 5, 105, '2024-08-05', 'B', 88.8, 'Completed', 'Good work'),
(1006, 6, 106, '2024-08-06', 'A', 90.0, 'Active', 'Well done'),
(1007, 7, 107, '2024-08-07', 'C', 72.5, 'Completed', 'Average'),
(1008, 8, 108, '2024-08-08', 'B', 86.7, 'Active', 'Good effort'),
(1009, 9, 109, '2024-08-09', 'A', 95.0, 'Completed', 'Excellent'),
(1010, 10, 110, '2024-08-10', 'B', 88.0, 'Active', 'Good performance'),
(1011, 11, 111, '2024-08-11', 'A', 91.2, 'Active', 'Excellent'),
(1012, 12, 112, '2024-08-12', 'B', 83.5, 'Completed', 'Good'),
(1013, 13, 113, '2024-08-13', 'C', 70.0, 'Completed', 'Below Average'),
(1014, 14, 114, '2024-08-14', 'B', 82.5, 'Active', 'Nice'),
(1015, 15, 115, '2024-08-15', 'A', 94.4, 'Completed', 'Excellent'),
(1016, 16, 116, '2024-08-16', 'C', 69.0, 'Dropped', 'Poor'),
(1017, 17, 117, '2024-08-17', 'B', 85.0, 'Completed', 'Good'),
(1018, 18, 118, '2024-08-18', 'A', 90.5, 'Active', 'Very Good'),
(1019, 19, 119, '2024-08-19', 'C', 74.0, 'Completed', 'Improvement needed'),
(1020, 20, 120, '2025-01-10', 'C', 75.0, 'Completed', 'Needs improvement');


UPDATE students SET city = 'Hyderabad' WHERE student_id = 1;
UPDATE students SET phone = '1112223333' WHERE student_id = 2;
UPDATE students SET email = 'updated3@example.com' WHERE student_id = 3;
UPDATE students SET city = 'Delhi' WHERE student_id = 4;
UPDATE students SET city = 'Chennai' WHERE student_id = 5;
UPDATE students SET phone = '2223334444' WHERE student_id = 6;
UPDATE students SET city = 'Mumbai' WHERE student_id = 7;
UPDATE students SET phone = '3334445555' WHERE student_id = 8;
UPDATE students SET city = 'Pune' WHERE student_id = 9;
UPDATE students SET phone = '4445556666' WHERE student_id = 10;

UPDATE courses SET mode = 'Hybrid' WHERE course_id = 101;
UPDATE courses SET credits = 5 WHERE course_id = 102;
UPDATE courses SET semester = 'Winter' WHERE course_id = 103;
UPDATE courses SET instructor = 'Dr. Updated' WHERE course_id = 104;
UPDATE courses SET department = 'CSE' WHERE course_id = 105;
UPDATE courses SET course_name = 'Advanced ML' WHERE course_id = 106;
UPDATE courses SET mode = 'Online' WHERE course_id = 107;
UPDATE courses SET year = 2025 WHERE course_id = 108;
UPDATE courses SET mode = 'Offline' WHERE course_id = 109;
UPDATE courses SET credits = 6 WHERE course_id = 110;

UPDATE enrollments SET grade = 'A+' WHERE enrollment_id = 1001;
UPDATE enrollments SET status = 'Dropped' WHERE enrollment_id = 1002;
UPDATE enrollments SET attendance_percentage = 80.0 WHERE enrollment_id = 1003;
UPDATE enrollments SET grade = 'B+' WHERE enrollment_id = 1004;
UPDATE enrollments SET remarks = 'Updated' WHERE enrollment_id = 1005;
UPDATE enrollments SET status = 'Active' WHERE enrollment_id = 1006;
UPDATE enrollments SET attendance_percentage = 77.7 WHERE enrollment_id = 1007;
UPDATE enrollments SET remarks = 'Updated again' WHERE enrollment_id = 1008;
UPDATE enrollments SET grade = 'B' WHERE enrollment_id = 1009;
UPDATE enrollments SET attendance_percentage = 89.9 WHERE enrollment_id = 1010;



DELETE FROM students WHERE city = 'Mysore';
DELETE FROM courses WHERE department = 'CS' AND mode = 'Offline';
DELETE FROM enrollments WHERE grade IN ('A', 'B');
DELETE FROM students WHERE city NOT IN ('Bangalore', 'Chennai');
DELETE FROM courses WHERE course_id BETWEEN 105 AND 110;
DELETE FROM enrollments WHERE enrollment_id NOT BETWEEN 1005 AND 1010;



SELECT * FROM students WHERE gender = 'Male';
SELECT * FROM courses WHERE credits = 4;
SELECT * FROM enrollments WHERE status = 'Active';



SELECT * FROM students WHERE city = 'Bangalore' AND gender = 'Male';
SELECT * FROM courses WHERE department = 'CS' OR credits = 3;
SELECT * FROM students WHERE city IN ('Bangalore', 'Mumbai');
SELECT * FROM courses WHERE course_id NOT IN (101, 102);
SELECT * FROM enrollments WHERE attendance_percentage BETWEEN 70 AND 90;
SELECT * FROM enrollments WHERE enrollment_id NOT BETWEEN 1001 AND 1010;


UPDATE students SET city = 'Delhi' WHERE city = 'Mumbai' OR city = 'Hyderabad';
UPDATE courses SET semester = 'Winter' WHERE course_id IN (115, 116, 117);
UPDATE enrollments SET status = 'Inactive' WHERE enrollment_id BETWEEN 1011 AND 1015;
UPDATE students SET phone = '9999999999' WHERE student_id NOT BETWEEN 1 AND 10;
