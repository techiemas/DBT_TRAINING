with products as (
    select 1 as product_id, 'Widget A' as product_name union all
    select 2 as product_id, 'Widget B' as product_name
),

orders as (
    select 1 as order_id, 1 as product_id, 5 as quantity, 1000 as price_cents union all
    select 2 as order_id, 1 as product_id, 2 as quantity, 1000 as price_cents union all
    select 3 as order_id, 2 as product_id, 1 as quantity, 2000 as price_cents
)

select
    p.product_id,
    p.product_name,
    sum(o.quantity) as total_quantity,
    sum(o.quantity * o.price_cents) as total_revenue_cents,
    round(cast(sum(o.quantity * o.price_cents) / 100 as numeric), 2) as total_revenue_dollars
from products p
join orders o on p.product_id = o.product_id
group by 1, 2
