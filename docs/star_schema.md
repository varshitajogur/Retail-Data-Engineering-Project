# Star Schema

## Fact table

### fact_order_items
Suggested grain: one row per order item.

Candidate fields:
- order_item_id
- order_id
- customer_key
- product_key
- date_key
- quantity
- unit_price
- sales_amount

Confirm exact order-item columns before implementing the physical table.

## Dimensions

### dim_customer
- customer_key
- customer_id
- customer_name
- city
- state
- pincode

### dim_date
- date_key
- date
- year
- quarter
- month
- month_name
- week
- day_of_week

### dim_product
Use the actual product fields available in `order_items.csv`.

## Design rationale

A star schema separates measurable business events from descriptive attributes and simplifies BI queries.
