SELECT
  COUNT(*) AS total_rows,
  MIN(sales_amount) AS min_sales_amount,
  MAX(sales_amount) AS max_sales_amount,
  AVG(sales_amount) AS avg_sales_amount,
  SUM(sales_amount) AS total_sales_amount,
  MIN(quantity) AS min_quantity,
  MAX(quantity) AS max_quantity,
  AVG(quantity) AS avg_quantity,
  SUM(quantity) AS total_quantity
FROM `retailmart-dbt-dev.raw.sales`;