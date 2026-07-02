SELECT
  COUNT(*) AS total_rows,
  COUNT(DISTINCT sale_id) AS unique_sale_ids,
  COUNT(DISTINCT customer_id) AS unique_customers,
  COUNT(DISTINCT product_id) AS unique_products,
  MIN(sale_date) AS first_sale_date,
  MAX(sale_date) AS last_sale_date,
  SUM(quantity) AS total_quantity,
  SUM(sales_amount) AS total_sales_amount
FROM `retailmart-dbt-dev.raw.sales`;