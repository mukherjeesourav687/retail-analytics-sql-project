-- Product-wise sales
SELECT 
    ProductID,
    SUM(QuantityPurchased) AS TotalUnitsSold,
    SUM(QuantityPurchased * Price) AS TotalSales
FROM sales_transaction
GROUP BY ProductID
ORDER BY TotalSales DESC;

-- Category-wise sales
SELECT 
    p.Category,
    SUM(s.QuantityPurchased) AS TotalUnitsSold,
    SUM(s.QuantityPurchased * s.Price) AS TotalSales
FROM sales_transaction s
JOIN product_inventory p 
ON s.ProductID = p.ProductID
GROUP BY p.Category
ORDER BY TotalSales DESC;

-- Daily trends
SELECT 
    TransactionDate_updated,
    COUNT(TransactionID) AS Transaction_count,
    SUM(QuantityPurchased) AS TotalUnitsSold,
    ROUND(SUM(QuantityPurchased * Price), 2) AS TotalSales
FROM sales_transaction
GROUP BY TransactionDate_updated
ORDER BY TransactionDate_updated DESC;

-- Monthly growth
WITH monthly_sales AS (
    SELECT 
        MONTH(TransactionDate_updated) AS month,
        SUM(QuantityPurchased * Price) AS total_sales
    FROM sales_transaction
    GROUP BY MONTH(TransactionDate_updated)
)
SELECT 
    month,
    total_sales,
    LAG(total_sales) OVER (ORDER BY month) AS previous_month_sales,
    ROUND(
        (total_sales - LAG(total_sales) OVER (ORDER BY month)) 
        / LAG(total_sales) OVER (ORDER BY month) * 100, 2
    ) AS mom_growth_percentage
FROM monthly_sales;