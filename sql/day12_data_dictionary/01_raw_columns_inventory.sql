SELECT
  table_schema AS dataset_name,
  table_name,
  column_name,
  data_type,
  is_nullable,
  ordinal_position
FROM `retailmart-dbt-dev.raw.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name IN ('sales', 'promotions', 'products_api')
ORDER BY
  table_name,
  ordinal_position;