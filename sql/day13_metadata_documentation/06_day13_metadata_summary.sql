SELECT
  'raw_tables' AS metadata_metric,
  COUNT(*) AS metric_value
FROM `retailmart-dbt-dev.raw.INFORMATION_SCHEMA.TABLES`

UNION ALL

SELECT
  'staging_tables' AS metadata_metric,
  COUNT(*) AS metric_value
FROM `retailmart-dbt-dev.staging.INFORMATION_SCHEMA.TABLES`

UNION ALL

SELECT
  'intermediate_tables' AS metadata_metric,
  COUNT(*) AS metric_value
FROM `retailmart-dbt-dev.intermediate.INFORMATION_SCHEMA.TABLES`

UNION ALL

SELECT
  'marts_tables' AS metadata_metric,
  COUNT(*) AS metric_value
FROM `retailmart-dbt-dev.marts.INFORMATION_SCHEMA.TABLES`

UNION ALL

SELECT
  'raw_columns' AS metadata_metric,
  COUNT(*) AS metric_value
FROM `retailmart-dbt-dev.raw.INFORMATION_SCHEMA.COLUMNS`

UNION ALL

SELECT
  'staging_columns' AS metadata_metric,
  COUNT(*) AS metric_value
FROM `retailmart-dbt-dev.staging.INFORMATION_SCHEMA.COLUMNS`;