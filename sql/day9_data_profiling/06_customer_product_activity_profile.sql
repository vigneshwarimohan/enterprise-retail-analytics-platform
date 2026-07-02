SELECT
  COUNT(DISTINCT customer_id) AS unique_customers,
  COUNT(DISTINCT product_id) AS unique_products_sold,
  COUNT(DISTINCT sale_id) AS unique_sales
FROM `retailmart-dbt-dev.raw.sales`;


SELECT
  product_id,
  COUNT(*) AS sales_row_count,
  SUM(quantity) AS total_quantity,
  SUM(sales_amount) AS total_sales_amount
FROM `retailmart-dbt-dev.raw.sales`
GROUP BY product_id
ORDER BY total_sales_amount DESC
LIMIT 10;
