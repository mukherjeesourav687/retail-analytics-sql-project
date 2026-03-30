# 🛒 Retail Analytics SQL Project

![SQL](https://img.shields.io/badge/SQL-MySQL-blue)
![Project Type](https://img.shields.io/badge/Project-Data%20Analytics-green)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Level](https://img.shields.io/badge/Level-Intermediate-orange)

End-to-end retail analytics project using SQL — focused on cleaning raw data, transforming it, and extracting business insights.

---

## 📊 Project Overview

This project simulates a real-world retail business scenario where raw transactional data is converted into meaningful insights.

Instead of just writing queries, the focus is on solving business problems through structured data analysis.

---

## 🧩 Problem Statement

Retail businesses often struggle with:

• Duplicate and inconsistent data
• Incorrect product pricing
• Lack of customer insights
• Poor segmentation strategies

This project addresses these issues using SQL-driven analysis.

---

## 🗂️ Dataset

The project uses three datasets:

• `customer_profiles` → Customer demographics
• `product_inventory` → Product details & pricing
• `sales_transaction` → Transaction-level data

---

## 🏗️ Project Structure

```bash
Retail-Analytics-SQL-Project/
│
├── datasets/
│   ├── customer_profiles.csv
│   ├── product_inventory.csv
│   └── sales_transaction.csv
│
├── sql/
│   ├── 00_master_script.sql
│   ├── 01_data_cleaning.sql
│   ├── 02_data_correction.sql
│   ├── 03_data_transformation.sql
│   ├── 04_exploratory_analysis.sql
│   ├── 05_customer_analysis.sql
│   └── 06_segmentation.sql
│
└── README.md
```

---

## ⚙️ Steps Performed

### 🧹 Data Cleaning

• Removed duplicate transaction records
• Handled NULL, empty, and whitespace values

### 🔧 Data Correction

• Identified price mismatches
• Synced transaction prices with inventory

### 🔄 Data Transformation

• Converted transaction dates into proper DATE format
• Prepared data for time-based analysis

### 📈 Exploratory Analysis

• Product-wise and category-wise sales
• Daily and monthly transaction trends
• Growth analysis using window functions

### 👥 Customer Analysis

• Identified high-value customers
• Analysed repeat purchase behaviour
• Evaluated customer engagement

### 🎯 Customer Segmentation

• Segmented customers into Low, Medium, High
• Based on purchase behaviour and quantity

---

## 📌 Key Insights

• A small segment of customers drives most of the revenue
• Top-performing products significantly impact total sales
• Repeat buyers indicate strong retention
• Monthly trends reveal business seasonality

---

## 🛠️ Tools & Technologies

• MySQL (Workbench)
• SQL (Joins, Aggregations, Window Functions)
• Data Cleaning & Transformation

---

## ▶️ How to Run

1. Import datasets into MySQL Workbench
2. Rename tables if needed
3. Run SQL scripts in order:

* [01_data_cleaning.sql](sql/01_data_cleaning.sql)
* [02_data_correction.sql](sql/02_data_correction.sql)
* [03_data_transformation.sql](sql/03_data_transformation.sql)
* [04_exploratory_analysis.sql](sql/04_exploratory_analysis.sql)
* [05_customer_analysis.sql](sql/05_customer_analysis.sql)
* [06_segmentation.sql](sql/06_segmentation.sql)

---

## 🚀 Why This Project Matters

This project demonstrates:

• Real-world problem solving using SQL
• Strong data cleaning and transformation skills
• Business-focused analytical thinking
• Ability to convert raw data into actionable insights

---

## 👤 Author

Sourav Mukherjee
Aspiring Data Analyst | SQL • Power BI • Python

---

## ⭐ If you found this useful

Give this repo a star ⭐ — it motivates me to build more!

---

Consistent learning, one query at a time 🚀
