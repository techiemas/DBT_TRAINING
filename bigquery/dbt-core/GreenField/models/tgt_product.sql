{{ 
    config
    (
    materialized='incremental',
    unique_key='SRC_PRODUCT_id'   
    )       
}}

select * from test.src_product  

{% if is_incremental() %}
    where 
    updated_at > (select max(updated_at) from {{ this }})
    --  updated_at > (select min(updated_at) from {{ this }})
    -- DATE(updated_at) = '2023-04-22' --for incremental back date
{% endif %}