with store_items as (
    select * from {{ref("int_store_items")}}
),
categories as (
    select * from {{ref("int_categories")}}
)
select store_items.*, categories.* from 
store_items left join categories on store_items.cat_id = categories.subcat_id