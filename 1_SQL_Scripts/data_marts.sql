-- Creating the Customer Experience and Logistics Data Mart
CREATE VIEW DM_Customer_Experience AS
SELECT 
    d.year,
    d.month,
    l.geolocation_state AS customer_state,
    p.product_category_name_english AS product_category,
    s.seller_state,
    f.delivery_duration_days,
    f.review_score,
    f.total_order_value,
    f.payment_type
FROM Fact_Sales f
JOIN Dim_Date d ON f.Date_Key = d.Date_Key
JOIN Dim_Location l ON f.Location_Key = l.Location_Key
JOIN Dim_Product p ON f.Product_Key = p.Product_Key
JOIN Dim_Seller s ON f.Seller_Key = s.Seller_Key;

SELECT * FROM DM_Customer_Experience;

-- Creating the Sales and Revenue Data Mart
CREATE VIEW DM_Sales_Revenue AS
SELECT 
    d.year,
    d.quarter,
    d.month,
    p.product_category_name_english AS product_category,
    f.payment_type,
    f.price AS item_revenue,
    f.freight_value AS shipping_revenue,
    f.total_order_value AS total_revenue
FROM Fact_Sales f
JOIN Dim_Date d ON f.Date_Key = d.Date_Key
JOIN Dim_Product p ON f.Product_Key = p.Product_Key;

SELECT * FROM DM_Sales_Revenue;