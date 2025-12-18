
{% snapshot emp1_snapshot %}

{{
    config(
      target_database='jaffle-shop-481012',
      target_schema='test',
      unique_key='employee_id',

      strategy='timestamp',
      updated_at='updated_at'
    )
}}

select * from  {{ source('training_source', 'stg_emp1') }}


{% endsnapshot %}