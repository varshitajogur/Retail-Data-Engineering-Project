-- Azure SQL / SQL Server analytical schema
CREATE SCHEMA staging;
GO
CREATE SCHEMA analytics;
GO

CREATE TABLE analytics.dim_customer (
    customer_key INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT NOT NULL UNIQUE,
    customer_fname NVARCHAR(100),
    customer_lname NVARCHAR(100),
    city NVARCHAR(100),
    state NVARCHAR(50),
    pincode NVARCHAR(20)
);
GO

CREATE TABLE analytics.dim_date (
    date_key INT PRIMARY KEY,
    calendar_date DATE NOT NULL UNIQUE,
    calendar_year INT,
    quarter_number INT,
    month_number INT,
    month_name NVARCHAR(20),
    day_of_week INT
);
GO

-- Final fact table should be created after confirming order_items.csv schema.
-- Keep the fact grain at one row per order item.
