with stg as (
    select * from {{ref("stg_user_wallets")}} where wallet = 'credits' and amount > 0
)
select order_id, sum(amount) as compensated_amount from stg group by order_id