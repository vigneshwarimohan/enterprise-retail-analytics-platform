SELECT
  'raw.sales' AS table_name,
  'raw' AS layer_name,
  'One row represents one sales transaction line' AS grain,
  'sale_id' AS primary_business_key

UNION ALL

SELECT
  'raw.products_api' AS table_name,
  'raw' AS layer_name,
  'One row represents one product' AS grain,
  'product_id' AS primary_business_key

UNION ALL

SELECT
  'raw.promotions' AS table_name,
  'raw' AS layer_name,
  'One row represents one promotion for a product over a date range' AS grain,
  'promo_id' AS primary_business_key

UNION ALL

SELECT
  'staging.stg_sales' AS table_name,
  'staging' AS layer_name,
  'One cleaned sales transaction line' AS grain,
  'sale_id' AS primary_business_key

UNION ALL

SELECT
  'staging.stg_products' AS table_name,
  'staging' AS layer_name,
  'One cleaned product record' AS grain,
  'product_id' AS primary_business_key

UNION ALL

SELECT
  'staging.stg_promotions' AS table_name,
  'staging' AS layer_name,
  'One cleaned promotion record for a product over a date range' AS grain,
  'promo_id' AS primary_business_key;