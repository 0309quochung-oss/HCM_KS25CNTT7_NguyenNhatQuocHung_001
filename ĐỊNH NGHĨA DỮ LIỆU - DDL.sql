CREATE DATABASE SalesManagement;
USE SalesManagement;

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    brand VARCHAR(100),
    price DECIMAL(10,2),
    stock INT
);

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    address VARCHAR(255)
);

CREATE TABLE `Order` (
    order_id INT PRIMARY KEY,
    order_date DATE,
    total_money DECIMAL(10,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Order_Detail (
    order_id INT,
    product_id INT,
    quantity INT,
    price_at_time DECIMAL(10,2),
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES `Order`(order_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

ALTER TABLE `Order`
ADD note TEXT;

ALTER TABLE Product
CHANGE brand nha_san_xuat VARCHAR(100);

DROP TABLE Order_Detail;
DROP TABLE `Order`;
