use ecommerceapp
-- customers table
CREATE TABLE customers (
    customer_id INT identity(1,1) PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(100)
)

-- products table
CREATE TABLE products (
    product_id INT identity(1,1) PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10, 2),
    description TEXT,
    stockQuantity INT
)

-- cart table
CREATE TABLE cart (
    cart_id INT identity(1,1)  PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
)

-- orders table
CREATE TABLE orders (
    order_id INT identity(1,1) PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_price DECIMAL(10, 2),
    shipping_address TEXT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
)

-- order_items table
CREATE TABLE order_items (
    order_item_id INT identity(1,1)  PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
)

-- Insert data into customers table
INSERT INTO customers 
VALUES 
    ( 'rani', 'rhah@gmail.com', 'puj'),
    ('vinay', 'hah@gmail.com', 'juh'),
    ('rithik', 'khah@gmail.com', 'wuh')

-- Inserting sample data into products table
INSERT INTO products 
VALUES 
    ( 'western dress', 40, 'brand new summer collection', 100),
    ( 'laptop', 100, 'new laptop with the new gui', 50),
    ( 'eyeshadow',50, 'for the boss lady in you', 75)

-- Inserting sample data into cart table
select * from products
select * from customers
select* from cart
INSERT INTO cart 
VALUES 
    (1,1, 2),
    (2,2,1),
    (3,3,3)

-- Inserting sample data into orders table
INSERT INTO orders 
VALUES 
    ( 1, '2024-04-30', $100, '1st street noida'),
    (  2, '2024-05-01', $1000, 'jaypur street, anna nagar'),
    (  3, '2024-04-30', $1500, '5th street, tnagar')

-- Inserting sample data into order_items table
INSERT INTO order_items 
VALUES 
    ( 1, 1, 2),
    ( 1, 2, 5),
    ( 2, 1, 3)

select * from order_items