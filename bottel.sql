CREATE DATABASE bottel;
use bottel;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    join_date DATE
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    quantity INT,
    supplier VARCHAR(100),
    warranty_months INT,
    added_date DATE
);

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    course VARCHAR(100),
    email VARCHAR(100),
    contact_number VARCHAR(20),
    enrollment_date DATE,
    fees_paid DECIMAL(10, 2)
);


INSERT INTO employees VALUES
(1, 'John', 'Doe', 'john@example.com', '1234567890', 'HR', 50000, '2023-01-15'),
(2, 'Jane', 'Smith', 'jane@example.com', '1234567891', 'Finance', 60000, '2022-03-12'),
(3, 'Tom', 'Brown', 'tom@example.com', '1234567892', 'IT', 75000, '2021-04-11'),
(4, 'Lucy', 'Wilson', 'lucy@example.com', '1234567893', 'Marketing', 55000, '2020-02-10'),
(5, 'Mark', 'Taylor', 'mark@example.com', '1234567894', 'Sales', 48000, '2019-06-01'),
(6, 'Emma', 'Johnson', 'emma@example.com', '1234567895', 'IT', 71000, '2018-09-20'),
(7, 'Liam', 'Lee', 'liam@example.com', '1234567896', 'Finance', 64000, '2021-12-17'),
(8, 'Olivia', 'Kim', 'olivia@example.com', '1234567897', 'HR', 52000, '2023-08-09'),
(9, 'Noah', 'Park', 'noah@example.com', '1234567898', 'Sales', 47000, '2017-05-15'),
(10, 'Ava', 'Choi', 'ava@example.com', '1234567899', 'Marketing', 59000, '2016-11-11'),
(11, 'Ethan', 'Hall', 'ethan@example.com', '1234567800', 'HR', 51000, '2020-03-03'),
(12, 'Sophia', 'Allen', 'sophia@example.com', '1234567801', 'IT', 77000, '2022-01-23'),
(13, 'Mason', 'Young', 'mason@example.com', '1234567802', 'Finance', 63000, '2015-07-14'),
(14, 'Isabella', 'King', 'isabella@example.com', '1234567803', 'Sales', 46000, '2019-04-25'),
(15, 'Logan', 'Scott', 'logan@example.com', '1234567804', 'Marketing', 58000, '2018-10-30'),
(16, 'Mia', 'Green', 'mia@example.com', '1234567805', 'IT', 72000, '2017-06-22'),
(17, 'Lucas', 'Baker', 'lucas@example.com', '1234567806', 'HR', 53000, '2016-12-18'),
(18, 'Charlotte', 'Nelson', 'charlotte@example.com', '1234567807', 'Finance', 65000, '2015-03-27'),
(19, 'James', 'Hill', 'james@example.com', '1234567808', 'Sales', 49000, '2021-01-01'),
(20, 'Amelia', 'Adams', 'amelia@example.com', '1234567809', 'Marketing', 60000, '2020-07-07');

INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 1200.00, 10, 'Dell Inc.', 24, '2024-01-01'),
(2, 'Smartphone', 'Electronics', 800.00, 20, 'Samsung', 12, '2024-01-02'),
(3, 'Refrigerator', 'Appliances', 1500.00, 5, 'LG', 36, '2024-01-03'),
(4, 'Microwave', 'Appliances', 300.00, 15, 'Whirlpool', 24, '2024-01-04'),
(5, 'Desk Chair', 'Furniture', 200.00, 30, 'Ikea', 12, '2024-01-05'),
(6, 'Monitor', 'Electronics', 250.00, 25, 'HP', 18, '2024-01-06'),
(7, 'Headphones', 'Electronics', 150.00, 40, 'Sony', 6, '2024-01-07'),
(8, 'Keyboard', 'Electronics', 100.00, 50, 'Logitech', 12, '2024-01-08'),
(9, 'Mouse', 'Electronics', 60.00, 60, 'Logitech', 12, '2024-01-09'),
(10, 'Tablet', 'Electronics', 400.00, 12, 'Apple', 12, '2024-01-10'),
(11, 'Sofa', 'Furniture', 900.00, 3, 'Urban Ladder', 24, '2024-01-11'),
(12, 'Bed Frame', 'Furniture', 1100.00, 4, 'Wakefit', 36, '2024-01-12'),
(13, 'Bookshelf', 'Furniture', 300.00, 10, 'Ikea', 12, '2024-01-13'),
(14, 'Television', 'Electronics', 1300.00, 7, 'Sony', 24, '2024-01-14'),
(15, 'Blender', 'Appliances', 120.00, 25, 'Philips', 18, '2024-01-15'),
(16, 'Washing Machine', 'Appliances', 950.00, 6, 'Bosch', 36, '2024-01-16'),
(17, 'Dining Table', 'Furniture', 750.00, 2, 'Home Centre', 24, '2024-01-17'),
(18, 'Printer', 'Electronics', 180.00, 18, 'Canon', 12, '2024-01-18'),
(19, 'Air Conditioner', 'Appliances', 1700.00, 5, 'Voltas', 36, '2024-01-19'),
(20, 'Ceiling Fan', 'Appliances', 80.00, 50, 'Usha', 24, '2024-01-20');

INSERT INTO students VALUES
(1, 'Alice', 'Wright', 'MCA', 'alice@example.com', '9876543210', '2023-07-01', 45000.00),
(2, 'Bob', 'Carter', 'MBA', 'bob@example.com', '9876543211', '2023-07-02', 47000.00),
(3, 'Clara', 'Edwards', 'BCA', 'clara@example.com', '9876543212', '2023-07-03', 40000.00),
(4, 'David', 'Stone', 'MCA', 'david@example.com', '9876543213', '2023-07-04', 46000.00),
(5, 'Ella', 'Mitchell', 'MBA', 'ella@example.com', '9876543214', '2023-07-05', 48000.00),
(6, 'Frank', 'Hayes', 'B.Com', 'frank@example.com', '9876543215', '2023-07-06', 39000.00),
(7, 'Grace', 'Sanders', 'B.Sc', 'grace@example.com', '9876543216', '2023-07-07', 37000.00),
(8, 'Hank', 'Long', 'MCA', 'hank@example.com', '9876543217', '2023-07-08', 45500.00),
(9, 'Ivy', 'Foster', 'BCA', 'ivy@example.com', '9876543218', '2023-07-09', 40500.00),
(10, 'Jake', 'Simmons', 'MBA', 'jake@example.com', '9876543219', '2023-07-10', 49000.00),
(11, 'Kara', 'Barnes', 'BBA', 'kara@example.com', '9876543220', '2023-07-11', 41000.00),
(12, 'Leo', 'Reed', 'B.Com', 'leo@example.com', '9876543221', '2023-07-12', 39500.00),
(13, 'Mona', 'Curtis', 'MCA', 'mona@example.com', '9876543222', '2023-07-13', 47000.00),
(14, 'Nate', 'Perry', 'BCA', 'nate@example.com', '9876543223', '2023-07-14', 42000.00),
(15, 'Olga', 'Porter', 'MBA', 'olga@example.com', '9876543224', '2023-07-15', 47500.00),
(16, 'Paul', 'Hughes', 'B.Sc', 'paul@example.com', '9876543225', '2023-07-16', 38500.00),
(17, 'Quinn', 'Stevens', 'BBA', 'quinn@example.com', '9876543226', '2023-07-17', 40000.00),
(18, 'Rose', 'Murray', 'MCA', 'rose@example.com', '9876543227', '2023-07-18', 46500.00),
(19, 'Sam', 'Douglas', 'B.Com', 'sam@example.com', '9876543228', '2023-07-19', 39000.00),
(20, 'Tina', 'Wells', 'BCA', 'tina@example.com', '9876543229', '2023-07-20', 43000.00);

UPDATE employees SET salary = salary + 5000 WHERE emp_id <= 10;
UPDATE products SET quantity = quantity - 5 WHERE product_id BETWEEN 1 AND 10;
UPDATE students SET fees_paid = fees_paid + 2000 WHERE student_id IN (1,2,3,4,5,6,7,8,9,10);

DELETE FROM employees WHERE department = 'HR';
DELETE FROM products WHERE category = 'Electronics' AND price > 1000;
DELETE FROM students WHERE course = 'B.Tech' OR course = 'MBA';
DELETE FROM employees WHERE emp_id IN (11,12,13);
DELETE FROM students WHERE student_id NOT IN (1,2,3);
DELETE FROM products WHERE price BETWEEN 100 AND 200;
DELETE FROM products WHERE quantity NOT BETWEEN 10 AND 50;


SELECT * FROM employees WHERE salary > 60000;

SELECT * FROM students WHERE course = 'MCA' AND fees_paid > 30000;
SELECT * FROM employees WHERE department = 'IT' OR department = 'Finance';
SELECT * FROM products WHERE product_id IN (5,10,15);
SELECT * FROM students WHERE student_id NOT IN (10,20);
SELECT * FROM products WHERE price BETWEEN 300 AND 800;
SELECT * FROM products WHERE quantity NOT BETWEEN 10 AND 100;

UPDATE employees SET salary = salary + 1000 WHERE department = 'Sales' AND salary BETWEEN 40000 AND 50000;
UPDATE products SET price = price * 0.9 WHERE product_id IN (1,2,3);
UPDATE students SET fees_paid = fees_paid - 1000 WHERE student_id NOT IN (15,16,17);
UPDATE employees SET salary = salary + 2000 WHERE emp_id NOT BETWEEN 5 AND 15;
UPDATE products SET quantity = quantity + 10 WHERE category = 'Groceries' OR category = 'Clothing';
