SELECT
  s.sale_id,
  s.customer_id,
  s.product_id,
  s.sale_date,
  s.quantity,
  s.sales_amount,
  p.promo_id,
  p.discount_percentage,
  p.start_date,
  p.end_date
FROM `retailmart-dbt-dev.staging.stg_sales` s
LEFT JOIN `retailmart-dbt-dev.staging.stg_promotions` p
  ON s.product_id = p.product_id
 AND s.sale_date BETWEEN p.start_date AND p.end_date
ORDER BY
  s.sale_date,
  s.sale_id;