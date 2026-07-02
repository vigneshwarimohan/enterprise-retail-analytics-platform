# Day 11 — Business Rules

## Objective

The objective of Day 11 is to define the business rules that will guide future dbt modelling.

Business rules explain how raw data should be interpreted before it is transformed into staging, intermediate, and mart models.

## Raw Tables Used

The business rules are based on:

- `raw.sales`
- `raw.products_api`
- `raw.promotions`

## Rule 1 — Valid Sale

A sale is considered valid when:

- `sale_id` is not null
- `customer_id` is not null
- `product_id` is not null
- `sale_date` can be converted to a valid date
- `quantity` is greater than 0
- `sales_amount` is greater than 0

## Rule 2 — Sales to Product Relationship

Sales should join to products using:

`sales.product_id = products_api.product_id`

Every sale should ideally have a matching product in the product master.

## Rule 3 — Promoted Sale

A sale is considered promoted when:

`sales.product_id = promotions.product_id`

and

`sales.sale_date` falls between `promotions.start_date` and `promotions.end_date`.

If multiple promotions match one sale, the promotion with the highest discount percentage is prioritised.

## Rule 4 — Product Category

Every product should have a category.

If a product category is missing, it should be classified as:

`Uncategorised`

## Rule 5 — Business Metrics

The main business metrics are:

| Metric | Rule |
|---|---|
| `quantity_sold` | equal to `quantity` |
| `gross_sales_amount` | equal to `sales_amount` |
| `estimated_discount_amount` | `sales_amount * discount_percentage / 100` |
| `estimated_net_sales_amount` | `gross_sales_amount - estimated_discount_amount` |

## Rule 6 — Raw Layer Principle

The raw layer should not apply heavy business logic.

Business rules are documented here first and will later be implemented properly in dbt staging, intermediate, and mart models.

## Why This Matters

Business rules help ensure that data models are not just technically correct, but also meaningful for business reporting.

They support consistent definitions for sales, products, promotions, discount calculations, and future dashboard metrics.

## Day 11 Learning Summary

In Day 11, I defined the key business rules for valid sales, product relationships, promotion matching, category standardisation, and sales metrics. These rules will guide the future dbt modelling work in the Enterprise Retail Analytics Platform.