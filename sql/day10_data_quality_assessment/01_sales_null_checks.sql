SELECT
  'sale_id_nulls' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.sales`
WHERE sale_id IS NULL

UNION ALL

SELECT
  'customer_id_nulls' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.sales`
WHERE customer_id IS NULL

UNION ALL

SELECT
  'product_id_nulls' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.sales`
WHERE product_id IS NULL

UNION ALL

SELECT
  'sale_date_nulls' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.sales`
WHERE sale_date IS NULL

UNION ALL

SELECT
  'quantity_nulls' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.sales`
WHERE quantity IS NULL

UNION ALL

SELECT
  'sales_amount_nulls' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.sales`
WHERE sales_amount IS NULL;