SELECT
  'raw.sales' AS table_name,
  COUNT(*) AS row_count
FROM `retailmart-dbt-dev.raw.sales`

UNION ALL

SELECT
  'raw.promotions' AS table_name,
  COUNT(*) AS row_count
FROM `retailmart-dbt-dev.raw.promotions`

UNION ALL

SELECT
  'raw.products_api' AS table_name,
  COUNT(*) AS row_count
FROM `retailmart-dbt-dev.raw.products_api`;