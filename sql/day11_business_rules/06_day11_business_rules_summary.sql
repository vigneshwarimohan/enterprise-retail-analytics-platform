SELECT
  'total_sales_rows' AS metric_name,
  COUNT(*) AS metric_value
FROM `retailmart-dbt-dev.raw.sales`

UNION ALL

SELECT
  'valid_sales_rows' AS metric_name,
  COUNT(*) AS metric_value
FROM `retailmart-dbt-dev.raw.sales`
WHERE sale_id IS NOT NULL
  AND customer_id IS NOT NULL
  AND product_id IS NOT NULL
  AND SAFE_CAST(sale_date AS DATE) IS NOT NULL
  AND quantity > 0
  AND sales_amount > 0

UNION ALL

SELECT
  'sales_with_valid_products' AS metric_name,
  COUNT(*) AS metric_value
FROM `retailmart-dbt-dev.raw.sales` s
INNER JOIN `retailmart-dbt-dev.raw.products_api` p
  ON s.product_id = p.product_id

UNION ALL

SELECT
  'promoted_sales' AS metric_name,
  COUNT(DISTINCT s.sale_id) AS metric_value
FROM `retailmart-dbt-dev.raw.sales` s
INNER JOIN `retailmart-dbt-dev.raw.promotions` pr
  ON s.product_id = pr.product_id
 AND SAFE_CAST(s.sale_date AS DATE)
     BETWEEN SAFE_CAST(pr.start_date AS DATE)
         AND SAFE_CAST(pr.end_date AS DATE);