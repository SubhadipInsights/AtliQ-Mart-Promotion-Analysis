# 📊 AtliQ Mart Promotion Analysis  

## 🔎 Project Overview 

This project focuses on analyzing the effectiveness of festive promotions executed by **AtliQ Mart** during **Diwali 2023** and **Sankranti 2024**.  

The analysis leveraged sales data to evaluate the performance of various promotional strategies—including **percentage discounts, cashback offers, and Buy-One-Get-One (BOGOF)** schemes—and measured their impact on:  
- Sales uplift  
- Incremental Revenue (IR)  
- Incremental Revenue % (IR%)  
- Incremental Sold Units (ISU)  
- ISU %  

An **interactive Power BI dashboard** was developed to present insights at both **promotion-level** and **store-level**, showcasing top-performing campaigns, underperforming offers, and regional variations. These insights provide the Sales Director with actionable intelligence to design more effective future promotions and optimize business outcomes through **data-driven strategies**.  

---

## <img width="70" height="50" alt="atliq-a-logo-04" src="https://github.com/user-attachments/assets/989aab88-8673-4b6e-9f1d-19c9e54a1bf7" /> AtliQ Mart - Company Overview  
AtliQ Mart is a **leading retail giant** with a network of **50+ supermarkets across South India**.  

The company has built a strong presence in festive retailing by launching large-scale promotional campaigns during **major festivals such as Diwali and Sankranti**. These promotions are designed to:  
- Boost sales of AtliQ’s branded products  
- Enhance customer engagement  

With a strong focus on **data-driven decision-making**, AtliQ Mart continuously evaluates promotional effectiveness to:  
- Maximize revenue impact  
- Improve **Incremental Revenue % (IR%)**  
- Analyze **Incremental Sold Units (ISU)** and **ISU %**  
- Identify high-performing campaigns  

This approach empowers decision-makers with **actionable insights** to maintain a competitive edge in India’s dynamic retail market.  

---

## 📝 Problem Statement 

AtliQ Mart launched multiple **festive promotional campaigns** during **Diwali 2023 and Sankranti 2024** across all stores.  

Promotions included:  
- **Percentage discounts**  
- **Cashback offers**  
- **Buy-One-Get-One (BOGOF) deals**  

While the campaigns generated a surge in sales activity, the Sales Director faces a critical challenge:  

➡️ Identifying which promotions were truly effective in driving **Incremental Revenue, ISU, ISU %,**  and which underperformed despite customer traffic.  

The required analysis spans three dimensions:  

1. **Store Performance** – Evaluate top & bottom stores based on IR, ISU, and ISU %, and identify regional trends.  
2. **Promotion Type Effectiveness** – Compare different promotion types to find which delivered maximum sales impact.  
3. **Product & Category Performance** – Determine which products/categories responded best and correlate effectiveness with promotion type.  

This analysis will enable **data-driven decisions** for future campaigns, optimize **promotional spending**, and replicate **successful strategies** to maximize IR%, ISU, and customer engagement.  

---

## 🎯 Project Goals 

- Analyze AtliQ Mart’s festive promotional campaigns (**Diwali 2023 & Sankranti 2024**)  
- Evaluate effectiveness of different promotion types (**discounts, BOGOF, cashback**)  
- Assess store performance in terms of **IR & ISU**  
- Identify **top-performing vs underperforming products/categories**  
- Measure **IR%, and ISU%** to evaluate campaign effectiveness  
- Recommend strategies to **optimize promotions, budget allocation, and sales impact**  

---

## 📂 Data Sources  

1. **dim_campaigns**  
2. **dim_products** 
3. **dim_stores**  
4. **fact_events**
5. [View the Codebasics Resume Project Challenge](https://codebasics.io/challenges/codebasics-resume-project-challenge/12)

---

## 📋 Data Dictionary

**`dim_campaigns`**
-`campaign_id` – Unique identifier for each promotional campaign.
-`campaign_name` – Descriptive name of the campaign (e.g., Diwali, Sankranti).
-`start_date` – Campaign start date (DD-MM-YYYY).
-`end_date` – Campaign end date (DD-MM-YYYY).

**`dim_products`**
-`product_code` – Unique product code.
-`product_name` – Full name of the product including brand and specifications.
-`category` – Product category (e.g., Grocery & Staples, Home Care, Personal Care, Home Appliances).

**`dim_stores`**
-`store_id` – Unique store identifier.
-`city` – City where the store is located.

**`fact_events`**
-`event_id` – Unique identifier for each sales event.
-`store_id` – Store where the event took place (linked to dim_stores).
-`campaign_id` – Campaign under which the event was recorded (linked to dim_campaigns).
-`product_code` – Code of the product sold (linked to dim_products).
-`base_price` – Standard price of the product before discounts.
-`promo_type` – Type of promotion (Percentage Discount, BOGOF, Cashback).
-`quantity_sold_before_promo` – Units sold before campaign (baseline).
-`quantity_sold_after_promo` – Units sold after the campaign promotion.

---

## 🛠️ Tools & Technologies  

- **Database & Querying** 🐬  
  - MySQL → Data extraction & transformation  
  - Used **Joins, CTEs, Window Functions**  

- **Data Visualization & BI** 📊  
  - Power BI → Interactive dashboards  
  - Data Modeling → **Star Schema** (Fact: fact_events; Dims: products, stores, campaigns)  
  - DAX Measures → KPIs like **IR%, ISU%**  

- **Collaboration & Sharing** 🌐  
  - GitHub → Version control & project sharing  
  - Power BI Service → Dashboard publishing  

---

## ❓ Ad-hoc Business Questions & SQL Queries  

### 1️⃣ High-Value Products in BOGOF Promotions  
Question:Provide a list of products with a base price greater than 500 and that are featured in promo type of 'BOGOF'(Buy One Get One Free) 
 Query: [View SQL Query](https://github.com/SubhadipInsights/AtliQ-Mart-Promotion-Analysis/blob/main/High_value_heavy_discount.sql) <br>
 Result: [📂 View Result (CSV)](https://github.com/SubhadipInsights/AtliQ-Mart-Promotion-Analysis/blob/main/High_value_heavy_discount.csv)

### 2️⃣ City-Wise Store Presence  
Question:Generate a report that provides an overview of number of stores in each city <br>
 Query: [View SQL Query](https://github.com/SubhadipInsights/AtliQ-Mart-Promotion-Analysis/blob/main/store_count.sql) <br>
 Result: [📂 View Result (CSV)](https://github.com/SubhadipInsights/AtliQ-Mart-Promotion-Analysis/blob/main/store_count.csv)

### 3️⃣ Campaign Revenue Impact  
Question:Generate a repot that displays each campaign along with the total revenue generated before and after the campaign <br>
 Query: [View SQL Query](https://github.com/SubhadipInsights/AtliQ-Mart-Promotion-Analysis/blob/main/revenue_before_and_after.sql) <br>
 Result: [📂 View Result (CSV)](https://github.com/SubhadipInsights/AtliQ-Mart-Promotion-Analysis/blob/main/revenue_before_and_after.csv)


### 4️⃣ Incremental Sold Quantity (ISU%) During Diwali Campaign 
Question:Produce a report that calculates the Incremental Sold Unit % (ISU%) for each category during the Diwali campaign <br>
 Query: [View SQL Query](https://github.com/SubhadipInsights/AtliQ-Mart-Promotion-Analysis/blob/main/category%20wise%20ISU%25.sql) <br>
 Result: [📂 View Result (CSV)](https://github.com/SubhadipInsights/AtliQ-Mart-Promotion-Analysis/blob/main/category%20wise%20ISU%25.csv)

### 5️⃣ Top 5 Products by Incremental Revenue Percentage (IR%) 
Question:Create a report featuring the top 5 products ranked by Incremental Revenue % (IR%) for all campaigns <br>
 Query: [View SQL Query](https://github.com/SubhadipInsights/AtliQ-Mart-Promotion-Analysis/blob/main/Top_5_product_IR%25.sql) <br>
 Result: [📂 View Result (CSV)](https://github.com/SubhadipInsights/AtliQ-Mart-Promotion-Analysis/blob/main/category%20wise%20ISU%25.csv)

 ---
 ## 📷 Dashboard Preview
![Home Preview](https://github.com/SubhadipInsights/AtliQ-Mart-Promotion-Analysis/blob/main/%7B3271DAE2-97E8-4F15-A19A-112AFEE10F2F%7D.png) <br>
![Performance Preview](https://github.com/SubhadipInsights/AtliQ-Mart-Promotion-Analysis/blob/main/%7B7F656EB5-6FF8-4471-B05A-6F1F1932263E%7D.png) <br>
![Financial Preview](https://github.com/SubhadipInsights/AtliQ-Mart-Promotion-Analysis/blob/main/%7B852A47CD-09B2-4884-B3DF-82692E212566%7D.png)



 
