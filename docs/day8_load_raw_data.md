# Day 8 — Load Raw Data

## Objective

The objective of Day 8 is to generate, load, and validate raw retail data in BigQuery.

The raw layer stores source-aligned data before transformation. This project uses the raw layer as the starting point for dbt staging, intermediate, and mart models.

## Raw Tables

The raw tables used in this project are:

- `raw.sales`
- `raw.promotions`
- `raw.products_api`

## Source Types

| Table | Source Type | Description |
|---|---|---|
| `raw.sales` | CSV | Sales transaction data loaded from a CSV file |
| `raw.promotions` | JSON / NDJSON | Promotion data loaded from a JSON/NDJSON source |
| `raw.products_api` | REST API / NDJSON | Product data generated through an API-style ingestion pattern and loaded as NDJSON |

## Raw Data Volume

The Day 8 synthetic raw data contains:

| Table | Row Count |
|---|---:|
| `raw.sales` | 1,000 |
| `raw.promotions` | 50 |
| `raw.products_api` | 100 |

## Raw Layer Design

The raw layer keeps data close to the original source format.

The purpose of the raw layer is to:

- preserve source data
- separate ingestion from transformation
- provide a reliable starting point for dbt models
- support validation and troubleshooting

## Loading Pattern

### CSV Load

Sales data was loaded from a CSV file into:

`retailmart-dbt-dev.raw.sales`

### JSON / NDJSON Load

Promotion data was loaded from NDJSON into:

`retailmart-dbt-dev.raw.promotions`

### REST API / NDJSON Load

Product data was generated using a Python ingestion pattern and loaded into:

`retailmart-dbt-dev.raw.products_api`

## Validation Performed

The following validation checks were performed:

- sales row count
- unique sale ID count
- unique customer count
- unique product count
- sales date range
- promotion row count
- product row count
- product category distribution
- null key checks
- negative value checks
- raw layer summary

## Raw to Staging Flow

```text
raw.sales
   ↓
stg_sales

raw.promotions
   ↓
stg_promotions

raw.products_api
   ↓
stg_products