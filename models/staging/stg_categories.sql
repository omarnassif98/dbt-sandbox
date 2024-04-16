with src as (select * from {{ source('app', 'categories') }}),
stg as (select id, ref, parent_id from src)
select * from stg