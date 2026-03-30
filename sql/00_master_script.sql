-- Retail Analytics Project - Master Script

SET SQL_SAFE_UPDATES = 0;

CREATE DATABASE IF NOT EXISTS retail;
USE retail;

-- Rename tables (after import)
ALTER TABLE `customer_profiles-1-1714027410` RENAME TO customer_profiles;
ALTER TABLE `product_inventory-1-1714027438` RENAME TO product_inventory;
ALTER TABLE `sales_transaction-1714027462` RENAME TO sales_transaction;

