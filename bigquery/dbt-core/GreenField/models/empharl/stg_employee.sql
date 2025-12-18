

SELECT
  First_name, Last_name, Salary, DENSE_RANK() OVER (ORDER BY Salary DESC) AS rnk
FROM {{ source('training_source', 'employee') }}
QUALIFY rnk < 4
