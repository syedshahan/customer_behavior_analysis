# Data Analytics Project

## 1. Project Overview
This project demonstrates an end-to-end data analytics workflow, starting from raw data processing to delivering business insights through visualization and reporting. The objective is to explore customer purchasing behavior, uncover patterns in the data, and present actionable insights using modern data analytics tools.

The project covers the full analytics pipeline including data loading, exploratory data analysis (EDA), data cleaning, SQL-based analysis, dashboard creation in Power BI, and communicating insights through a written report and presentation.

This repository highlights practical data analytics skills relevant for real-world business scenarios and demonstrates the ability to transform raw data into meaningful insights.

---

## 2. Dataset Description
The dataset contains customer transaction and purchasing information. It includes variables related to customer demographics, product purchases, pricing, discounts, and review ratings.

Key fields include:
- **Customer ID** – Unique identifier for each customer
- **Age / Gender** – Customer demographic attributes
- **Category** – Product category
- **Item Purchased** – Product name
- **Purchase Amount** – Amount spent per transaction
- **Discount Applied** – Whether a discount was applied
- **Review Rating** – Customer rating of the purchased item
- **Payment Method** – Mode of transaction

The dataset is used to analyze purchasing patterns, customer behavior, product performance, and discount effectiveness.

---

## 3. Tools & Technologies
This project uses a combination of industry-standard tools used by data analysts.

**Programming & Analysis**
- Python
- Pandas
- NumPy
- Matplotlib / Seaborn

**Database & Querying**
- PostgreSQL
- MySQL
- SQL Server
- SQL (Aggregations, Window Functions, CTEs)

**Visualization**
- Power BI

**Reporting & Presentation**
- Gamma (AI-powered presentation tool)
- Microsoft PowerPoint

**Development Environment**
- Jupyter Notebook
- VS Code

---

## 4. Project Workflow / Steps

### 1. Data Loading
- Imported the dataset using **Python (Pandas)**
- Performed initial data inspection
- Checked column types and dataset structure

### 2. Exploratory Data Analysis (EDA)
- Analyzed distribution of purchases
- Explored customer demographics
- Identified top products and categories
- Examined purchase trends and discount usage

### 3. Data Cleaning
- Handled missing values
- Corrected inconsistent categorical values
- Converted data types where necessary
- Prepared the dataset for SQL analysis and visualization

### 4. SQL Analysis
The cleaned dataset was loaded into a relational database. SQL queries were written to answer analytical questions such as:

- Top spending customers
- Products with highest ratings
- Products with highest discount usage
- Most purchased items per category
- Category-wise purchasing trends

Advanced SQL techniques used:
- **Common Table Expressions (CTEs)**
- **Window Functions**
- **Aggregations**
- **Ranking Functions**

### 5. Data Visualization
The final dataset was connected to **Power BI** to build an interactive dashboard that allows users to explore purchasing patterns and product performance visually.

---

## 5. Power BI Dashboard
The Power BI dashboard provides a visual overview of key insights from the dataset.

Dashboard features include:

- Total revenue and purchase metrics
- Product category performance
- Top-selling products
- Discount usage analysis
- Customer purchase behavior
- Review rating distribution

Interactive filters allow users to explore trends by category, product, and customer segments.

---

## 6. Key Insights / Results
Some of the key insights discovered during the analysis include:

- Certain product categories dominate overall purchases and revenue.
- A small group of products generates a significant share of total transactions.
- Discounts influence purchasing behavior and increase transaction frequency for specific items.
- Products with higher review ratings tend to maintain stronger demand.
- Customer purchasing patterns vary across categories and product types.

These insights can help businesses optimize product strategy, pricing, and marketing campaigns.
