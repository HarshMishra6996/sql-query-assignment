-- Create users table
CREATE TABLE users (
    user_id INT,
    name TEXT
);

-- Create orders table
CREATE TABLE orders (
    order_id INT,
    user_id INT,
    amount INT
);

-- Insert data
INSERT INTO users VALUES (1,'Alice');
INSERT INTO users VALUES (2,'Bob');
INSERT INTO users VALUES (3,'Charlie');

INSERT INTO orders VALUES (101,1,500);
INSERT INTO orders VALUES (102,1,200);
INSERT INTO orders VALUES (103,2,300);

-- INNER JOIN
SELECT users.name, orders.amount
FROM users
INNER JOIN orders
ON users.user_id = orders.user_id;