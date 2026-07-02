SELECT
  s.sale_id,
  s.customer_id,
  s.product_id,
  s.sale_date,
  s.quantity,
  s.sales_amount,
  p.product_name,
  p.category,
  p.unit_price,

  CASE
    WHEN p.product_id IS NOT NULL THEN TRUE
    ELSE FALSE
  END AS has_valid_product

FROM `retailmart-dbt-dev.raw.sales` s
LEFT JOIN `retailmart-dbt-dev.raw.products_api` p
  ON s.product_id = p.product_id;