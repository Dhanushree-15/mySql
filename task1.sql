CREATE DATABASE library;
use library;

CREATE TABLE Employee (
    emp_id INT,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

CREATE TABLE Product (
    product_id INT,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT,
    supplier VARCHAR(50),
    description TEXT,
    expiry_date DATE,
    manufacture_date DATE,
    rating FLOAT
);

CREATE TABLE Student1 (
    student_id INT,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone VARCHAR(15),
    course VARCHAR(50),
    batch_year INT,
    address VARCHAR(100),
    gpa FLOAT
);

CREATE TABLE Orders (
    order_id INT,
    customer_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    order_date DATE,
    delivery_date DATE,
    status VARCHAR(20),
    payment_mode VARCHAR(20),
    discount DECIMAL(5,2)
);

CREATE TABLE Book (
    book_id INT,
    title VARCHAR(100),
    author VARCHAR(100),
    publisher VARCHAR(50),
    genre VARCHAR(30),
    price DECIMAL(10,2),
    stock INT,
    isbn VARCHAR(20),
    publish_date DATE,
    language VARCHAR(20)
);
ALTER TABLE Employee
ADD blood_group VARCHAR(5),
ADD nationality VARCHAR(30),
ADD marital_status VARCHAR(15),
ADD experience INT;

ALTER TABLE Product
ADD origin_country VARCHAR(30),
ADD warranty_months INT,
ADD brand VARCHAR(50),
ADD is_available BOOLEAN;

ALTER TABLE Student1
ADD father_name VARCHAR(50),
ADD mother_name VARCHAR(50),
ADD nationality VARCHAR(30),
ADD scholarship_status BOOLEAN;

ALTER TABLE Orders
ADD shipping_method VARCHAR(30),
ADD tracking_id VARCHAR(50),
ADD is_gift BOOLEAN,
ADD courier_name VARCHAR(50);

ALTER TABLE Book
ADD edition VARCHAR(20),
ADD pages INT,
ADD weight FLOAT,
ADD shelf_location VARCHAR(50);

ALTER TABLE Employee DROP COLUMN blood_group;
ALTER TABLE Product DROP COLUMN origin_country;
ALTER TABLE Student1 DROP COLUMN scholarship_status;
ALTER TABLE Orders DROP COLUMN courier_name;
ALTER TABLE Book DROP COLUMN shelf_location;

ALTER TABLE Employee RENAME COLUMN name TO emp_name;
ALTER TABLE Employee RENAME COLUMN age TO emp_age;
ALTER TABLE Employee RENAME COLUMN gender TO emp_gender;
ALTER TABLE Employee RENAME COLUMN email TO emp_email;

ALTER TABLE Product RENAME COLUMN name TO product_name;
ALTER TABLE Product RENAME COLUMN category TO product_category;
ALTER TABLE Product RENAME COLUMN price TO product_price;
ALTER TABLE Product RENAME COLUMN supplier TO supplier_name;

ALTER TABLE Student1 RENAME COLUMN name TO student_name;
ALTER TABLE Student1 RENAME COLUMN age TO student_age;
ALTER TABLE Student1 RENAME COLUMN gender TO student_gender;
ALTER TABLE Student1 RENAME COLUMN email TO student_email;

ALTER TABLE Orders RENAME COLUMN price TO unit_price;
ALTER TABLE Orders RENAME COLUMN status TO order_status;
ALTER TABLE Orders RENAME COLUMN payment_mode TO payment_type;
ALTER TABLE Orders RENAME COLUMN delivery_date TO expected_delivery;

ALTER TABLE Book RENAME COLUMN title TO book_title;
ALTER TABLE Book RENAME COLUMN author TO book_author;
ALTER TABLE Book RENAME COLUMN genre TO book_genre;
ALTER TABLE Book RENAME COLUMN publisher TO published_by;


ALTER TABLE Employee
MODIFY emp_name VARCHAR(100),
MODIFY emp_email VARCHAR(150),
MODIFY salary DECIMAL(12,2),
MODIFY department VARCHAR(100);


ALTER TABLE Product
MODIFY product_name VARCHAR(150),
MODIFY product_price DECIMAL(12,2),
MODIFY description VARCHAR(500),
MODIFY warranty_months VARCHAR(50);


ALTER TABLE Student1
MODIFY student_name VARCHAR(100),
MODIFY gpa DECIMAL(3,2),
MODIFY course VARCHAR(100),
MODIFY nationality VARCHAR(50);

ALTER TABLE Orders
MODIFY unit_price DECIMAL(12,2),
MODIFY order_status VARCHAR(30),
MODIFY is_gift VARCHAR(60),
MODIFY shipping_method VARCHAR(50);

ALTER TABLE Book
MODIFY book_title VARCHAR(150),
MODIFY book_author VARCHAR(150),
MODIFY published_by VARCHAR(100),
MODIFY isbn VARCHAR(30);



