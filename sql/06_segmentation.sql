-- Customer Segmentation
CREATE TABLE customer_segment AS
SELECT 
    CustomerID,
    SUM(QuantityPurchased) AS TotalQuantity,
    CASE 
        WHEN SUM(QuantityPurchased) BETWEEN 1 AND 10 THEN 'Low'
        WHEN SUM(QuantityPurchased) BETWEEN 11 AND 30 THEN 'Medium'
        ELSE 'High'
    END AS CustomerSegment
FROM sales_transaction
GROUP BY CustomerID;

-- Segment distribution
SELECT 
    CustomerSegment, 
    COUNT(*) AS CustomerCount
FROM customer_segment
GROUP BY CustomerSegment;