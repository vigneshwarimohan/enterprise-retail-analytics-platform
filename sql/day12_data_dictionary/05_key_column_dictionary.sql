SELECT
  'sale_id' AS key_column,
  'raw.sales / stg_sales' AS used_in_tables,
  'Unique sale transaction identifier' AS key_description,
  'Should be unique and not null' AS expected_rule

UNION ALL

SELECT
  'product_id',
  'raw.sales / raw.products_api / raw.promotions / staging models',
  'Product identifier used to join sales, products, and promotions',
  'Should be not null and should exist in product master'

UNION ALL

SELECT
  'customer_id',
  'raw.sales / stg_sales',
  'Customer identifier used for customer-level sales analysis',
  'Should be not null for valid sales'

UNION ALL

SELECT
  'promo_id',
  'raw.promotions / stg_promotions',
  'Promotion identifier',
  'Should be unique and not null';