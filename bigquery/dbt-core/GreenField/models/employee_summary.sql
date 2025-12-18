with source_data as (
    select * from {{ source('training_source', 'employee') }}
)

select
    employee_id,
    concat(First_name, ' ', Last_name) as full_name,
    Manager_ID,
    Department_ID,
    Salary as monthly_salary,
    Salary * 12 as annual_salary,
    Loaded_DT
from source_data
