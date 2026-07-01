select
    promotion_id,
    promotion_name,
    discount_percent,
    start_date,
    end_date
from {{ source('raw', 'promotions') }}