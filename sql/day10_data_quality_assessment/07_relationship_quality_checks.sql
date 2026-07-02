SELECT
  s.product_id,
  COUNT(*) AS sales_row_count
FROM `retailmart-dbt-dev.raw.sales` s
LEFT JOIN `retailmart-dbt-dev.raw.products_api` p
  ON s.product_id = p.product_id
WHERE p.product_id IS NULL
GROUP BY s.product_id
ORDER BY sales_row_count DESC;