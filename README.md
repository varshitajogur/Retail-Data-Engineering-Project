# Visual Project Evidence

## Azure Architecture

The documented architecture integrates multi-source ingestion, ADLS Gen2, Azure Data Factory, Databricks/Spark and Azure SQL Database, with Key Vault for credential management.

![Azure architecture](images/01_azure_architecture.png)

## End-to-End Pipeline

The repository describes a six-stage workflow from ingestion through storage, validation, Spark transformation, Azure SQL loading and analytics.

![Data engineering pipeline](images/02_data_pipeline.png)

## Technology Stack

![Retail data engineering technology stack](images/03_technology_stack.png)

## Dataset Overview

The project processes three core retail datasets: Customers, Orders and Order Items.

![Retail datasets](images/04_dataset_overview.png)

## Implementation Scope

The current README documents three core datasets, three ingestion source types, five Azure components and two core development/query languages.

![Implementation scope](images/05_implementation_scope.png)

> **Evidence note:** These visuals communicate the architecture and documented implementation scope. They do not claim pipeline runtime, throughput, row counts, data-quality percentages or Azure execution screenshots that are not present in the repository.
