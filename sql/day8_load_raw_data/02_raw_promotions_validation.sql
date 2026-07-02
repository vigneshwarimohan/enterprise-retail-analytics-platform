SELECT
  COUNT(*) AS total_rows,
  COUNT(DISTINCT promo_id) AS unique_promotions,
  COUNT(DISTINCT product_id) AS promoted_products,
  MIN(start_date) AS first_promotion_start_date,
  MAX(end_date) AS last_promotion_end_date
FROM `retailmart-dbt-dev.raw.promotions`;