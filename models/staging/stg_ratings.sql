with src as (select * from {{ source('app', 'ratings') }}),
stg as (select id, order_id, stars from src)
select * from stg