CREATE DATABASE practice;
USE practice;
CREATE table customers(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(50),
city VARCHAR(30));

CREATE table orders(
order_id INT PRIMARY KEY,
customer_id INT,
order_amount DECIMAL(20),
order_date DATE,
product_category VARCHAR(30),
FOREIGN KEY(customer_id)references customers(customer_id)
);

INSERT INTO customers VALUES
(1,'Bikash','Vizag'),
(2,'Ayush','Koraput'),
(3,'Santosh','Munjeru'),
(4,'Rishab','Andhra'),
(5,'Rudra','Semiliguda');

INSERT INTO orders VALUES
(101,1,2000,'2025-01-10','Electronics'),
(102,1,3000,'2025-02-15','Electronics'),
(103,1,2500,'2025-03-12','Books'),
(104,1,1500,'2025-04-01','Fashion'),
(105,1,2200,'2025-05-06','Electronics'),
(106,1,1800,'2025-06-08','Books');
