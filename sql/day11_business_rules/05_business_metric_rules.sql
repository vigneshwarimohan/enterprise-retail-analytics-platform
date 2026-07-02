SELECT
  s.sale_id,
  SAFE_CAST(s.sale_date AS DATE) AS sale_date,
  s.customer_id,
  s.product_id,
  p.category,

  s.quantity AS quantity_sold,
  s.sales_amount AS gross_sales_amount,

  CASE
    WHEN pr.promo_id IS NOT NULL THEN TRUE
    ELSE FALSE
  END AS is_promoted_sale,

  pr.discount_percentage,

  CASE
    WHEN pr.promo_id IS NOT NULL
    THEN ROUND(s.sales_amount * pr.discount_percentage / 100, 2)
    ELSE 0
  END AS estimated_discount_amount,

  CASE
    WHEN pr.promo_id IS NOT NULL
    THEN ROUND(s.sales_amount - (s.sales_amount * pr.discount_percentage / 100), 2)
    ELSE s.sales_amount
  END AS estimated_net_sales_amount

FROM `retailmart-dbt-dev.raw.sales` s
LEFT JOIN `retailmart-dbt-dev.raw.products_api` p
  ON s.product_id = p.product_id
LEFT JOIN `retailmart-dbt-dev.raw.promotions` pr
  ON s.product_id = pr.product_id
 AND SAFE_CAST(s.sale_date AS DATE)
     BETWEEN SAFE_CAST(pr.start_date AS DATE)
         AND SAFE_CAST(pr.end_date AS DATE)

QUALIFY ROW_NUMBER() OVER (
  PARTITION BY s.sale_id
  ORDER BY pr.discount_percentage DESC, pr.promo_id
) = 1;