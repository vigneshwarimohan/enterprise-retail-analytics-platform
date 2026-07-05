# Enterprise Retail Analytics Platform — Data Dictionary

## Purpose

This data dictionary documents the main raw and staging tables used in the Enterprise Retail Analytics Platform.

It explains table purpose, grain, key columns, measures, dimensions, and business meaning.

---

## Table: raw.sales

### Layer

Raw

### Grain

One row represents one sales transaction line.

### Purpose

Stores source sales transaction data loaded from CSV.

| Column | Role | Business Meaning | Example |
|---|---|---|---|
| sale_id | Key | Unique identifier for a sale transaction line | S00001 |
| customer_id | Dimension | Identifier for the customer | C0001 |
| product_id | Key | Product sold in the transaction | P001 |
| sale_date | Dimension | Date when the sale occurred | 2026-01-01 |
| quantity | Measure | Number of units sold | 3 |
| sales_amount | Measure | Gross sales amount | 125.50 |

---

## Table: raw.products_api

### Layer

Raw

### Grain

One row represents one product.

### Purpose

Stores product data generated through an API-style ingestion pattern and loaded as NDJSON.

| Column | Role | Business Meaning | Example |
|---|---|---|---|
| product_id | Key | Unique product identifier | P001 |
| product_name | Dimension | Product name | Dairy Product 1 |
| category | Dimension | Product category | Dairy |
| unit_price | Measure | Standard product unit price | 12.99 |

---

## Table: raw.promotions

### Layer

Raw

### Grain

One row represents one promotion for one product over a date range.

### Purpose

Stores promotion data loaded from NDJSON.

| Column | Role | Business Meaning | Example |
|---|---|---|---|
| promo_id | Key | Unique promotion identifier | PR001 |
| product_id | Key | Product included in the promotion | P001 |
| discount_percentage | Measure | Promotion discount percentage | 10 |
| start_date | Dimension | Promotion start date | 2026-01-01 |
| end_date | Dimension | Promotion end date | 2026-01-14 |

---

## Staging Tables

The staging tables clean and standardise raw source data.

| Staging Table | Source Table | Grain |
|---|---|---|
| stg_sales | raw.sales | One cleaned sales transaction line |
| stg_products | raw.products_api | One cleaned product record |
| stg_promotions | raw.promotions | One cleaned promotion record |

---

## Important Keys

| Key | Description | Used For |
|---|---|---|
| sale_id | Unique sale transaction identifier | Sales uniqueness |
| customer_id | Customer identifier | Customer-level sales analysis |
| product_id | Product identifier | Sales-product-promotion joins |
| promo_id | Promotion identifier | Promotion analysis |

---

## Measures

| Measure | Business Meaning |
|---|---|
| quantity | Number of units sold |
| sales_amount | Gross sales amount |
| unit_price | Product unit price |
| discount_percentage | Promotion discount percentage |

---

## Dimensions

| Dimension | Business Meaning |
|---|---|
| sale_date | Date of sale |
| customer_id | Customer identifier |
| product_id | Product identifier |
| product_name | Product name |
| category | Product category |
| start_date | Promotion start date |
| end_date | Promotion end date |

---

## Notes

The raw layer stores source-aligned data.

The staging layer standardises naming, data types, and basic structure.

Business rules defined in Day 11 will later guide intermediate and mart-level dbt models.