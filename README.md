# 📊 AtliQ Mart Promotion Analysis  

## 📑 Quick Links
1. [Project Overview](#-Project-Overview)
2. [Company Overview](#-AtliQ-Mart---Company-Overview)
3. [Problem Statement](#-Problem-Statement)
4. [Project Goals](#-Project-Goals)
5. [Data Sources](#-Data-Sources)
6. [Data Dictionary](#-Data-Dictionary)
7. [Tools and Tech Use](#-Tools-&-Technologies)
8. [Ad-Hoc Analysis](#-Ad---hoc-Business-Questions-&-SQL-Queries-&-Results)
9. [Dashboard Preview](#-Dashboard-Preview)
10. [Live Dashboard](#-Live-Dashboard)
11. [Insights](#-Insights)
12. [Recommendations](#-Recommended-Action)
13. [Presentation](#-Project-Presentation)
14. [Guide](#-How-to-Use)
15. [Thank You](#-THANK-YOU)

    

---

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
-`product_name` – Full name of the product including brand and specifications.<br>
-`category` – Product category (e.g., Grocery & Staples, Home Care, Personal Care, Home Appliances).<br>

**`dim_stores`**
-`store_id` – Unique store identifier.<br>
-`city` – City where the store is located.<br>

**`fact_events`**
-`event_id` – Unique identifier for each sales event.<br>
-`store_id` – Store where the event took place (linked to dim_stores).<br>
-`campaign_id` – Campaign under which the event was recorded (linked to dim_campaigns).<br>
-`product_code` – Code of the product sold (linked to dim_products).<br>
-`base_price` – Standard price of the product before discounts.<br>
-`promo_type` – Type of promotion (Percentage Discount, BOGOF, Cashback).<br>
-`quantity_sold_before_promo` – Units sold before campaign (baseline).<br>
-`quantity_sold_after_promo` – Units sold after the campaign promotion.<br>

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

## ❓ Ad-hoc Business Questions & SQL Queries & Results

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
 Result: [📂 View Result (CSV)](https://github.com/SubhadipInsights/AtliQ-Mart-Promotion-Analysis/blob/main/Top_5_product_IR%25.csv)

 ---
 
 ## 📷 Dashboard Preview
![Home Preview](https://github.com/SubhadipInsights/AtliQ-Mart-Promotion-Analysis/blob/main/%7B3271DAE2-97E8-4F15-A19A-112AFEE10F2F%7D.png) <br>
![Performance Preview](https://github.com/SubhadipInsights/AtliQ-Mart-Promotion-Analysis/blob/main/%7B7F656EB5-6FF8-4471-B05A-6F1F1932263E%7D.png) <br>
![Financial Preview](https://github.com/SubhadipInsights/AtliQ-Mart-Promotion-Analysis/blob/main/%7B852A47CD-09B2-4884-B3DF-82692E212566%7D.png)

---

## 🔗 Live Dashboard  
[Click here to view the live Power BI dashboard](https://app.powerbi.com/groups/me/reports/e4245326-2483-4492-81ec-8e551144677f/2b7b7978d5dd3e560ae4?experience=power-bi)

---

## 🔎 Insights

1. **Store Performance**

-Top-performing cities:
 Bengaluru, Chennai, and Hyderabad contributed the highest IR & ISU.
 These cities alone added over 50% of incremental sales uplift.<br>
-Lower-performing stores:
 Stores like STMLR-0, STVSK-3, STMYS-0 (Mangalore, Visakhapatnam, Mysuru) had lower IR%.
 Specific stores like STVSK-3, STCHE-1, STHYD-1 contributed ISU% below the campaign average (70%).<br>
-Regional Trend:
 Metro cities outperformed smaller markets, showing urban customers are more promotion-sensitive, especially towards Cashback and BOGOF offers.

2. **Promotion Type Effectiveness**

-Most effective promotions:
 500 Cashback → IR = 91M, IR% = 136.1%
 BOGOF → ISU = 157K, ISU% = 270% <br>
-Underperforming discounts:
 50% OFF → Negative IR (−0.73M), ISU% = 32.6%
 25% OFF → IR dropped (−3.17M), ISU% = −34.6%


3. **Product & Category Performance**

-Best-performing:
 Combo1 bundles → +91M IR, IR% = 136%
 Home Appliances → ISU% = 264.4%, making it the backbone of campaign success.<br>
-Moderate growth:
 Grocery & Staples and Home Appliances delivered 81%+ IR%, showing strong promotion response.<br>
-Weak performance:
 Personal Care had limited uplift (~24.5% ISU%) and negative IR% (−34.2%), indicating weaker promotion sensitivity.

---

## 🎯 Recommended Action

•	Scale up Cashback & BOGOF promotions across all metro stores, as they consistently delivered the strongest uplift in both revenue and units sold.<br>
•	Reduce or phase out deep discount campaigns (25% & 50% OFF) since they eroded margins and failed to generate meaningful sales uplift.<br>
•	Replicate the success of Combo1 bundles & Home Appliances promotions by expanding bundled deals and high-ticket product promotions in future campaigns.<br>
•	Prioritize metro markets (Bengaluru, Chennai, Hyderabad) for aggressive festive campaigns, while redesigning localized strategies for underperforming tier-2 cities.<br>
•	Reposition Personal Care promotions by exploring bundled offers or cross-category promotions to improve sales in this weak-performing segment.<br>

---

## 📂 Project Presentation

[PPT]()

---

## 📂 How to Use

1. Download the `.pbix` file from this repository.
2. Open in **Power BI Desktop**.
3. Explore insights via slicers and filters.
4. Data model and measures can be found in the Power BI fields pane.
5. copy the SQL queries

---

## THANK YOU





 
