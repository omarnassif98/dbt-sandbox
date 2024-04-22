with src as (select * from {{ source('app', 'user_wallets') }}),
stg as (select order_id, wallet, amount from src)
select * from stg