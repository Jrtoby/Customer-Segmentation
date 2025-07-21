# Customer Segmentation & Revenue Analysis

## 📌 Description

This Power BI project applies RFM (Recency, Frequency, Monetary) analysis on customer transaction data to uncover behavior patterns, segment customers strategically, and guide marketing and revenue decisions. The dashboard provides both business and analytical insights for stakeholders and business owners.

---

## 🎯 Aim

To analyze customer purchasing behavior and segment them into actionable categories such as Champions, At Risk, and Loyal Customers — enabling personalized marketing, improved retention, and targeted sales strategy.

---

## ❗ Problem Statement

Businesses often collect large volumes of customer data but fail to leverage it to understand their audience. Without segmentation, it's difficult to identify the most valuable or most vulnerable customers. This project solves that by using behavioral data to generate intelligent customer segments and revenue insights.

---

## 🛠 Tools

- Microsoft Power BI  
- SQL Server (Data extraction, cleaning and RFM logic) 
- DAX (Data Analysis Expressions)  
- Git & GitHub
- Notepad++ (Documenting SQL script)

---

## 🔎 Data Discovery

The dataset consists of retail transaction data from a UK-based online store. Key columns include:
Initial exploration revealed issues such as:
- Missing values
- Duplicate records
- Negative quantity or price values
- Data inconsistency

These were cleaned in SQL Server before importing into Power BI for analysis.

---

## 📊 Dashboard Pages

### 1️⃣ Customer Segment View

- KPI Cards: Total Customers, Average Revenue, MoM % Change (with sparklines),Total Revenue.
- Segment Breakdown: Pie/Donut chart of Champions, Loyal, At Risk, etc.
- Customer segment: Bar chart for number of customers by average revenue and segment

---

### 2️⃣ Revenue Insights

- KPI Cards: Total Revenue, Avg Revenue/Customer, Top Customer Revenue (with sparklines)
- Top Customers by Revenue description: Horizontal bar chart
- Monthly Revenue Trend: Line chart
- Customer Segmentation Table: Sorted by segment, revenue, recency and country

---

### 3️⃣ Project Overview

- Description of the project and approach
- Aim of the analysis
- Problem Statement with business context
- Data Discovery covering sources and preparation steps

---

## 📂 Project Structure
/Customer-Segmentation-Project
│
├── README.md                                 # Project overview and documentation
│
├── Dataset/
│   └── OnlineRetail.csv                      # Main data file used for analysis
│
├── PowerBI/
│   └── OnlineRetail.pbix                     # Final Power BI dashboard file
│
├── SQL/
│   ├── Database_and_Tables.sql               # SQL to create database and tables
│   ├── Create_OnlineRetail_Table.sql         # SQL to create a new clean OnlineRetail table 
│   ├── Data_Cleaning.sql                     # Cleaning steps (nulls, duplicates, negatives and inconsistencies)
│   ├── Create_RFM_Table.sql                  # SQL to create RFM view or table
│   ├── RFM_Calculation.sql                   # Logic to calculate Recency, Frequency, Monetary
│   ├── RFM_Segmentation.sql                  # RFM-based customer segmentation logic
│
├── Assets/
│   └── Images/
│       ├── Data_Model.png                    # Power BI data model
│       ├── Overview.png                      # The overview page
│       ├── Customer_Segment.png              # Customer segmentation visuals
│       ├── Revenue.png                       # Revenue and top customer visuals

## 🚀 How to Use

1. Clone the repo or download the .pbix file
2. Open it in Power BI Desktop
3. Explore the dashboard pages and visuals
4. Filter by month, segment, or customer to dig deeper
