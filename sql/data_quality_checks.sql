-- Data-quality checks

-- Duplicate customer IDs
SELECT customer_id, COUNT(*) AS duplicate_count
FROM staging.customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- Null customer IDs in orders
SELECT COUNT(*) AS null_customer_ids
FROM staging.orders
WHERE customer_id IS NULL;

-- Duplicate order IDs
SELECT order_id, COUNT(*) AS duplicate_count
FROM staging.orders
GROUP BY order_id
HAVING COUNT(*) > 1;

-- Invalid / future dates
SELECT COUNT(*) AS invalid_dates
FROM staging.orders
WHERE order_date IS NULL OR order_date > GETDATE();

-- Referential integrity
SELECT COUNT(*) AS orphan_orders
FROM staging.orders o
LEFT JOIN staging.customers c
    ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;
