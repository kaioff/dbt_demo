{{ config(materialized='view') }}

select
    order_id,
    customer_id,
    order_date,
    status,
    amount
from {{ source('bronze', 'orders') }}
where amount is not null
