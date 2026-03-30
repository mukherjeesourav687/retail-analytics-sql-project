-- Convert TransactionDate to proper DATE format

CREATE TABLE sales_transaction_new AS
SELECT 
    TransactionID,
    CustomerID,
    ProductID,
    QuantityPurchased,
    TransactionDate,
    Price,
    STR_TO_DATE(TransactionDate, '%Y-%m-%d') AS TransactionDate_updated
FROM sales_transaction;

DROP TABLE sales_transaction;
RENAME TABLE sales_transaction_new TO sales_transaction;