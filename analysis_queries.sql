-- Sales Data Analysis SQL Queries

-- 1. Total Revenue
SELECT SUM(Revenue) AS Total_Revenue
FROM sales_data;

-- 2. Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM sales_data;

-- 3. Revenue by Product
SELECT Product, SUM(Revenue) AS Total_Revenue
FROM sales_data
GROUP BY Product
ORDER BY Total_Revenue DESC;

-- 4. Revenue by City
SELECT City, SUM(Revenue) AS Total_Revenue
FROM sales_data
GROUP BY City
ORDER BY Total_Revenue DESC;

-- 5. Revenue by Category
SELECT Category, SUM(Revenue) AS Total_Revenue
FROM sales_data
GROUP BY Category
ORDER BY Total_Revenue DESC;

-- 6. Top 5 Products
SELECT Product, SUM(Revenue) AS Total_Revenue
FROM sales_data
GROUP BY Product
ORDER BY Total_Revenue DESC
LIMIT 5;

-- 7. Monthly Revenue
SELECT MONTH(Date) AS Month, SUM(Revenue) AS Total_Revenue
FROM sales_data
GROUP BY MONTH(Date)
ORDER BY Month;
