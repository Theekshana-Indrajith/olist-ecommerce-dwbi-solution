use Olist_DataWarehouse;

-- 1. Create Dimension Tables
CREATE TABLE Dim_Location (
    Location_Key INT PRIMARY KEY,
    zip_code_prefix NVARCHAR(50),
    geolocation_city NVARCHAR(100),
    geolocation_state NVARCHAR(10),
    geolocation_lat FLOAT,
    geolocation_lng FLOAT
);

CREATE TABLE Dim_Customer (
    Customer_Key INT PRIMARY KEY,
    customer_id NVARCHAR(100),
    customer_unique_id NVARCHAR(100)
);

CREATE TABLE Dim_Seller (
    Seller_Key INT PRIMARY KEY,
    seller_id NVARCHAR(100),
    seller_city NVARCHAR(100),
    seller_state NVARCHAR(10)
);

CREATE TABLE Dim_Product (
    Product_Key INT PRIMARY KEY,
    product_id NVARCHAR(100),
    product_category_name_english NVARCHAR(100),
    product_weight_g FLOAT,
    product_length_cm FLOAT,
    product_height_cm FLOAT,
    product_width_cm FLOAT
);

CREATE TABLE Dim_Date (
    Date_Key INT PRIMARY KEY, 
    full_date DATE,
    year INT,
    quarter INT,
    month INT,
    day INT,
    day_of_week NVARCHAR(20)
);

-- 2. Create Fact Table
CREATE TABLE Fact_Sales (
    Date_Key INT,
    Customer_Key INT,
    Product_Key INT,
    Location_Key INT,
    Seller_Key INT,
    price FLOAT,
    freight_value FLOAT,
    total_order_value FLOAT,
    delivery_duration_days FLOAT,
    review_score FLOAT,
    payment_type NVARCHAR(50),
    
    FOREIGN KEY (Date_Key) REFERENCES Dim_Date(Date_Key),
    FOREIGN KEY (Customer_Key) REFERENCES Dim_Customer(Customer_Key),
    FOREIGN KEY (Product_Key) REFERENCES Dim_Product(Product_Key),
    FOREIGN KEY (Location_Key) REFERENCES Dim_Location(Location_Key),
    FOREIGN KEY (Seller_Key) REFERENCES Dim_Seller(Seller_Key)
);


SELECT * FROM Dim_Product;
SELECT * FROM Dim_Seller;
SELECT * FROM Dim_Location;
SELECT * FROM Dim_Date;
SELECT * FROM Dim_Customer;

SELECT * FROM Fact_Sales;

