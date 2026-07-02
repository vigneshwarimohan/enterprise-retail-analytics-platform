SELECT
  MIN(SAFE_CAST(sale_date AS DATE)) AS first_sale_date,
  MAX(SAFE_CAST(sale_date AS DATE)) AS last_sale_date,
  COUNT(DISTINCT SAFE_CAST(sale_date AS DATE)) AS active_sale_days
FROM `retailmart-dbt-dev.raw.sales`;

SELECT
  MIN(SAFE_CAST(sale_date AS DATE)) AS first_sale_date,
  MAX(SAFE_CAST(sale_date AS DATE)) AS last_sale_date,
  COUNT(DISTINCT SAFE_CAST(sale_date AS DATE)) AS active_sale_days
FROM `retailmart-dbt-dev.raw.sales`;