SELECT
  category,
  COUNT(*) AS product_count,
  MIN(unit_price) AS min_unit_price,
  MAX(unit_price) AS max_unit_price,
  AVG(unit_price) AS avg_unit_price
FROM `retailmart-dbt-dev.raw.products_api`
GROUP BY category
ORDER BY product_count DESC;