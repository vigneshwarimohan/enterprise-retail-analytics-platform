SELECT
  s.sale_id,
  s.customer_id,
  s.product_id,
  SAFE_CAST(s.sale_date AS DATE) AS sale_date,
  s.quantity,
  s.sales_amount,
  pr.promo_id,
  pr.discount_percentage,
  SAFE_CAST(pr.start_date AS DATE) AS promotion_start_date,
  SAFE_CAST(pr.end_date AS DATE) AS promotion_end_date,

  CASE
    WHEN pr.promo_id IS NOT NULL THEN TRUE
    ELSE FALSE
  END AS is_promoted_sale

FROM `retailmart-dbt-dev.raw.sales` s
LEFT JOIN `retailmart-dbt-dev.raw.promotions` pr
  ON s.product_id = pr.product_id
 AND SAFE_CAST(s.sale_date AS DATE)
     BETWEEN SAFE_CAST(pr.start_date AS DATE)
         AND SAFE_CAST(pr.end_date AS DATE)

QUALIFY ROW_NUMBER() OVER (
  PARTITION BY s.sale_id
  ORDER BY pr.discount_percentage DESC, pr.promo_id
) = 1;