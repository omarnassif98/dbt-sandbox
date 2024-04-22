with src as (select * from {{ source('app', 'items') }}),
stg as (select id, ref as item_name from src)
select * from stg