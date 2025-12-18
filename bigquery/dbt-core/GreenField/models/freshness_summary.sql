with source_data as (
    select * from {{ source('freshness_source', 'employee') }}
)

select
    employee_id,
    Loaded_DT,
    timestamp_diff(current_timestamp(), Loaded_DT, MINUTE) as minutes_since_loaded
from source_data
