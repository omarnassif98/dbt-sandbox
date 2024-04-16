with src as (select * from {{ source('app', 'item_ratings') }}),
stg as (select id, rating_id, rating_reason_id, item_id from src)
select * from stg