with src as (select * from {{ source('app', 'stores') }}),
stg as (select id, ref as warehouse from src)
select * from stg