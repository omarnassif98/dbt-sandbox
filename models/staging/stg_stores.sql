with src as (select * from {{ source('app', 'stores') }}),
stg as (select id, ref from src)
select * from stg