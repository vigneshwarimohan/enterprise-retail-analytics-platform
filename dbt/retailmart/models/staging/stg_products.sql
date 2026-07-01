select
    id as product_id,
    title as product_name,
    price,
    description,
    category,
    image as image_url,
    rating.rate as rating_rate,
    rating.count as rating_count
from {{ source('raw', 'products_api') }}