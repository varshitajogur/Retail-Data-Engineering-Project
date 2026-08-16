-- Retail analytics queries
-- Run against the curated Azure SQL layer.

-- Orders by status
SELECT order_status, COUNT(*) AS order_count
FROM analytics.orders
GROUP BY order_status
ORDER BY order_count DESC;

-- Orders by month
SELECT
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    COUNT(*) AS order_count
FROM analytics.orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY order_year, order_month;

-- Customer order volume
SELECT
    customer_id,
    COUNT(*) AS order_count
FROM analytics.orders
GROUP BY customer_id
ORDER BY order_count DESC;

-- Customer/order referential-integrity check
SELECT COUNT(*) AS orphan_orders
FROM analytics.orders o
LEFT JOIN analytics.dim_customer c
    ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;
