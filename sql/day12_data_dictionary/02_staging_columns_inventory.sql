SELECT
  table_schema AS dataset_name,
  table_name,
  column_name,
  data_type,
  is_nullable,
  ordinal_position
FROM `retailmart-dbt-dev.staging.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name IN ('stg_sales', 'stg_promotions', 'stg_products')
ORDER BY
  table_name,
  ordinal_position;