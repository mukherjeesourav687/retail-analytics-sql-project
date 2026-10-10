# Retail Analytics with SQL

A MySQL portfolio project exploring how customer, inventory, and transaction data can support retail decisions.

## Business questions

- Which products and categories generate the most sales?
- How do sales change over time?
- Which customers purchase repeatedly or spend more?
- How can purchase behaviour support customer segmentation?

## Start here

| Stage | Source | Focus |
|---|---|---|
| 1 | [Data cleaning](sql/01_data_cleaning.sql) | Duplicates and missing values |
| 2 | [Data correction](sql/02_data_correction.sql) | Transaction and inventory price consistency |
| 3 | [Transformation](sql/03_data_transformation.sql) | Date preparation |
| 4 | [Exploratory analysis](sql/04_exploratory_analysis.sql) | Product, category, and time trends |
| 5 | [Customer analysis](sql/05_customer_analysis.sql) | Spending and repeat purchases |
| 6 | [Segmentation](sql/06_segmentation.sql) | Purchase-based customer groups |

## Data

Three CSV files are included: [customer profiles](datasets/customer_profiles.csv), [product inventory](datasets/product_inventory.csv), and [sales transactions](datasets/sales_transaction.csv).

This is a learning and portfolio project, rather than a deployed business system.

## Run the analysis

1. Use MySQL 8 or later for window-function support.
2. Create a fresh project database named `retail` and import the CSVs as `customer_profiles`, `product_inventory`, and `sales_transaction`.
3. Select the `retail` database and review the scripts before running stages 1–6 in order.

The [setup script](sql/00_master_script.sql) creates the database and renames tables from the original import filenames. It does **not** run the six analysis stages. Skip its rename statements when your imported tables already use the names above.

The cleaning and correction stages change the imported data. Keep the original CSVs and use a fresh database copy when repeating the workflow.

## Techniques demonstrated

Joins, aggregations, window functions, data cleaning, date transformation, and customer segmentation.

## Interpretation

Use the query outputs to assess customer concentration, product performance, and seasonality. Segment definitions are project rules; repeat purchases alone do not establish a retention rate. Business recommendations require checking the actual results and the dataset's coverage.

## Author

[Sourav Mukherjee](https://www.linkedin.com/in/mukherjeesourav687/) · Data Analytics & Technology
