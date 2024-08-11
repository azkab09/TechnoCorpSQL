create database techcorp;

create table products (
product_id int,
product_name varchar(100),
category varchar(100),
price int,
stock_quantity int, 
discount int
);

select * from products;

INSERT INTO products (product_id, product_name, category, price, stock_quantity, discount)
VALUES
(1, 'Laptop Pro 15', 'Laptop', 1500.00, 100, 0),
(2, 'Smartphone X', 'Smartphone', 800.00, 200, 0),
(3, 'Wireless Mouse', 'Accessories', 25.00, 500, 0),
(4, 'USB-C Charger', 'Accessories', 20.00, 300, 0),
(5, 'Gaming Laptop', 'Laptop', 2000.00, 50, 10),
(6, 'Budget Smartphone', 'Smartphone', 300.00, 150, 5),
(7, 'Noise Cancelling Headphones', 'Accessories', 150.00, 120, 15),
(8, 'Wireless Earphones', 'Accessories', 100.00, 100, 10);

create table customers (
customer_id int,
first_name varchar(100),
last_name varchar(100),
email varchar(100),
phone varchar(100),
address varchar(100)
);

drop table public.customers;

select * from customers;

INSERT INTO customers (customer_id, first_name, last_name, email, phone, address)
VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Elm Street'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '123-456-7891', '456 Oak Street'),
(3, 'Emily', 'Johnson', 'emily.johnson@example.com', '123-456-7892', '789 Pine Street'),
(4, 'Michael', 'Brown', 'michael.brown@example.com', '123-456-7893', '101 Maple Street'),
(5, 'Sarah', 'Davis', 'sarah.davis@example.com', '123-456-7894', '202 Birch Street');

create table orders (
customer_id int,
order_date date,
total_amount int
);

select * from orders;

INSERT INTO Orders (customer_id, order_date, total_amount)
VALUES
(1, '2023-07-01', 1525.00),
(2, '2023-07-02', 820.00),
(3, '2023-07-03', 25.00),
(1, '2023-07-04', 2010.00),
(4, '2023-07-05', 300.00),
(2, '2023-07-06', 315.00),
(5, '2023-07-07', 165.00);

create table orderdetails (
order_id int,
product_id int,
quantity int,
unit_price int 
);

select * from orderdetails;

INSERT INTO OrderDetails (order_id, product_id, quantity, unit_price)
VALUES
(1, 1, 1, 1500.00),
(1, 3, 1, 25.00),
(2, 2, 1, 800.00),
(2, 4, 1, 20.00),
(3, 3, 1, 25.00),
(4, 5, 1, 2000.00),
(4, 6, 1, 10.00),
(5, 6, 1, 300.00),
(6, 6, 1, 300.00),
(7, 7, 1, 150.00),
(7, 4, 1, 15.00);

create table employees (
employee_id int,
first_name varchar(100),
last_name varchar(100),
email varchar(100),
phone varchar(100),
hire_date date, 
departement varchar(100)
);



INSERT INTO Employees (employee_id, first_name, last_name, email, phone, hire_date, departement)
VALUES
(1, 'Alice', 'Williams', 'alice.williams@example.com', '123-456-7895', '2022-01-15', 'Support'),
(2, 'Bob', 'Miller', 'bob.miller@example.com', '123-456-7896', '2022-02-20', 'Sales'),
(3, 'Charlie', 'Wilson', 'charlie.wilson@example.com', '123-456-7897', '2022-03-25', 'Development'),
(4, 'David', 'Moore', 'david.moore@example.com', '123-456-7898', '2022-04-30', 'Support'),
(5, 'Eve', 'Taylor', 'eve.taylor@example.com', '123-456-7899', '2022-05-10', 'Sales');

create table supporttickets (
customer_id int, 
employee_id int,
issue varchar(250),
status varchar(100),
created_at timestamp,
resolved_at timestamp
);

select * from supporttickets;

INSERT INTO SupportTickets (customer_id, employee_id, issue, status, created_at, resolved_at)
VALUES
(1, 1, 'Cannot connect to Wi-Fi', 'resolved', '2023-07-01 10:00:00', '2023-07-01 11:00:00'),
(2, 1, 'Screen flickering', 'resolved', '2023-07-02 12:00:00', '2023-07-02 13:00:00'),
(3, 1, 'Battery drains quickly', 'open', '2023-07-03 14:00:00', NULL),
(4, 2, 'Late delivery', 'resolved', '2023-07-04 15:00:00', '2023-07-04 16:00:00'),
(5, 2, 'Damaged product', 'open', '2023-07-05 17:00:00', NULL),
(1, 3, 'Software issue', 'resolved', '2023-07-06 18:00:00', '2023-07-06 19:00:00'),
(2, 3, 'Bluetooth connectivity issue', 'resolved', '2023-07-07 20:00:00', '2023-07-07 21:00:00'),
(5, 4, 'Account issue', 'open', '2023-07-08 22:00:00', NULL),
(3, 4, 'Payment issue', 'resolved', '2023-07-09 23:00:00', '2023-07-09 23:30:00'),
(4, 5, 'Physical damage', 'open', '2023-07-10 08:00:00', NULL),
(4, 1, 'Laptop blue screen', 'resolved', '2024-01-05 10:00:00', '2024-02-05 12:00:00'),
(5, 1, 'Laptop lagging', 'resolved', '2024-01-06 10:00:00', '2024-01-25 12:00:00'),
(3, 1, 'Some part of laptop broken', 'resolved', '2024-02-05 10:00:00', '2024-03-05 12:00:00');

