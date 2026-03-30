-- 1. Check duplicate TransactionIDs
SELECT TransactionID, COUNT(*)
FROM sales_transaction
GROUP BY TransactionID
HAVING COUNT(*) > 1;

-- 2. Remove duplicates
CREATE TABLE sales_transaction_clean AS
SELECT DISTINCT
    TransactionID,
    CustomerID,
    ProductID,
    QuantityPurchased,
    TransactionDate,
    Price
FROM sales_transaction;

DROP TABLE sales_transaction;
RENAME TABLE sales_transaction_clean TO sales_transaction;

-- 3. Handle NULL values
SELECT COUNT(*) 
FROM customer_profiles
WHERE Age IS NULL 
   OR Gender IS NULL 
   OR Location IS NULL 
   OR JoinDate IS NULL;

UPDATE customer_profiles
SET 
    Age = COALESCE(Age, 0),
    Gender = COALESCE(Gender, 'Unknown'),
    Location = COALESCE(Location, 'Unknown'),
    JoinDate = COALESCE(JoinDate, '1900-01-01');
    
-- Fix NULL, empty and whitespace values in Location
UPDATE customer_profiles
SET Location = 'Unknown'
WHERE Location IS NULL 
   OR TRIM(Location) = '';