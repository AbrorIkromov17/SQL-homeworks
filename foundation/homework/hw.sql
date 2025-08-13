use ClassF40
CREATE TABLE products (
    id INT PRIMARY KEY IDENTITY(1,1),
    product_name VARCHAR(100),
    price DECIMAL(10, 2)
);

CREATE TABLE customers (
    id INT PRIMARY KEY IDENTITY(1,1),
    full_name VARCHAR(100),
    phone VARCHAR(20)
);

CREATE TABLE orders (
    customer_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY (customer_id, product_id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

INSERT INTO products (product_name, price) VALUES
('Olma', 5000),
('Banan', 8000),
('Shaftoli', 10000),
('Uzum', 7000),
('Anor', 12000);

INSERT INTO customers (full_name, phone) VALUES
('Ali Valiyev', '+998901234567'),
('Dilnoza Karimova', '+998909876543'),
('Jasur Tursunov', '+998907654321');

INSERT INTO orders (customer_id, product_id, quantity) VALUES
(1, 1, 2),
(1, 3, 1),
(2, 2, 5),
(3, 4, 3),
(2, 5, 2);
