with src as (select * from {{ source('app', 'store_items') }}),
stg as (select id, store_id, item_id, cat_id from src)
select * from stg