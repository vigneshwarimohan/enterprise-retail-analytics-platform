SELECT
  'raw' AS layer_name,
  table_schema AS dataset_name,
  table_name,
  table_type,
  creation_time
FROM `retailmart-dbt-dev.raw.INFORMATION_SCHEMA.TABLES`

UNION ALL

SELECT
  'staging' AS layer_name,
  table_schema AS dataset_name,
  table_name,
  table_type,
  creation_time
FROM `retailmart-dbt-dev.staging.INFORMATION_SCHEMA.TABLES`

UNION ALL

SELECT
  'intermediate' AS layer_name,
  table_schema AS dataset_name,
  table_name,
  table_type,
  creation_time
FROM `retailmart-dbt-dev.intermediate.INFORMATION_SCHEMA.TABLES`

UNION ALL

SELECT
  'marts' AS layer_name,
  table_schema AS dataset_name,
  table_name,
  table_type,
  creation_time
FROM `retailmart-dbt-dev.marts.INFORMATION_SCHEMA.TABLES`

ORDER BY
  layer_name,
  table_name;