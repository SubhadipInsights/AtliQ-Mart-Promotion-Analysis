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

## 🏬 AtliQ Mart - Company Overview  
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
   - `campaign_id` → Unique identifier for campaign  
   - `campaign_name` → Name of campaign (Diwali, Sankranti)  
   - `start_date` → Campaign start date (DD-MM-YYYY)  
   - `end_date` → Campaign end date (DD-MM-YYYY)  

2. **dim_products**  
   - `product_code` → Unique product code  
   - `product_name` → Full name of product (brand, size, etc.)  
   - `category` → Product category (e.g., Grocery, Home Care, Appliances)  

3. **dim_stores**  
   - `store_id` → Unique store code  
   - `city` → Store city location  

4. **fact_events**  
   - `event_id` → Unique sales event ID  
   - `store_id` → Store where event occurred  
   - `campaign_id` → Campaign linked to sale  
   - `product_code` → Product involved in event  
   - `base_price` → Standard price before discount  
   - `promo_type` → Promotion type (Discount, BOGOF, Cashback)  
   - `quantity_sold_before_promo` → Units sold pre-campaign  
   - `quantity_sold_after_promo` → Units sold during campaign  

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


 
