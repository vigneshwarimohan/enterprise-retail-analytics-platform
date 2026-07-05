# Enterprise Retail Analytics Platform — Metadata Catalog

## Purpose

This metadata catalog documents the main datasets, tables, layers, source mappings, and usage notes for the Enterprise Retail Analytics Platform.

Metadata helps explain how the warehouse is organised and how data flows from raw sources to analytics-ready models.

---

## Warehouse Layers

| Layer | Purpose | Transformation Level | Usage |
|---|---|---|---|
| raw | Stores source-aligned data from files and APIs | Minimal transformation | Starting point for dbt staging |
| staging | Stores cleaned and standardised source models | Basic cleaning and type standardisation | Input for intermediate models |
| intermediate | Stores reusable business logic | Joins and enrichment | Input for final marts |
| marts | Stores reporting-ready facts and dimensions | Final business logic | BI dashboards and analytics |

---

## Current Raw Tables

| Table | Source Type | Purpose | Grain |
|---|---|---|---|
| raw.sales | CSV | Sales transaction data | One sales transaction line |
| raw.promotions | NDJSON | Promotion data | One promotion for a product/date range |
| raw.products_api | REST API / NDJSON | Product master data | One product |

---

## Current Staging Models

| Model | Source Table | Purpose | Grain |
|---|---|---|---|
| stg_sales | raw.sales | Cleaned sales data | One cleaned sales transaction line |
| stg_promotions | raw.promotions | Cleaned promotion data | One cleaned promotion record |
| stg_products | raw.products_api | Cleaned product data | One cleaned product record |

---

## Source Mapping

| Source | Source Type | Raw Table | Staging Model |
|---|---|---|---|
| sales.csv | CSV | raw.sales | stg_sales |
| promotions.ndjson | NDJSON | raw.promotions | stg_promotions |
| products_api.ndjson | REST API / NDJSON | raw.products_api | stg_products |

---

## Ownership Notes

This is a portfolio-grade learning project.

The data is synthetic and does not contain real customer, company, or confidential data.

The project is maintained as part of the Enterprise Retail Analytics Platform learning roadmap.

---

## Refresh / Load Notes

| Table | Load Method | Current Refresh Pattern |
|---|---|---|
| raw.sales | BigQuery CSV load | Manual load for project development |
| raw.promotions | BigQuery NDJSON load | Manual load for project development |
| raw.products_api | Python API-style generation + NDJSON load | Manual load for project development |

In a production environment, these loads could be orchestrated using scheduling tools such as Airflow, Cloud Composer, or other workflow orchestration systems.

---

## Downstream Usage

The raw and staging tables will later support:

- intermediate sales enrichment models
- product dimension models
- sales fact models
- promotion performance models
- BI dashboards
- dbt documentation
- RAG + LLM assistant layer