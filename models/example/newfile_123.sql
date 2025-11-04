with cte_123 as (
    select
    name
    from {{ source('ABC', 'NEW_PROD_DIM') }}
),
TRAN AS(
    select
    LOWER(NAME) AS Lower_name
    FROM cte_123
)
SELECT*FROM TRAN