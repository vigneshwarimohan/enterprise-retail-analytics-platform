SELECT
  'negative_quantity' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.sales`
WHERE quantity < 0

UNION ALL

SELECT
  'zero_quantity' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.sales`
WHERE quantity = 0

UNION ALL

SELECT
  'negative_sales_amount' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.sales`
WHERE sales_amount < 0

UNION ALL

SELECT
  'zero_sales_amount' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.sales`
WHERE sales_amount = 0;