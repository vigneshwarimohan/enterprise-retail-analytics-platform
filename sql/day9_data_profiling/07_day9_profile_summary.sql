SELECT
  'sales_total_rows' AS profile_metric,
  CAST(COUNT(*) AS STRING) AS metric_value
FROM `retailmart-dbt-dev.raw.sales`

UNION ALL

SELECT
  'sales_unique_customers' AS profile_metric,
  CAST(COUNT(DISTINCT customer_id) AS STRING) AS metric_value
FROM `retailmart-dbt-dev.raw.sales`

UNION ALL

SELECT
  'sales_unique_products' AS profile_metric,
  CAST(COUNT(DISTINCT product_id) AS STRING) AS metric_value
FROM `retailmart-dbt-dev.raw.sales`

UNION ALL

SELECT
  'products_total_rows' AS profile_metric,
  CAST(COUNT(*) AS STRING) AS metric_value
FROM `retailmart-dbt-dev.raw.products_api`

UNION ALL

SELECT
  'promotions_total_rows' AS profile_metric,
  CAST(COUNT(*) AS STRING) AS metric_value
FROM `retailmart-dbt-dev.raw.promotions`;