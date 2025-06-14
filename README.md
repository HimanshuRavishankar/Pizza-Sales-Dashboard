# 📊 Pizza Sales Dashboard – End-to-End Data Analytics Project

🔍 Overview
This project is a complete data analytics pipeline starting from raw flat files, going through SQL querying, data preprocessing in Excel, and finally culminating in a comprehensive Pizza Sales Dashboard. The goal was to uncover sales trends, customer behavior, and product performance for a fictitious pizza business using real analytical workflows.

🧰 Tools Used
SQL Server Management Studio (SSMS)

Microsoft Excel (Pivot Tables, Charts, Dashboard)

Power Query

Basic Excel Functions (e.g., COUNTIF, DAX-like logic)

🛠️ Project Workflow
Data Import to SSMS

Loaded the raw flat file dataset into SQL Server.

Queried essential KPIs and business insights using SQL, including:

Total Revenue

Average Order Value

Total Pizzas Sold

Order Frequency (Daily & Hourly)

Sales Distribution by Category & Size

Best and Worst Sellers

Query Outputs Exported to Excel

Connected SQL Server directly to Excel to import the pizza_sales table.

Data Cleaning & Transformation in Excel

Extracted weekday names from order_date using custom columns.

Adjusted total order count accuracy by using COUNTIF to handle duplicate order_ids—ensuring each order was counted once regardless of how many items were in it.

Formatted and cleaned up numerical outputs (e.g., currency formatting, rounding).

Pivot Tables for Insights

Created dedicated pivot tables for:

Daily and hourly trends

Pizza sales by category and size

Top & bottom performing pizzas

KPI summary block

Dashboard Creation

Designed an interactive Excel dashboard summarizing:

KPIs

Sales trends

Sales breakdown by category and size

Best vs. worst sellers

Visual filters for time-based exploration (slicers)

📈 Key Insights
Peak Order Days: Friday & Saturday

Peak Hours: 12 PM to 1 PM and 5 PM–8 PM

Top Pizza Category: Classic (most sales and orders)

Top Selling Pizza: The Classic Chicken Pizza

Least Selling Pizza: The Brie Carre Pizza

Most Popular Size: Large

🚀 What I Learned
How to blend SQL and Excel for end-to-end analysis

Importance of data integrity and adjusting raw exports (e.g., handling order ID duplication)

Building visually appealing and business-friendly dashboards

Extracting meaningful insights from transactional data

🎮 Why Pizza?
Pizza is universally loved—and like any good product, its sales patterns reveal fascinating insights about customer habits, preferences, and behavior. This project was as much fun to build as it is to explore!
