-- High value customers
SELECT 
    CustomerID,
    COUNT(TransactionID) AS NumberOfTransactions,
    SUM(QuantityPurchased * Price) AS TotalSpent
FROM sales_transaction
GROUP BY CustomerID
HAVING COUNT(TransactionID) > 10 
   AND SUM(QuantityPurchased * Price) > 1000
ORDER BY TotalSpent DESC;

-- Low engagement customers
SELECT 
    CustomerID,
    COUNT(TransactionID) AS NumberOfTransactions,
    SUM(QuantityPurchased * Price) AS TotalSpent
FROM sales_transaction
GROUP BY CustomerID
HAVING COUNT(TransactionID) <= 2;

-- Repeat purchases
SELECT 
    CustomerID,
    ProductID,
    COUNT(*) AS TimesPurchased
FROM sales_transaction
GROUP BY CustomerID, ProductID
HAVING COUNT(*) > 1
ORDER BY TimesPurchased DESC;

-- Customer lifecycle
SELECT 
    CustomerID,
    MIN(TransactionDate_updated) AS FirstPurchase,
    MAX(TransactionDate_updated) AS LastPurchase,
    DATEDIFF(MAX(TransactionDate_updated), MIN(TransactionDate_updated)) AS DaysBetweenPurchases
FROM sales_transaction
GROUP BY CustomerID;