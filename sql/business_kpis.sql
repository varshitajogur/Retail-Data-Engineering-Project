-- Business KPIs for Power BI / reporting

SELECT
    COUNT(*) AS total_orders,
    COUNT(DISTINCT customer_id) AS active_customers
FROM analytics.orders;

SELECT
    CAST(order_date AS DATE) AS order_date,
    COUNT(*) AS daily_orders
FROM analytics.orders
GROUP BY CAST(order_date AS DATE)
ORDER BY order_date;

SELECT
    order_status,
    COUNT(*) AS orders,
    CAST(100.0 * COUNT(*) / SUM(COUNT(*)) OVER () AS DECIMAL(6,2)) AS pct_of_orders
FROM analytics.orders
GROUP BY order_status
ORDER BY orders DESC;
