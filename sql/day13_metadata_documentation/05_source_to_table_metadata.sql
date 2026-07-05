SELECT
  'sales.csv' AS source_name,
  'CSV file' AS source_type,
  'raw.sales' AS raw_table,
  'staging.stg_sales' AS staging_model,
  'Sales transaction data' AS business_area

UNION ALL

SELECT
  'promotions.ndjson',
  'NDJSON file',
  'raw.promotions',
  'staging.stg_promotions',
  'Promotion data'

UNION ALL

SELECT
  'products_api.ndjson',
  'REST API / NDJSON',
  'raw.products_api',
  'staging.stg_products',
  'Product master data';