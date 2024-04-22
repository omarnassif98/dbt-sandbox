with store_items as (
    select * from {{ref("stg_store_items")}}
),
items as (
    select * from {{ref("stg_items")}}
)
select store_items.*, items.item_name from 
store_items left join items on store_items.item_id = items.id