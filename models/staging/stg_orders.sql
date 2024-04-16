with src as (select * from {{ source('app', 'orders') }}),
stg as (select id, client_id, arrived_at, store_id from src)
select * from stg