create database IMS;

use IMS;

show tables;

CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100)
);

INSERT INTO Categories VALUES
(1,'Electronics'),
(2,'Furniture'),
(3,'Clothing'),
(4,'Footwear'),
(5,'Books'),
(6,'Toys'),
(7,'Sports'),
(8,'Groceries'),
(9,'Beauty'),
(10,'Jewelry'),
(11,'Mobile Phones'),
(12,'Laptops'),
(13,'Tablets'),
(14,'Cameras'),
(15,'Accessories'),
(16,'Home Appliances'),
(17,'Kitchenware'),
(18,'Stationery'),
(19,'Pet Supplies'),
(20,'Baby Products'),
(21,'Health Care'),
(22,'Fitness Equipment'),
(23,'Gardening'),
(24,'Automotive'),
(25,'Tools'),
(26,'Musical Instruments'),
(27,'Gaming'),
(28,'Software'),
(29,'Office Supplies'),
(30,'Bags'),
(31,'Watches'),
(32,'Sunglasses'),
(33,'Travel Accessories'),
(34,'Home Decor'),
(35,'Lighting'),
(36,'Mattresses'),
(37,'Bedding'),
(38,'Curtains'),
(39,'Cleaning Supplies'),
(40,'Storage Solutions'),
(41,'Smart Devices'),
(42,'Networking'),
(43,'Printers'),
(44,'Projectors'),
(45,'Audio Systems'),
(46,'Headphones'),
(47,'Wearables'),
(48,'Power Banks'),
(49,'Chargers'),
(50,'Computer Components'),
(51,'Processors'),
(52,'Graphics Cards'),
(53,'Motherboards'),
(54,'Monitors'),
(55,'Keyboards'),
(56,'Mouse'),
(57,'Webcams'),
(58,'Microphones'),
(59,'Security Systems'),
(60,'CCTV Cameras'),
(61,'Industrial Equipment'),
(62,'Medical Equipment'),
(63,'Laboratory Supplies'),
(64,'Construction Materials'),
(65,'Electrical Supplies'),
(66,'Plumbing Supplies'),
(67,'Paints'),
(68,'Hand Tools'),
(69,'Power Tools'),
(70,'Bicycle Accessories'),
(71,'Motorcycle Accessories'),
(72,'Car Accessories'),
(73,'Tyres'),
(74,'Lubricants'),
(75,'Outdoor Equipment'),
(76,'Camping Gear'),
(77,'Fishing Supplies'),
(78,'Hunting Equipment'),
(79,'Art Supplies'),
(80,'Craft Materials'),
(81,'Educational Materials'),
(82,'Gift Items'),
(83,'Party Supplies'),
(84,'Seasonal Products'),
(85,'Luxury Goods'),
(86,'Antiques'),
(87,'Collectibles'),
(88,'Digital Products'),
(89,'Cloud Services'),
(90,'Subscription Services'),
(91,'E-Books'),
(92,'Online Courses'),
(93,'Movie Merchandise'),
(94,'Anime Merchandise'),
(95,'Eco-Friendly Products'),
(96,'Organic Products'),
(97,'Recycled Products'),
(98,'Smart Home Devices'),
(99,'Drone Accessories'),
(100,'Virtual Reality Equipment');

SET FOREIGN_KEY_CHECKS = 1;
TRUNCATE TABLE Categories;
SET FOREIGN_KEY_CHECKS = 0;
select* from categories;
CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(100),
    contact_person VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100)
);
INSERT INTO Suppliers VALUES
(1,'ABC Electronics','Arun','9876543210','abc@gmail.com'),
(2,'Smart Traders','Kumar','9876543211','smart@gmail.com'),
(3,'Elite Furniture','Ravi','9876543212','elite@gmail.com'),
(4,'Fresh Foods','Suresh','9876543213','fresh@gmail.com'),
(5,'Global Stationery','Vijay','9876543214','global@gmail.com'),
(6,'Metro Suppliers','Raj','9876543215','metro@gmail.com'),
(7,'Prime Electronics','Karthik','9876543216','prime@gmail.com'),
(8,'South Traders','Hari','9876543217','south@gmail.com'),
(9,'City Wholesale','Bala','9876543218','city@gmail.com'),
(10,'Tech Solutions','Ajay','9876543219','tech@gmail.com'),
(11,'Digital World','Mani','9876543220','digital@gmail.com'),
(12,'Fast Supply','Mohan','9876543221','fast@gmail.com'),
(13,'Universal Traders','Ramesh','9876543222','universal@gmail.com'),
(14,'Best Furniture','Dinesh','9876543223','best@gmail.com'),
(15,'Quality Foods','Senthil','9876543224','quality@gmail.com'),
(16,'Office Needs','Saravanan','9876543225','office@gmail.com'),
(17,'Mega Electronics','Prakash','9876543226','mega@gmail.com'),
(18,'Retail Supply','Ganesh','9876543227','retail@gmail.com'),
(19,'Super Distributors','Kiran','9876543228','super@gmail.com'),
(20,'National Traders','Vinoth','9876543229','national@gmail.com');

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT,
    supplier_id INT,
    unit_price DECIMAL(10,2),
    stock_qty INT,
    reorder_level INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id),
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);
INSERT INTO Products VALUES
(1,'HP Laptop',1,1,55000,25,10),
(2,'Dell Laptop',1,2,60000,20,10),
(3,'Lenovo Laptop',1,3,50000,30,10),
(4,'Wireless Mouse',1,4,500,100,20),
(5,'Keyboard',1,5,800,80,20),
(6,'Monitor 24 Inch',1,6,12000,25,5),
(7,'Printer',1,7,15000,15,5),
(8,'USB Drive 32GB',1,8,600,120,25),
(9,'External HDD 1TB',1,9,4500,40,10),
(10,'Router',1,10,2500,50,10),

(11,'Office Chair',2,11,3500,40,10),
(12,'Study Table',2,12,5000,30,10),
(13,'Wooden Cupboard',2,13,12000,15,5),
(14,'Bookshelf',2,14,4500,25,5),
(15,'Computer Table',2,15,6000,20,5),

(16,'Notebook',3,16,50,500,100),
(17,'Pen Pack',3,17,100,400,100),
(18,'Pencil Box',3,18,150,300,50),
(19,'Marker Set',3,19,200,250,50),
(20,'File Folder',3,20,80,350,75),

(21,'Rice Bag 25kg',4,1,1400,60,15),
(22,'Cooking Oil 1L',4,2,180,200,50),
(23,'Sugar 1kg',4,3,50,300,75),
(24,'Tea Powder',4,4,120,150,30),
(25,'Coffee Powder',4,5,250,120,30),

(26,'Men T-Shirt',5,6,500,100,20),
(27,'Women Kurti',5,7,800,80,20),
(28,'Jeans Pant',5,8,1200,60,15),
(29,'Shirt',5,9,900,70,15),
(30,'Jacket',5,10,1800,40,10),

(31,'Cricket Bat',6,11,1500,50,10),
(32,'Football',6,12,700,80,15),
(33,'Badminton Racket',6,13,900,60,10),
(34,'Tennis Ball Pack',6,14,250,120,25),
(35,'Gym Gloves',6,15,350,100,20),

(36,'Pressure Cooker',7,16,2500,40,10),
(37,'Frying Pan',7,17,1200,60,15),
(38,'Dinner Set',7,18,3500,20,5),
(39,'Water Bottle',7,19,250,150,30),
(40,'Mixer Grinder',7,20,4500,25,5),

(41,'Toy Car',8,1,300,120,25),
(42,'Teddy Bear',8,2,500,80,20),
(43,'Building Blocks',8,3,700,60,15),
(44,'Puzzle Game',8,4,400,100,20),
(45,'Remote Car',8,5,1200,40,10),

(46,'First Aid Kit',9,6,600,50,10),
(47,'Face Mask Box',9,7,250,200,50),
(48,'Hand Sanitizer',9,8,100,250,50),
(49,'Mobile Charger',10,9,500,100,20),
(50,'Bluetooth Earbuds',10,10,1500,50,10);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100),
    city VARCHAR(50)
);
INSERT INTO Customers VALUES
(1,'Arun Kumar','9876500001','arun@gmail.com','Chennai'),
(2,'Priya','9876500002','priya@gmail.com','Madurai'),
(3,'Karthik','9876500003','karthik@gmail.com','Coimbatore'),
(4,'Divya','9876500004','divya@gmail.com','Salem'),
(5,'Naveen','9876500005','naveen@gmail.com','Trichy'),
(6,'Meena','9876500006','meena@gmail.com','Erode'),
(7,'Vijay','9876500007','vijay@gmail.com','Chennai'),
(8,'Suresh','9876500008','suresh@gmail.com','Madurai'),
(9,'Ravi','9876500009','ravi@gmail.com','Salem'),
(10,'Kumar','9876500010','kumar@gmail.com','Chennai');


CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    designation VARCHAR(50),
    phone VARCHAR(20),
    salary DECIMAL(10,2)
);
INSERT INTO Employees VALUES
(1,'Ramesh','Manager','9876600001',50000),
(2,'Suresh','Store Keeper','9876600002',25000),
(3,'Ganesh','Sales Executive','9876600003',28000),
(4,'Vijay','Purchase Officer','9876600004',30000),
(5,'Karthik','Warehouse Staff','9876600005',22000),
(6,'Ajay','Sales Executive','9876600006',28000),
(7,'Hari','Store Keeper','9876600007',25000),
(8,'Mohan','Warehouse Staff','9876600008',22000),
(9,'Bala','Purchase Officer','9876600009',30000),
(10,'Senthil','Manager','9876600010',55000);

CREATE TABLE PurchaseOrders (
    po_id INT PRIMARY KEY,
    supplier_id INT,
    employee_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);
INSERT INTO PurchaseOrders VALUES
(1,1,1,'2026-01-01',25000),
(2,2,2,'2026-01-02',18000),
(3,3,3,'2026-01-03',22000),
(4,4,4,'2026-01-04',15000),
(5,5,5,'2026-01-05',30000),
(6,6,6,'2026-01-06',28000),
(7,7,7,'2026-01-07',35000),
(8,8,8,'2026-01-08',21000),
(9,9,9,'2026-01-09',27000),
(10,10,10,'2026-01-10',32000);

CREATE TABLE PurchaseDetails (
    purchase_detail_id INT PRIMARY KEY,
    po_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (po_id) REFERENCES PurchaseOrders(po_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
INSERT INTO PurchaseDetails VALUES
(1,1,1,10,55000),
(2,2,2,8,60000),
(3,3,3,12,50000),
(4,4,4,20,500),
(5,5,5,15,800),
(6,6,6,10,12000),
(7,7,7,5,15000),
(8,8,8,25,600),
(9,9,9,10,4500),
(10,10,10,15,2500);

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    employee_id INT,
    sale_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);
INSERT INTO Sales VALUES
(1,1,1,'2026-02-01',1200),
(2,2,2,'2026-02-02',2500),
(3,3,3,'2026-02-03',3400),
(4,4,4,'2026-02-04',1800),
(5,5,5,'2026-02-05',4200),
(6,6,6,'2026-02-06',3100),
(7,7,7,'2026-02-07',2700),
(8,8,8,'2026-02-08',3900),
(9,9,9,'2026-02-09',2100),
(10,10,10,'2026-02-10',5000);

CREATE TABLE SaleDetails (
    sale_detail_id INT PRIMARY KEY,
    sale_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (sale_id) REFERENCES Sales(sale_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
INSERT INTO SaleDetails VALUES
(1,1,1,1,55000),
(2,2,2,1,60000),
(3,3,4,2,500),
(4,4,5,2,800),
(5,5,6,1,12000),
(6,6,7,1,15000),
(7,7,8,3,600),
(8,8,9,1,4500),
(9,9,10,2,2500),
(10,10,11,1,3500);

CREATE TABLE StockMovement (
    movement_id INT PRIMARY KEY,
    product_id INT,
    movement_type VARCHAR(20),
    quantity INT,
    movement_date DATE,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
INSERT INTO StockMovement VALUES
(1,1,'IN',100,'2026-01-01'),
(2,1,'OUT',10,'2026-01-05'),
(3,2,'IN',80,'2026-01-06'),
(4,2,'OUT',5,'2026-01-08'),
(5,3,'IN',120,'2026-01-10'),
(6,3,'OUT',15,'2026-01-12'),
(7,4,'IN',200,'2026-01-15'),
(8,4,'OUT',20,'2026-01-17'),
(9,5,'IN',150,'2026-01-20'),
(10,5,'OUT',10,'2026-01-22');

-- 1. Display all products available in the inventory.
SELECT * FROM Products;

-- 2. Display all customer details.
SELECT * FROM Customers;

-- 3. Display all supplier details.
SELECT * FROM Suppliers;

-- 4. Show all employee details.
SELECT * FROM Employees;

-- 5. Display all categories available in the system.
SELECT * FROM Categories;

-- 6. Find products whose stock quantity is less than the reorder level.
SELECT * FROM Products
WHERE stock_qty < reorder_level;

-- 7. Display products with a unit price greater than ₹5000.
SELECT * FROM Products
WHERE unit_price > 5000;

-- 8. Find customers who belong to Chennai.
SELECT * FROM Customers
WHERE city = 'Chennai';

-- 9. Show employees whose salary is greater than ₹30,000.
SELECT * FROM Employees
WHERE salary > 30000;

-- 10. Display products belonging to the Electronics category.
SELECT * FROM Products
WHERE category_id = 1;

-- 11. Display products ordered by unit price in ascending order.
SELECT * FROM Products
ORDER BY unit_price ASC;

-- 12. Display products ordered by stock quantity in descending order.
SELECT * FROM Products
ORDER BY stock_qty DESC;

-- 13. Show customers sorted by customer name.
SELECT * FROM Customers
ORDER BY customer_name;

-- 14. Display employees sorted by salary from highest to lowest.
SELECT * FROM Employees
ORDER BY salary DESC;

-- 15. Show suppliers sorted alphabetically by supplier name.
SELECT * FROM Suppliers
ORDER BY supplier_name ASC;

-- 16. Find the total number of products available.
SELECT COUNT(*) AS Total_Products
FROM Products;

-- 17. Find the total stock quantity of all products.
SELECT SUM(stock_qty) AS Total_Stock
FROM Products;

-- 18. Calculate the average product price.
SELECT AVG(unit_price) AS Average_Price
FROM Products;

-- 19. Find the highest-priced product.
SELECT * FROM Products
WHERE unit_price = (SELECT MAX(unit_price) FROM Products);

-- 20. Find the lowest-priced product.
SELECT * FROM Products
WHERE unit_price = (SELECT MIN(unit_price) FROM Products);

-- 21. Display product names along with their category names.
SELECT p.product_name, c.category_name
FROM Products p
JOIN Categories c
ON p.category_id = c.category_id;

-- 22. Display product names along with supplier names.
SELECT p.product_name, s.supplier_name
FROM Products p
JOIN Suppliers s
ON p.supplier_id = s.supplier_id;

-- 23. Show sales details along with customer names.
SELECT sa.sale_id, c.customer_name, sa.sale_date, sa.total_amount
FROM Sales sa
JOIN Customers c
ON sa.customer_id = c.customer_id;

-- 24. Display purchase orders along with supplier names.
SELECT po.po_id, s.supplier_name, po.order_date, po.total_amount
FROM PurchaseOrders po
JOIN Suppliers s
ON po.supplier_id = s.supplier_id;

-- 25. Show sales handled by each employee.
SELECT sa.sale_id, e.employee_name, sa.sale_date, sa.total_amount
FROM Sales sa
JOIN Employees e
ON sa.employee_id = e.employee_id;

-- 26. Count the number of products in each category.
SELECT c.category_name, COUNT(*) AS Product_Count
FROM Products p
JOIN Categories c
ON p.category_id = c.category_id
GROUP BY c.category_name;

-- 27. Calculate the total stock quantity category-wise.
SELECT c.category_name, SUM(p.stock_qty) AS Total_Stock
FROM Products p
JOIN Categories c
ON p.category_id = c.category_id
GROUP BY c.category_name;

-- 28. Find the average product price for each category.
SELECT c.category_name, AVG(p.unit_price) AS Average_Price
FROM Products p
JOIN Categories c
ON p.category_id = c.category_id
GROUP BY c.category_name;

-- 29. Count the number of sales made by each employee.
SELECT e.employee_name, COUNT(sa.sale_id) AS Total_Sales
FROM Employees e
JOIN Sales sa
ON e.employee_id = sa.employee_id
GROUP BY e.employee_name;

-- 30. Calculate the total sales amount generated by each customer.
SELECT c.customer_name, SUM(sa.total_amount) AS Total_Sales_Amount
FROM Customers c
JOIN Sales sa
ON c.customer_id = sa.customer_id
GROUP BY c.customer_name;

-- 31. Find the top 5 most expensive products.
SELECT *
FROM Products
ORDER BY unit_price DESC
LIMIT 5;

-- 32. Display products that have never been sold.
SELECT p.product_id, p.product_name
FROM Products p
LEFT JOIN SaleDetails sd
ON p.product_id = sd.product_id
WHERE sd.product_id IS NULL;

-- 33. Find suppliers who supply more than one product.
SELECT s.supplier_name, COUNT(p.product_id) AS Product_Count
FROM Suppliers s
JOIN Products p
ON s.supplier_id = p.supplier_id
GROUP BY s.supplier_name
HAVING COUNT(p.product_id) > 1;

-- 34. Show customers who made purchases above ₹3000.
SELECT DISTINCT c.customer_name, sa.total_amount
FROM Customers c
JOIN Sales sa
ON c.customer_id = sa.customer_id
WHERE sa.total_amount > 3000;

-- 35. Display categories having more than 5 products.
SELECT c.category_name, COUNT(*) AS Product_Count
FROM Products p
JOIN Categories c
ON p.category_id = c.category_id
GROUP BY c.category_name
HAVING COUNT(*) > 5;

-- 36. Find products with stock quantity greater than the average stock quantity.
SELECT *
FROM Products
WHERE stock_qty >
(
    SELECT AVG(stock_qty)
    FROM Products
);

-- 37. Show monthly sales totals.
SELECT MONTH(sale_date) AS Month_No,
       SUM(total_amount) AS Total_Sales
FROM Sales
GROUP BY MONTH(sale_date);

-- 38. Find the employee who handled the highest sales amount.
SELECT e.employee_name,
       SUM(sa.total_amount) AS Total_Sales
FROM Employees e
JOIN Sales sa
ON e.employee_id = sa.employee_id
GROUP BY e.employee_name
ORDER BY Total_Sales DESC
LIMIT 1;

-- 39. Display products purchased most frequently.
SELECT p.product_name,
       SUM(sd.quantity) AS Total_Quantity_Sold
FROM Products p
JOIN SaleDetails sd
ON p.product_id = sd.product_id
GROUP BY p.product_name
ORDER BY Total_Quantity_Sold DESC;

-- 40. Find the total purchase amount supplier-wise.
SELECT s.supplier_name,
       SUM(po.total_amount) AS Total_Purchase_Amount
FROM Suppliers s
JOIN PurchaseOrders po
ON s.supplier_id = po.supplier_id
GROUP BY s.supplier_name;

-- 41. Display product details along with category name and supplier name using a View.
CREATE VIEW Product_Details AS
SELECT
    p.product_id,
    p.product_name,
    c.category_name,
    s.supplier_name,
    p.unit_price,
    p.stock_qty
FROM Products p
JOIN Categories c
ON p.category_id = c.category_id
JOIN Suppliers s
ON p.supplier_id = s.supplier_id;

SELECT * FROM Product_Details;

-- 42. Create a View to display customer sales information.
CREATE VIEW Customer_Sales AS
SELECT
    c.customer_name,
    sa.sale_id,
    sa.sale_date,
    sa.total_amount
FROM Customers c
JOIN Sales sa
ON c.customer_id = sa.customer_id;

SELECT * FROM Customer_Sales;

-- 43. Create a View to display employee-wise sales records.
CREATE VIEW Employee_Sales AS
SELECT
    e.employee_name,
    sa.sale_id,
    sa.sale_date,
    sa.total_amount
FROM Employees e
JOIN Sales sa
ON e.employee_id = sa.employee_id;

SELECT * FROM Employee_Sales;

-- 44. Create a Stored Procedure to display all products.
DELIMITER //

CREATE PROCEDURE ShowProducts()
BEGIN
    SELECT * FROM Products;
END //

DELIMITER ;

CALL ShowProducts();

-- 45. Create a Stored Procedure to display products whose stock quantity is less than or equal to the reorder level.
DELIMITER //

CREATE PROCEDURE LowStockProducts()
BEGIN
    SELECT *
    FROM Products
    WHERE stock_qty <= reorder_level;
END //

DELIMITER ;

CALL LowStockProducts();

-- 46. Create a Stored Procedure to generate a customer sales report.
DELIMITER //

CREATE PROCEDURE CustomerSalesReport()
BEGIN
    SELECT
        c.customer_name,
        sa.sale_id,
        sa.total_amount
    FROM Customers c
    JOIN Sales sa
    ON c.customer_id = sa.customer_id;
END //

DELIMITER ;

CALL CustomerSalesReport();

-- 47. Create a Trigger that automatically reduces product stock after a sale is recorded.
DELIMITER //

CREATE TRIGGER trg_reduce_stock
AFTER INSERT ON SaleDetails
FOR EACH ROW
BEGIN
    UPDATE Products
    SET stock_qty = stock_qty - NEW.quantity
    WHERE product_id = NEW.product_id;
END //

DELIMITER ;

-- 48. Create a Trigger that prevents sales when the available stock is insufficient.
DELIMITER //

CREATE TRIGGER trg_check_stock
BEFORE INSERT ON SaleDetails
FOR EACH ROW
BEGIN
    DECLARE current_stock INT;

    SELECT stock_qty
    INTO current_stock
    FROM Products
    WHERE product_id = NEW.product_id;

    IF current_stock < NEW.quantity THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Insufficient Stock';
    END IF;
END //

DELIMITER ;

-- 49. Create a Trigger that automatically records stock movement details whenever a sale occurs.
DELIMITER //

CREATE TRIGGER trg_stock_log
AFTER INSERT ON SaleDetails
FOR EACH ROW
BEGIN
    INSERT INTO StockMovement
    (
        movement_id,
        product_id,
        movement_type,
        quantity,
        movement_date
    )
    VALUES
    (
        (SELECT IFNULL(MAX(movement_id),0)+1
         FROM StockMovement),
        NEW.product_id,
        'OUT',
        NEW.quantity,
        CURDATE()
    );
END //

DELIMITER ;

-- 50. Display Customer Name, Product Name, Quantity Purchased, Sale Date, and Total Amount using multiple table joins.
SELECT
    c.customer_name,
    p.product_name,
    sd.quantity,
    s.sale_date,
    s.total_amount
FROM Customers c
JOIN Sales s
ON c.customer_id = s.customer_id
JOIN SaleDetails sd
ON s.sale_id = sd.sale_id
JOIN Products p
ON sd.product_id = p.product_id;









