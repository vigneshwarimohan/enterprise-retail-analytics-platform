SELECT
  'raw.sales' AS table_name,
  'raw' AS layer_name,
  COUNT(*) AS row_count
FROM `retailmart-dbt-dev.raw.sales`

UNION ALL

SELECT
  'raw.promotions' AS table_name,
  'raw' AS layer_name,
  COUNT(*) AS row_count
FROM `retailmart-dbt-dev.raw.promotions`

UNION ALL

SELECT
  'raw.products_api' AS table_name,
  'raw' AS layer_name,
  COUNT(*) AS row_count
FROM `retailmart-dbt-dev.raw.products_api`

UNION ALL

SELECT
  'staging.stg_sales' AS table_name,
  'staging' AS layer_name,
  COUNT(*) AS row_count
FROM `retailmart-dbt-dev.staging.stg_sales`

UNION ALL

SELECT
  'staging.stg_promotions' AS table_name,
  'staging' AS layer_name,
  COUNT(*) AS row_count
FROM `retailmart-dbt-dev.staging.stg_promotions`

UNION ALL

SELECT
  'staging.stg_products' AS table_name,
  'staging' AS layer_name,
  COUNT(*) AS row_count
FROM `retailmart-dbt-dev.staging.stg_products`;