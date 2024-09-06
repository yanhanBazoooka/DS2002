-- Create Brands table
CREATE TABLE Brands (
    brand_id INT PRIMARY KEY AUTO_INCREMENT,
    brand_name VARCHAR(50) NOT NULL
);

-- Create Laptops table
CREATE TABLE Laptops (
    laptop_id INT PRIMARY KEY AUTO_INCREMENT,
    brand_id INT,
    model_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    processor VARCHAR(50) NOT NULL,
    ram VARCHAR(10) NOT NULL,
    storage VARCHAR(20) NOT NULL,
    FOREIGN KEY (brand_id) REFERENCES Brands(brand_id)
);

-- Create Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    laptop_id INT,
    customer_name VARCHAR(100) NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (laptop_id) REFERENCES Laptops(laptop_id)
);
-- Insert data into Brands table
INSERT INTO Brands (brand_name) VALUES ('Dell'), ('HP'), ('Apple'), ('Lenovo'), ('Asus');

-- Insert data into Laptops table
INSERT INTO Laptops (brand_id, model_name, price, processor, ram, storage)
VALUES
(1, 'Dell XPS 13', 999.99, 'Intel i7', '16GB', '512GB SSD'),
(2, 'HP Spectre x360', 1199.99, 'Intel i7', '16GB', '1TB SSD'),
(3, 'MacBook Pro', 1299.99, 'Apple M1', '8GB', '256GB SSD'),
(4, 'Lenovo ThinkPad X1 Carbon', 1099.99, 'Intel i5', '16GB', '512GB SSD'),
(5, 'Asus ZenBook 14', 899.99, 'AMD Ryzen 7', '16GB', '512GB SSD');

-- Insert data into Orders table
INSERT INTO Orders (laptop_id, customer_name, order_date)
VALUES
(1, 'John Doe', '2024-09-01'),
(2, 'Jane Smith', '2024-09-02'),
(3, 'Alice Johnson', '2024-09-03'),
(4, 'Bob Brown', '2024-09-04'),
(5, 'Chris Evans', '2024-09-05');

-- extract data
SELECT Laptops.model_name, Brands.brand_name, Laptops.price
FROM Laptops
JOIN Brands ON Laptops.brand_id = Brands.brand_id;
SELECT Orders.order_id, Laptops.model_name, Orders.customer_name, Orders.order_date
FROM Orders
JOIN Laptops ON Orders.laptop_id = Laptops.laptop_id
WHERE Orders.order_date BETWEEN '2024-09-01' AND '2024-09-30';
SELECT model_name, price, processor, ram, storage
FROM Laptops
WHERE price > 1000;

