SELECT
  product_id,
  product_name,
  category,
  unit_price,

  CASE
    WHEN category IS NULL OR TRIM(category) = '' THEN 'Uncategorised'
    ELSE category
  END AS standardised_category

FROM `retailmart-dbt-dev.raw.products_api`;