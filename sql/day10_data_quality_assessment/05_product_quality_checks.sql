 SELECT
  'product_id_nulls' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.products_api`
WHERE product_id IS NULL

UNION ALL

SELECT
  'product_name_nulls' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.products_api`
WHERE product_name IS NULL

UNION ALL

SELECT
  'category_nulls' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.products_api`
WHERE category IS NULL

UNION ALL

SELECT
  'unit_price_nulls' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.products_api`
WHERE unit_price IS NULL

UNION ALL

SELECT
  'negative_unit_price' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.products_api`
WHERE unit_price < 0;