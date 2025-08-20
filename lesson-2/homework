CREATE DATABASE Lesson2
USE Lesson2
CREATE TABLE Employees (
    EmpID INT,
    Name VARCHAR(50),
    Salary DECIMAL(10,2)
);
INSERT INTO Employees (EmpID, Name, Salary)
VALUES (1, 'Ali', 6000);

INSERT INTO Employees (EmpID, Name, Salary)
VALUES (2, 'Vali', 5500), (3, 'Dilnoza', 4800);

UPDATE Employees
SET Salary = 7000
WHERE EmpID = 1;

DELETE FROM Employees
WHERE EmpID = 2;

ALTER TABLE Employees
ALTER COLUMN Name VARCHAR(100);

ALTER TABLE Employees
ADD Department VARCHAR(50);

ALTER TABLE Employees
ALTER COLUMN Salary FLOAT;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);
TRUNCATE TABLE Employees;

INSERT INTO Departments (DepartmentID, DepartmentName)
SELECT 1, 'HR' UNION ALL
SELECT 2, 'Finance' UNION ALL
SELECT 3, 'IT' UNION ALL
SELECT 4, 'Marketing' UNION ALL
SELECT 5, 'Sales';

UPDATE Employees
SET Department = 'Management'
WHERE Salary > 5000;

TRUNCATE TABLE Employees;

ALTER TABLE Employees
DROP COLUMN Department;

EXEC sp_rename 'Employees', 'StaffMembers';

DROP TABLE Departments;

CREATE TABLE Products (ProductID INT PRIMARY KEY,ProductName VARCHAR(100),Category VARCHAR(50),Price DECIMAL(10,2),Description VARCHAR(200))

ALTER TABLE Products
ADD CONSTRAINT chk_price CHECK (Price > 0);

ALTER TABLE Products
ADD StockQuantity INT DEFAULT 50;

EXEC sp_rename 'Products.Category', 'ProductCategory', 'COLUMN';

INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, Description)
VALUES 
(1, 'Laptop', 'Electronics', 1200.00, '15-inch display'),
(2, 'Phone', 'Electronics', 800.00, '5G smartphone'),
(3, 'Table', 'Furniture', 150.00, 'Wooden dining table'),
(4, 'Chair', 'Furniture', 70.00, 'Office chair'),
(5, 'Book', 'Stationery', 15.00, 'Programming guide');

SELECT * INTO Products_Backup
FROM Products;

EXEC sp_rename 'Products', 'Inventory';

ALTER TABLE Inventory
DROP CONSTRAINT chk_price;

ALTER TABLE Inventory
ALTER COLUMN Price FLOAT;

ALTER TABLE Inventory
ADD ProductCode INT IDENTITY(1000,5);
