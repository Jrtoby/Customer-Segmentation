# Customer Segmentation & Revenue Analysis

## 📌 Description

This Power BI project applies RFM (Recency, Frequency, Monetary) analysis on customer transaction data to uncover behavior patterns, segment customers strategically, and guide marketing and revenue decisions. The dashboard provides both business and analytical insights for stakeholders and business owners.

---

## 🎯 Aim

To analyze customer purchasing behavior and segment them into actionable categories such as Champions, At Risk, and Loyal Customers, enabling personalized marketing, improved retention, and targeted sales strategy.

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

The dataset consists of retail transaction data from a UK-based online store.
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
- Segment Breakdown: Pie/Donut chart of % of customerID by segments like Champions, Loyal, At Risk, etc.
- Customer segment: Bar chart for number of customers by average revenue and segment

---

### 2️⃣ Revenue Insights

- KPI Cards: Total Revenue, Avg Revenue/Customer.
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


## 📊 RFM Segmentation Insights

As part of the Online Retail Customer Segmentation Project, performed an RFM (Recency, Frequency, Monetary) analysis to better understand customer behavior. The segmentation helps identify high-value customers, those at risk of churning, and new opportunities for re-engagement or growth.

### 🔍 Summary of Findings

The customer base shows a large percentage of **inactive or lost customers**, indicating the need for retention strategies. Meanwhile, **Champions** and **Big Spenders**, though small in number, contribute a significantly high share of revenue. Targeted marketing and personalized offers could drive significant business growth by focusing on these high-value groups.

---

### 🧩 Segment Breakdown

| Segment                  | Customers | % of Total | Revenue     | Key Insight                                                                 |
|--------------------------|-----------|-------------|-------------|------------------------------------------------------------------------------|
| 🏆 **Champion**           | 22        | 0.51%       | £73,000      | High-value, recent buyers. Prioritize with loyalty perks and exclusive deals.|
| 💰 **Big Spenders**       | 63        | 1.45%       | £23,000      | High spenders. May benefit from premium offers or upselling.                |
| ❤️ **Loyal**             | 45        | 1.04%       | £6,000       | Frequent and consistent. Keep engaged with reward programs.                 |
| ⚠️ **At Risk**           | 61        | 1.41%       | £2,000       | Previously active, now silent. Re-engagement strategies recommended.        |
| 🕓 **Recent Customers**   | 833       | 19.22%      | £1,000       | New customers. Opportunity to nurture for repeat business.                  |
| 🚀 **Potential Customers**| 714       | 16.47%      | £2,000       | Show signs of promise. Target with offers to boost loyalty.                 |
| ❌ **Lost**              | 1,184     | 27.32%      | £448.70      | Long inactive. Consider win-back campaigns or analyze drop-off causes.      |
| 📌 **Others**            | 1,413     | 32.58%      | £2,000       | Behavior doesn't clearly align with other segments, probably a one time purchase customers|

---

### 📈 Actionable Insights

- Focus retention efforts on **Lost** and **At Risk** segments which make up over 28% of the customer base.
- Strengthen relationships with **Champions**, **Loyal**, and **Big Spenders** who collectively drive major revenue.
- Convert **Recent** and **Potential Customers** into long-term buyers through onboarding journeys and tailored marketing.

**They have just made a purchase now is the time to nurture them by**
- Welcome Message/Email: Thank them for their purchase and introduce brand’s values.

- Education: Provide product usage tips, FAQs, or tutorial content to ensure a good experience.

- Next-Step Recommendation: Suggest related products or services based on what they bought.

- Check-in: After a few days, ask for feedback or reviews.

- Incentives: Offer a discount on their next purchase or loyalty points to encourage repeat buying.
---

📁 _This segmentation was created from cleaned transaction data using SQL and analyzed in Power BI as part of a customer value optimization project._

## 🚀 How to Use

1. Clone the repo or download the .pbix file
2. Open it in Power BI Desktop
3. Explore the dashboard pages and visuals
4. Filter by month, segment, or customer to dig deeper

## Linkedin 
https://www.linkedin.com/in/okafor-sopuluchukwu-toby-456693214
