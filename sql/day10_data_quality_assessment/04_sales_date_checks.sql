SELECT
  'invalid_sale_date' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.sales`
WHERE SAFE_CAST(sale_date AS DATE) IS NULL;


SELECT
  'invalid_sale_date' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.sales`
WHERE SAFE_CAST(sale_date AS DATE) IS NULL;


