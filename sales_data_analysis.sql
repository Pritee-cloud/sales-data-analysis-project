-- 1. Display all records
SELECT *
FROM superstore;

-- 2. Count total records
SELECT COUNT(*)
FROM superstore;

-- 3. Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM superstore;

-- 4. Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM superstore;

-- 5. Average Sales
SELECT AVG(Sales) AS Total_average
FROM superstore;

-- 6. Sales by Region
SELECT Region,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 7. Profit by Region
SELECT Region,
       SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Region
ORDER BY Total_Profit DESC;

-- 8. Sales by Category
SELECT Category,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 9. Profit by Category
SELECT Category,
       SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Profit DESC;

-- 10. Sales by Segment
SELECT Segment,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- 11. Top 10 Customers by Sales
SELECT `Customer Name`,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- 12. Top 10 Products by Sales
SELECT `Product Name`,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- 13. Orders by Ship Mode
SELECT `Ship Mode`,
       COUNT(*) AS Total_Orders
FROM superstore
GROUP BY `Ship Mode`
ORDER BY Total_Orders DESC;