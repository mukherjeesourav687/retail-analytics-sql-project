-- Identify price discrepancies
SELECT 
    st.TransactionID,
    st.Price AS TransactionPrice,
    pi.Price AS InventoryPrice
FROM sales_transaction st
JOIN product_inventory pi
    ON st.ProductID = pi.ProductID
WHERE st.Price <> pi.Price;

-- Fix incorrect prices
UPDATE sales_transaction st
JOIN product_inventory pi
    ON st.ProductID = pi.ProductID
SET st.Price = pi.Price
WHERE st.Price <> pi.Price;