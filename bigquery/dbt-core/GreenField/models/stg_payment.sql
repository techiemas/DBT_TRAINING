with source_data as (
    select 1 as id, 100 as amount_cents
    union all
    select 2 as id, 250 as amount_cents
    union all
    select 3 as id, 500 as amount_cents
)

select
    id,
    amount_cents,
    {{ cents_to_dollars('amount_cents') }} as amount_dollars
from source_data
