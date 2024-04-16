with src as (select * from {{ source('app', 'items') }}),
stg as (select id, ref from src)
select * from stg