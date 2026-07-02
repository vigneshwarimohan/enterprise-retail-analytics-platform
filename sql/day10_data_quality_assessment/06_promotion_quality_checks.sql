SELECT
  'promo_id_nulls' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.promotions`
WHERE promo_id IS NULL

UNION ALL

SELECT
  'product_id_nulls' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.promotions`
WHERE product_id IS NULL

UNION ALL

SELECT
  'discount_percentage_nulls' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.promotions`
WHERE discount_percentage IS NULL

UNION ALL

SELECT
  'start_date_nulls' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.promotions`
WHERE start_date IS NULL

UNION ALL

SELECT
  'end_date_nulls' AS check_name,
  COUNT(*) AS issue_count
FROM `retailmart-dbt-dev.raw.promotions`
WHERE end_date IS NULL;