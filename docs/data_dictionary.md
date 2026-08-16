# Data Dictionary

## customers.csv

| Column | Type | Description |
|---|---|---|
| customer_id | integer | Customer identifier |
| customer_fname | string | Customer first name |
| customer_lname | string | Customer last name |
| username | string | Source username field |
| password | string | Source field; do not expose credentials in analytics |
| address | string | Customer address |
| city | string | Customer city |
| state | string | Customer state |
| pincode | string | Postal code |

## orders_new.csv

| Column | Type | Description |
|---|---|---|
| order_id | integer | Order identifier |
| order_date | timestamp | Order creation date/time |
| customer_id | integer | Customer foreign key |
| order_status | string | Order lifecycle status |

## order_items.csv

Inspect the source header before finalising this section and document every column with its type, source and transformation.

## Governance note

Customer names, addresses and other identifying fields should be minimised in analytics outputs. Password fields must never be loaded into an analytics-serving layer.
