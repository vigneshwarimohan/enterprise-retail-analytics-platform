SELECT
  sale_id,
  customer_id,
  product_id,
  sale_date,
  quantity,
  sales_amount,

  CASE
    WHEN sale_id IS NOT NULL
     AND customer_id IS NOT NULL
     AND product_id IS NOT NULL
     AND SAFE_CAST(sale_date AS DATE) IS NOT NULL
     AND quantity > 0
     AND sales_amount > 0
    THEN TRUE
    ELSE FALSE
  END AS is_valid_sale

FROM `retailmart-dbt-dev.raw.sales`;