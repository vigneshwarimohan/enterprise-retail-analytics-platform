SELECT
  'sales_null_sale_id' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.sales`
WHERE sale_id IS NULL

UNION ALL

SELECT
  'sales_duplicate_sale_id' AS check_name,
  COUNT(*) AS issue_count
FROM (
  SELECT sale_id
  FROM `retailmart-dbt-dev.raw.sales`
  GROUP BY sale_id
  HAVING COUNT(*) > 1
)

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
  'products_duplicate_product_id' AS check_name,
  COUNT(*) AS issue_count
FROM (
  SELECT product_id
  FROM `retailmart-dbt-dev.raw.products_api`
  GROUP BY product_id
  HAVING COUNT(*) > 1
)

UNION ALL

SELECT
  'products_negative_unit_price' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.products_api`
WHERE unit_price < 0

UNION ALL

SELECT
  'promotions_invalid_discount' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.promotions`
WHERE discount_percentage < 0
   OR discount_percentage > 100

UNION ALL

SELECT
  'promotions_invalid_date_range' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.promotions`
WHERE SAFE_CAST(start_date AS DATE) > SAFE_CAST(end_date AS DATE)

UNION ALL

SELECT
  'sales_products_missing_from_master' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.sales` s
LEFT JOIN `retailmart-dbt-dev.raw.products_api` p
  ON s.product_id = p.product_id
WHERE p.product_id IS NULL

UNION ALL

SELECT
  'promotions_products_missing_from_master' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.promotions` pr
LEFT JOIN `retailmart-dbt-dev.raw.products_api` p
  ON pr.product_id = p.product_id
WHERE p.product_id IS NULL;