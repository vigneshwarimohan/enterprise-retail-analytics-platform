SELECT
  'raw.sales' AS table_name,
  COUNT(*) AS column_count
FROM `retailmart-dbt-dev.raw.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'sales'

UNION ALL

SELECT
  'raw.products_api',
  COUNT(*)
FROM `retailmart-dbt-dev.raw.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'products_api'

UNION ALL

SELECT
  'raw.promotions',
  COUNT(*)
FROM `retailmart-dbt-dev.raw.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'promotions'

UNION ALL

SELECT
  'staging.stg_sales',
  COUNT(*)
FROM `retailmart-dbt-dev.staging.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'stg_sales'

UNION ALL

SELECT
  'staging.stg_products',
  COUNT(*)
FROM `retailmart-dbt-dev.staging.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'stg_products'

UNION ALL

SELECT
  'staging.stg_promotions',
  COUNT(*)
FROM `retailmart-dbt-dev.staging.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'stg_promotions';