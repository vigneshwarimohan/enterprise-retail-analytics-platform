SELECT
  'sales_null_sale_id' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.sales`
WHERE sale_id IS NULL

UNION ALL

SELECT
  'sales_null_product_id' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.sales`
WHERE product_id IS NULL

UNION ALL

SELECT
  'sales_null_sale_date' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.sales`
WHERE sale_date IS NULL

UNION ALL

SELECT
  'sales_negative_quantity' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.sales`
WHERE quantity < 0

UNION ALL

SELECT
  'sales_negative_sales_amount' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.sales`
WHERE sales_amount < 0

UNION ALL

SELECT
  'promotions_null_promo_id' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.promotions`
WHERE promo_id IS NULL

UNION ALL

SELECT
  'products_null_product_id' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.products_api`
WHERE product_id IS NULL;