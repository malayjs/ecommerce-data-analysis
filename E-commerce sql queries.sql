create database ecomerce_db;

use ecomerce_db;

---- Total Orders----
SELECT COUNT(*) FROM orders;

---- Total Sales---
SELECT SUM(Net_Amount)
FROM orders;

---- Top Products----
SELECT Product,
SUM(Net_Amount)
FROM orders
GROUP BY Product
ORDER BY 2 DESC;

---- Top Cities----
SELECT City,
SUM(Net_Amount)
FROM orders
GROUP BY City;

---- Monthly Sales----
SELECT Month,
SUM(Net_Amount)
FROM orders
GROUP BY Month;

---- Monthly Sales----
SELECT Month,
SUM(Net_Amount)
FROM orders
GROUP BY Month;

---- Highest Profit Product----
SELECT Product,
SUM(Profit)
FROM orders
GROUP BY Product
ORDER BY 2 DESC;


---- Payment Mode ---
SELECT Payment_Mode,
COUNT(*)
FROM orders
GROUP BY Payment_Mode;

---- Cancelled Orders ----
SELECT *
FROM orders
WHERE Order_Status='Cancelled';

