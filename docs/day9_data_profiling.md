# Day 9 — Data Profiling

## Objective

The objective of Day 9 is to profile the raw retail data loaded into BigQuery.

Data profiling helps understand the structure, volume, ranges, and distribution of the data before applying formal data quality rules and building downstream models.

## Raw Tables Profiled

The following raw tables were profiled:

- `raw.sales`
- `raw.promotions`
- `raw.products_api`

## Profiling Areas

The profiling checks covered:

- row counts
- sales date range
- active sales days
- total sales amount
- total quantity sold
- product category distribution
- unit price ranges
- promotion discount distribution
- unique customers
- unique products sold
- top products by sales amount

## Purpose of Data Profiling

Data profiling helps answer questions such as:

- How much data exists?
- What date range does the data cover?
- Are sales values within a reasonable range?
- Which product categories exist?
- How many products are promoted?
- What discount percentages are used?
- Which products have the highest sales?

## Day 9 Learning Summary

In Day 9, I profiled the raw retail dataset in BigQuery to understand row counts, date ranges, sales distributions, product categories, promotion patterns, and customer/product activity.

This profiling step helps prepare the project for Day 10 data quality assessment and future dbt modelling.