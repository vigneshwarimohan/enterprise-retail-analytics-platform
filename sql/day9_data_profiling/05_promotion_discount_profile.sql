SELECT
  discount_percentage,
  COUNT(*) AS promotion_count
FROM `retailmart-dbt-dev.raw.promotions`
GROUP BY discount_percentage
ORDER BY discount_percentage;

SELECT
  COUNT(*) AS total_promotions,
  COUNT(DISTINCT product_id) AS promoted_products,
  MIN(SAFE_CAST(start_date AS DATE)) AS first_promotion_start_date,
  MAX(SAFE_CAST(end_date AS DATE)) AS last_promotion_end_date,
  MIN(discount_percentage) AS min_discount_percentage,
  MAX(discount_percentage) AS max_discount_percentage,
  AVG(discount_percentage) AS avg_discount_percentage
FROM `retailmart-dbt-dev.raw.promotions`;