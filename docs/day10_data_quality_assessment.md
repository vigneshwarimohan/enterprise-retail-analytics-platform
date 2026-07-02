# Day 10 — Data Quality Assessment

## Objective

The objective of Day 10 is to assess the quality of the raw retail data before using it for downstream dbt modelling.

Day 9 focused on profiling and understanding the data. Day 10 focuses on identifying data quality issues.

## Raw Tables Assessed

The following raw tables were assessed:

- `raw.sales`
- `raw.products_api`
- `raw.promotions`

## Data Quality Checks Performed

The checks covered:

- null key checks
- duplicate key checks
- negative value checks
- invalid date checks
- invalid promotion date range checks
- invalid discount percentage checks
- sales-to-product relationship checks
- promotion-to-product relationship checks

## Sales Quality Checks

The sales table was checked for:

- null sale IDs
- null customer IDs
- null product IDs
- null sale dates
- duplicate sale IDs
- negative quantities
- negative sales amounts
- invalid sale dates

## Product Quality Checks

The products table was checked for:

- null product IDs
- null product names
- null categories
- null unit prices
- duplicate product IDs
- negative unit prices

## Promotion Quality Checks

The promotions table was checked for:

- null promotion IDs
- null product IDs
- null discount percentages
- null start dates
- null end dates
- invalid discount percentages
- promotion start dates after end dates

## Relationship Checks

The relationship checks confirmed that:

- every product sold in `raw.sales` exists in `raw.products_api`
- every product promoted in `raw.promotions` exists in `raw.products_api`

## Why This Matters

Data quality assessment helps identify issues before transformation and reporting. If poor-quality raw data enters staging, intermediate, and mart models, downstream dashboards and business decisions may become unreliable.

## Day 10 Learning Summary

In Day 10, I assessed the quality of the raw retail data using SQL checks for nulls, duplicates, invalid values, invalid dates, and relationship mismatches. This step prepares the project for dbt-based testing and modelling in later stages.