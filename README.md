# Retail Data Engineering Project — Master's Portfolio Upgrade

This repository demonstrates an end-to-end retail data engineering workflow using the project's customer, order and order-item datasets.

## Current Architecture

**Sources → Ingestion → ADLS Gen2 → Databricks / PySpark → Data Quality → Azure SQL → Power BI**

The repository currently contains the original `Datasets/` folder and `Sales_Project.ipynb`. The files added in this upgrade provide reproducible engineering artifacts around that existing work.

## Repository Structure

```text
Retail-Data-Engineering-Project/
├── Datasets/
├── notebooks/
├── sql/
├── architecture/
├── docs/
├── data_quality/
├── performance/
├── tests/
├── dashboard/
├── images/
├── Sales_Project.ipynb
└── README.md
```

## Datasets

The current repository contains:
- `customers.csv`
- `orders_new.csv`
- `orders_sample.csv`
- `order_items.csv`

The customer schema contains `customer_id`, customer name fields and location fields; the orders schema contains `order_id`, `order_date`, `customer_id` and `order_status`. citeturn3view0turn4view0

## Engineering Workflow

1. Ingest source files.
2. Store raw data in a cloud landing zone.
3. Validate schemas and data quality.
4. Transform using PySpark.
5. Model analytics-ready data using a star schema.
6. Load curated tables into Azure SQL Database.
7. Orchestrate the workflow with Azure Data Factory.
8. Store credentials securely using Azure Key Vault.
9. Connect curated data to Power BI.
10. Measure pipeline performance and data-quality outcomes.

## Important Evidence Rule

Do not claim Azure Data Factory, Databricks, Azure SQL, Key Vault or Power BI execution merely because the architecture is documented. Add screenshots and measured outputs from the actual environment before marking those components as implemented.

## Data Quality

Run the data-quality scripts/notebooks and record:
- row counts
- null counts
- duplicate counts
- invalid key counts
- date validation
- referential integrity

The generated report belongs in `data_quality/`.

## Performance

Record:
- input rows
- output rows
- rejected rows
- runtime
- throughput
- success/failure rate

Only report measured values.

## Academic Positioning

This project demonstrates:
- cloud data engineering
- ETL/ELT design
- distributed processing with Spark
- relational data modelling
- data-quality engineering
- pipeline orchestration
- BI enablement
- performance measurement

## Limitations

The public repository is a portfolio project. Cloud-service claims should be supported by implementation evidence and screenshots from the actual Azure environment.
