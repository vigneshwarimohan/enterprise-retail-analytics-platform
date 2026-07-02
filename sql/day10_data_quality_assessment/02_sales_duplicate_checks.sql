SELECT
  sale_id,
  COUNT(*) AS duplicate_count
FROM `retailmart-dbt-dev.raw.sales`
GROUP BY sale_id
HAVING COUNT(*) > 1
ORDER BY duplicate_count DESC;