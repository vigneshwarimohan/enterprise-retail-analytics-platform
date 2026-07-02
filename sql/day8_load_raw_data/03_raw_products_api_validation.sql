SELECT
  COUNT(*) AS total_rows,
  COUNT(DISTINCT product_id) AS unique_products
FROM `retailmart-dbt-dev.raw.products_api`;

SELECT
  COUNT(*) AS total_rows,
  COUNT(DISTINCT product_id) AS unique_products
FROM `retailmart-dbt-dev.raw.products_api`;