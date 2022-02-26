use advaita;

CREATE TABLE IF NOT EXISTS products (
productID INT UNSIGNED NOT NULL AUTO_INCREMENT,
productCode CHAR(3) NOT NULL DEFAULT '',
name VARCHAR(30) NOT NULL DEFAULT '',
quantity INT UNSIGNED NOT NULL DEFAULT 0,
price DECIMAL(7,2) NOT NULL DEFAULT 99999.99,
PRIMARY KEY (productID)
);

 SHOW TABLES;
 
 DESCRIBE products;
 
 INSERT INTO products VALUES
(NULL, 'PEN', 'Pen Blue', 8000, 1.25),
(NULL, 'PEN', 'Pen Black', 2000, 1.25);

INSERT INTO products (productCode, name, quantity, price) VALUES
('PEC', 'Pencil 2B', 10000, 0.48),
('PEC', 'Pencil 2H', 8000, 0.49);

SELECT * FROM products;

DELETE FROM products WHERE productID = 4;

 SELECT name, price FROM products;
 
  SELECT * FROM products;

SELECT 1+1;

SELECT NOW();

SELECT 1+1, NOW();

SELECT name, price FROM products WHERE price < 1.0;

SELECT name, quantity FROM products WHERE quantity <= 2000;

SELECT name, price FROM products WHERE productCode = 'PEN';

SELECT name, price FROM products WHERE name LIKE 'PENCIL%';

SELECT name, price FROM products WHERE name LIKE 'P__ %';

SELECT * FROM products WHERE quantity >= 5000 AND name LIKE 'Pen %';

SELECT * FROM products WHERE quantity >= 5000 AND price < 1.24 AND name LIKE 'Pen %';

SELECT * FROM products WHERE NOT (quantity >= 5000 AND name LIKE 'Pen %');

SELECT * FROM products WHERE name IN ('Pen Red', 'Pen Black');

SELECT * FROM products
WHERE (price BETWEEN 1.0 AND 2.0) AND (quantity BETWEEN 1000 AND 2000);

SELECT * FROM products WHERE productCode IS NULL;
Empty set (0.00 sec)

SELECT * FROM products WHERE name LIKE 'Pen %' ORDER BY price DESC;

 SELECT * FROM products WHERE name LIKE 'Pen %' ORDER BY price DESC, quantity;
 
  SELECT * FROM products ORDER BY RAND();

SELECT * FROM products ORDER BY price LIMIT 2;

SELECT * FROM products ORDER BY price LIMIT 2, 1;

SELECT productID AS ID, productCode AS Code,
name AS Description, price AS  `Unit Price` 
FROM products
ORDER BY ID;

SELECT CONCAT(productCode, ' - ', name) AS `Product Description`, price FROM products;

SELECT price FROM products;

SELECT DISTINCT price AS `Distinct Price` FROM products;

SELECT DISTINCT price, name FROM products;

SELECT * FROM products ORDER BY productCode, productID;

SELECT * FROM products GROUP BY productCode;

SELECT COUNT(*) AS `Count` FROM products;
 All rows without GROUP BY clause
 
 SELECT productCode, COUNT(*) FROM products GROUP BY productCode;
 
 SELECT productCode, COUNT(*) AS count
FROM products
GROUP BY productCode
ORDER BY count DESC;

SELECT MAX(price), MIN(price), AVG(price), STD(price), SUM(quantity)
FROM products;

 SELECT productCode, MAX(price) AS `Highest Price`, MIN(price) AS `Lowest Price`
FROM products
GROUP BY productCode;

SELECT productCode, MAX(price), MIN(price),
CAST(AVG(price) AS DECIMAL(7,2)) AS `Average`,
CAST(STD(price) AS DECIMAL(7,2)) AS `Std Dev`,
SUM(quantity)
FROM products
GROUP BY productCode;

SELECT
productCode AS `Product Code`,
COUNT(*) AS `Count`,
CAST(AVG(price) AS DECIMAL(7,2)) AS `Average`
FROM products
GROUP BY productCode
HAVING Count >=3;
-- CANNOT use WHERE count >= 3

SELECT
productCode,
MAX(price),
MIN(price),
CAST(AVG(price) AS DECIMAL(7,2)) AS `Average`,
SUM(quantity)
FROM products
GROUP BY productCode
WITH ROLLUP; 

SELECT * FROM products WHERE name = 'Pen Red';

 DELETE FROM products WHERE name LIKE 'Pencil%';

 CREATE TABLE suppliers (
supplierID INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(30) NOT NULL DEFAULT '',
phone CHAR(8) NOT NULL DEFAULT '',
PRIMARY KEY (supplierID)
);

INSERT INTO suppliers VALUE
(501, 'ABC Traders', '88881111'),
(502, 'XYZ Company', '88882222')

ALTER TABLE products
ADD COLUMN supplierID INT UNSIGNED NOT NULL;

SELECT products.name, price, suppliers.name
FROM products
JOIN suppliers ON products.supplierID = suppliers.supplierID
WHERE price < 0.6;
 SELECT products.name, price, suppliers.name
FROM products, suppliers
WHERE products.supplierID = suppliers.supplierID
AND price < 0.6;

SELECT p.name AS `Product Name`, p.price, s.name AS `Supplier Name`
FROM products AS p
JOIN suppliers AS s ON p.supplierID = s.supplierID
WHERE p.price < 0.6;

CREATE TABLE products_suppliers (
productID INT UNSIGNED NOT NULL,
supplierID INT UNSIGNED NOT NULL,
PRIMARY KEY (productID, supplierID),
FOREIGN KEY (productID) REFERENCES products (productID),
FOREIGN KEY (supplierID) REFERENCES suppliers (supplierID)
);

 



















