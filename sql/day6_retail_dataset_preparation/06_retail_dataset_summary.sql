SELECT
  'sales' AS entity_name,
  COUNT(*) AS row_count
FROM `retailmart-dbt-dev.staging.stg_sales`

UNION ALL

SELECT
  'products' AS entity_name,
  COUNT(*) AS row_count
FROM `retailmart-dbt-dev.staging.stg_products`

UNION ALL

SELECT
  'promotions' AS entity_name,
  COUNT(*) AS row_count
FROM `retailmart-dbt-dev.staging.stg_promotions`;