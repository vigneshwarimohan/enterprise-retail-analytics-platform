SELECT
  'sale_id' AS column_name,
  'key' AS column_role,
  'Unique identifier for a sale transaction line' AS business_meaning

UNION ALL

SELECT
  'customer_id',
  'dimension',
  'Identifier for the customer who made the purchase'

UNION ALL

SELECT
  'product_id',
  'key',
  'Identifier used to connect sales, products, and promotions'

UNION ALL

SELECT
  'sale_date',
  'dimension',
  'Date when the sale occurred'

UNION ALL

SELECT
  'quantity',
  'measure',
  'Number of units sold'

UNION ALL

SELECT
  'sales_amount',
  'measure',
  'Gross sales amount before estimated promotion discount'

UNION ALL

SELECT
  'product_name',
  'dimension',
  'Name of the product'

UNION ALL

SELECT
  'category',
  'dimension',
  'Product category used for reporting and grouping'

UNION ALL

SELECT
  'unit_price',
  'measure',
  'Standard unit price of the product'

UNION ALL

SELECT
  'promo_id',
  'key',
  'Unique identifier for a promotion'

UNION ALL

SELECT
  'discount_percentage',
  'measure',
  'Promotion discount percentage applied to eligible sales'

UNION ALL

SELECT
  'start_date',
  'dimension',
  'Promotion start date'

UNION ALL

SELECT
  'end_date',
  'dimension',
  'Promotion end date';