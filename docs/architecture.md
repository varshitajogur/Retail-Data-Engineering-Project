# Architecture

## Target flow

Amazon S3 / CSV / Azure SQL
→ Azure Data Factory
→ ADLS Gen2 Raw
→ Azure Databricks / PySpark
→ Data Quality
→ ADLS Curated
→ Azure SQL Database
→ Power BI

## Layering

### Bronze / Raw
Immutable source extracts.

### Silver / Cleaned
Validated, typed and deduplicated data.

### Gold / Analytics
Business-ready dimensional model.

## Azure components

| Component | Role |
|---|---|
| Azure Data Factory | Pipeline orchestration |
| ADLS Gen2 | Raw/curated storage |
| Azure Databricks | Spark transformation |
| Azure SQL Database | Relational serving layer |
| Azure Key Vault | Secret management |
| Power BI | Reporting |

**Verification:** mark each component as implemented only after the corresponding service has actually been configured and tested.
