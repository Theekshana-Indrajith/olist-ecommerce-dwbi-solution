# olist-ecommerce-dwbi-solution

# 📊 Olist E-Commerce DWBI Solution

## 📝 Project Overview
This repository contains an end-to-end Data Warehouse and Business Intelligence (DWBI) solution designed for **Olist**, a Brazilian e-commerce platform. The project transforms highly normalized, fragmented operational data into a centralized Dimensional Data Warehouse to generate actionable business insights regarding supply chain logistics, revenue optimization, and customer satisfaction[cite: 12, 13].

## 🛠️ Tech Stack
* **Data Integration (ETL):** Python (Pandas, Google Colab)[cite: 19]
* **Database & Storage:** Microsoft SQL Server, SSMS[cite: 15, 19]
* **Business Intelligence & OLAP:** Microsoft Power BI, DAX[cite: 19, 31]
* **Data Sources:** Relational Databases (SQL), Flat Files (CSV), and REST API responses (JSON)[cite: 14]

## 🏗️ Data Architecture
The project follows a robust 3-Tier Data Warehouse Architecture[cite: 18]:
1. **Data Source Layer:** Simulated OLTP SQL Server database, CRM CSV exports, and external JSON microservices[cite: 18].
2. **Data Integration Layer (ETL):** Python-based pipeline to Extract, Transform (handle nulls, deduplicate, convert types, standardize), and Load data[cite: 24, 25].
3. **Storage Layer:** A centralized Enterprise Data Warehouse (EDW) utilizing a **Star Schema** (Fact Sales and 4 Dimensions: Customer, Product, Location, Date)[cite: 20]. Department-specific Data Marts were implemented using SQL Views[cite: 28].
4. **Presentation Layer:** Interactive Power BI dashboards featuring OLAP capabilities (Drill-down, Roll-up, Slice, Dice)[cite: 19, 31].

<img width="891" height="465" alt="Screenshot 2026-10-11 151026" src="https://github.com/user-attachments/assets/e6511307-77ce-454e-a626-bbe982d4d427" />


## 📂 Repository Structure
* `/1_SQL_Scripts` - Contains SQL scripts for generating Data Marts (`DM_Customer_Experience` and `DM_Sales_Revenue`)[cite: 28, 29].
* `/2_ETL_Pipeline` - Jupyter Notebook / Python scripts detailing the extraction, transformation, and loading processes[cite: 24, 25].
* `/3_PowerBI_Dashboard` - The final `.pbix` Power BI file along with screenshots of the Executive Summary, Trend Analysis, and Interactive Analysis pages[cite: 31, 32].
* `/4_Documentation` - The comprehensive final project report outlining the methodology, dimensional modeling, and evaluation[cite: 10, 11].

*(Note: Raw dataset files are not included due to size constraints. The Olist dataset can be downloaded directly from [Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce))*[cite: 12]

## 💡 Key Business Insights
* **Logistics vs. Customer Satisfaction:** A direct correlation exists between prolonged delivery durations (cross-state shipping) and negative customer reviews[cite: 36, 37]. 
* **Revenue & Seasonality:** Consistent seasonal revenue peaks were identified, enabling better inventory forecasting for high-demand months[cite: 36].
* **Payment Preferences:** Credit Cards and Boleto constitute the vast majority of revenue, highlighting the need to optimize these specific payment gateways[cite: 36].
* **Freight Cost Impact:** High freight costs on low-value items significantly reduce customer satisfaction and profit margins[cite: 37].

## 🚀 How to Run the Project
1. Download the raw dataset from Kaggle and place the files in your local directory[cite: 12].
2. Run the Python ETL script inside the `/2_ETL_Pipeline` folder to clean the data and generate the Surrogate Keys[cite: 24, 25]. 
3. Import the resulting clean CSV files into SQL Server to form the Star Schema[cite: 26].
4. Execute the SQL scripts in `/1_SQL_Scripts` to create the targeted Data Marts[cite: 28, 29].
5. Open the `.pbix` file in Power BI Desktop, refresh the data source settings to point to your local SQL Server, and interact with the dashboards[cite: 31].

---
*Project completed as part of the BSc (Hons) in Information Technology - Data Science program.*[cite: 9]
