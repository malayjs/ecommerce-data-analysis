# E-Commerce Sales Performance Dashboard

An end-to-end data analytics project that transforms raw e-commerce data into clean, analysis-ready data and an interactive Power BI dashboard. The project demonstrates data cleaning with Python, data storage and querying with MySQL, and business performance reporting with Power BI.

## Dashboard Preview

> **Add your own dashboard screenshot here.** Save your Power BI dashboard screenshot as `dashboard.png` inside a folder named `images` in this repository. Then the image will appear here on GitHub.

E-Commerce Sales Performance Dashboard --- (image.png)



## Project Objectives

- Clean and validate raw e-commerce data.
- Handle missing values, duplicates, inconsistent text, invalid emails, dates, and numeric fields.
- Create analysis-ready fields such as sales, net amount, profit, month, year, and weekday.
- Store the cleaned dataset in MySQL and use SQL to answer business questions.
- Build an interactive Power BI dashboard to monitor sales, orders, profit, products, locations, and payment methods.

## Tools & Technologies

- **Microsoft Excel** — source data review
- **Python** — data cleaning and feature engineering
- **Pandas & NumPy** — data manipulation
- **MySQL** — data storage and SQL analysis
- **SQLAlchemy & PyMySQL** — Python-to-MySQL connection
- **Power BI** — interactive dashboard and KPI reporting

## Project Workflow

```text
Raw Excel Dataset
       ↓
Python (Pandas & NumPy)
       ↓
Data Cleaning & Validation
       ↓
Feature Engineering
       ↓
Clean CSV / Excel Export
       ↓
MySQL Database
       ↓
SQL Business Analysis
       ↓
Power BI Dashboard
```

## Data Preparation

The Python workflow includes:

- Inspecting the dataset with `head()`, `info()`, `describe()`, and `shape`
- Checking and removing duplicate records
- Standardizing `N/A`, `NULL`, and blank values
- Trimming extra spaces and standardizing customer names and location text
- Validating email addresses
- Converting order and delivery dates to datetime
- Converting quantity, unit price, and discount columns to numeric values
- Filtering records with non-positive quantities
- Handling missing discount, phone, and delivery-date values
- Creating derived columns for sales, net amount, profit, month, year, and weekday
- Performing final quality checks and exporting the cleaned dataset

### Derived Metrics

| Field | Calculation |
|---|---|
| Sales | `Qty × Unit_Price` |
| Net Amount | `Sales − (Sales × Discount / 100)` |
| Profit | Example estimate: `Net_Amount × 0.20` |
| Month | Month name derived from `Order_Date` |
| Year | Year derived from `Order_Date` |
| Weekday | Weekday name derived from `Order_Date` |

**Note:** The 20% profit calculation is an illustrative assumption from the project workflow, not actual cost-based profit. Replace it with a genuine cost or margin calculation if reliable cost data is available.

## SQL Analysis

The MySQL `orders` table is used to explore business performance, including:

- Total order count
- Total net sales
- Products ranked by net sales
- Sales by city
- Monthly sales
- Products ranked by profit
- Payment mode distribution
- Cancelled orders

Example query — net sales by product:

```sql
SELECT
    Product,
    SUM(Net_Amount) AS Total_Sales
FROM orders
GROUP BY Product
ORDER BY Total_Sales DESC;
```

## Power BI Dashboard

The dashboard is designed to provide a clear overview of e-commerce performance.

### KPI Cards

- Total Sales
- Total Orders
- Total Profit
- Average Order Value

### Charts & Analysis

- Monthly Sales Trend — line chart
- Sales by Category — bar chart
- Sales by Product — column chart
- Sales by City — map or bar chart
- Payment Mode Distribution — donut chart
- Order Status — pie chart
- Top 10 Products — bar chart
- Profit by Category — stacked column chart
- Sales Target Achievement — target-versus-actual KPI (when a defined target is available)

### Slicers

- Year
- Month
- Category
- City
- Payment Mode

## Key Business Questions

This project can help answer questions such as:

1. How do sales change month by month?
2. Which products and categories generate the highest sales?
3. Which cities contribute the most to sales?
4. Which payment modes are most frequently used?
5. How many orders are cancelled?
6. Which products generate the highest calculated profit?
7. How close are sales to a defined target?

## How to Reproduce the Project

1. Open the raw Excel dataset in Excel or Python.
2. Install the Python packages:

   ```bash
   pip install pandas numpy openpyxl sqlalchemy pymysql
   ```

3. Run the Python cleaning and feature-engineering steps.
4. Export the cleaned dataset as `Clean_Ecommerce.csv` or `Clean_Ecommerce.xlsx`.
5. Create a MySQL database named `ecommerce`.
6. Configure the SQLAlchemy connection string for your local MySQL username, password, and database. Do not commit credentials to GitHub.
7. Load the cleaned DataFrame into the MySQL `orders` table.
8. Run the SQL analysis queries.
9. Connect Power BI to MySQL and build the report using the KPI cards, charts, and slicers listed above.


## Notes & Limitations

- Sales targets should come from a defined business target or be clearly labeled as assumptions.
- The example profit formula estimates profit using a fixed 20% of net amount. It should not be presented as actual profit without cost data.
- Confirm the business definitions for orders, returns, cancellations, discounts, and profit before drawing final conclusions.
- Do not publish customer names, email addresses, phone numbers, credentials, or other sensitive data in a public repository.

## Future Improvements

- Add a proper date table and month-over-month/year-over-year measures.
- Add a customer repeat-purchase and retention analysis if customer/order history supports it.
- Add a target table with monthly targets.
- Add automated data-quality checks and refresh documentation.
- Add drill-through pages and report tooltips in Power BI.

---

**Project:** E-Commerce Sales Performance Dashboard 
**Tools:** Python, Pandas, NumPy, MySQL, SQL, Power BI
