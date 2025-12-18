with seed_data as (
    select country_code, count(*) as count
    from {{ ref('dialcode') }}
    group by country_code
)
select * from seed_data