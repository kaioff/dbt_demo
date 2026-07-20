{{ config(materialized='view') }}

select
    customer_id,
    first_name,
    last_name,
    lower(email) as email
from {{ source('bronze', 'customers') }}
