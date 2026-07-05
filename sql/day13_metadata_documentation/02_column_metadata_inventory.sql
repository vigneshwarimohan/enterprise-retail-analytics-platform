SELECT
  'raw' AS layer_name,
  table_schema AS dataset_name,
  table_name,
  column_name,
  data_type,
  is_nullable,
  ordinal_position
FROM `retailmart-dbt-dev.raw.INFORMATION_SCHEMA.COLUMNS`

UNION ALL

SELECT
  'staging' AS layer_name,
  table_schema AS dataset_name,
  table_name,
  column_name,
  data_type,
  is_nullable,
  ordinal_position
FROM `retailmart-dbt-dev.staging.INFORMATION_SCHEMA.COLUMNS`

ORDER BY
  layer_name,
  table_name,
  ordinal_position;