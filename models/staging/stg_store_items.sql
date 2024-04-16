with src as (select * from {{ source('app', 'store_items') }}),
stg as (select id, cat_id, rating_id, store_id from src)
select * from stg