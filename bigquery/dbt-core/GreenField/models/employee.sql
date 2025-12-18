{{ config(materialized='table') }}

SELECT 339 as employee_id, 'Tom' as First_name, 'Grant' as Last_name, 333 as Manager_ID, 10 as Department_ID, 25000 as Salary, current_timestamp() as Loaded_DT
UNION ALL SELECT 337, 'Jame', 'Anderson', 332, 3, 23000, current_timestamp()
UNION ALL SELECT 335, 'John', 'cena', 339, 21, 26000, current_timestamp()
UNION ALL SELECT 338, 'chris', 'Lee', 332, 5, 12000, current_timestamp()