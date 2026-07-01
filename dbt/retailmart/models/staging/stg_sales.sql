select
    sale_id,
    customer_id,
    product_id,
    sale_date,
    quantity,
    sales_amount
from {{ source('raw', 'sales') }}