with src as (select * from {{ source('app', 'user_wallets') }}),
stg as (select user_id, wallet, amount from src)
select * from stg