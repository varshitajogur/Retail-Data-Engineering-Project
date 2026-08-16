# Methodology

## 1. Ingestion
Load customer, order and order-item source files into a raw landing zone.

## 2. Validation
Check schema, nulls, duplicates, key integrity, dates and invalid values.

## 3. Transformation
Use PySpark to:
- cast types
- normalise text
- deduplicate
- standardise dates
- join related entities
- create analytical fields

## 4. Modelling
Create a star schema with dimensions and a sales/order-item fact table.

## 5. Serving
Publish curated tables to Azure SQL Database.

## 6. Reporting
Connect the curated layer to Power BI.

## 7. Evaluation
Measure data quality, pipeline runtime, throughput and rejected records.

## ETL vs ELT

This project uses an ETL-oriented flow where data is transformed through a Spark processing layer before being served to the relational analytics layer. If the actual implementation performs transformations inside the warehouse instead, update this section to describe ELT accurately.
