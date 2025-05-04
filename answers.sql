-- Question 1: Transform to 1NF-- First, create the original ProductDetail table
CREATE TABLE IF NOT EXISTS ProductDetail (    OrderID INT,
    CustomerName VARCHAR(100),    Products VARCHAR(255)
);
-- Insert the original data
INSERT INTO ProductDetail VALUES
(101, 'John Doe', 'Laptop'),
(102, 'Jane Smith', 'Keyboard'),
(103, 'Emily Clark', 'Phone');
-- Transform to 1NF by creating a normalized ProductDetail table
DROP TABLE IF EXISTS ProductDetail;
CREATE TABLE ProductDetail (   
    OrderID INT,
    CustomerName VARCHAR(100),    
    Product VARCHAR(100)
);
-- Insert normalized data
INSERT INTO ProductDetail VALUES
(101, 'John Doe', 'Laptop'),
(102, 'Jane Smith', 'Tablet'),
(103, 'Emily Clark', 'Phone');


-- Question 2: Transform to 2NF
-- Create Orders table (for customer information)
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,    CustomerName VARCHAR(100)
);
-- Insert data into Product table
INSERT INTO Product VALUES
(101, 'Laptop', 2),
(102, 'Tablet', 3),
(102, 'Mouse', 2),
(103, 'Phone', 1);

-- Create Product table with foreign key to Orders
CREATE TABLE Product (
    OrderID INT,    
    Product VARCHAR(100),
    Quantity INT,   
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
-- Insert data into Orders table
INSERT INTO Orders VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

































