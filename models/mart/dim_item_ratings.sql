with
    orders as (select * from {{ ref("agg_orders") }}),
    store_items as (select * from {{ ref("dim_store_items") }}),
    item_ratings as (select * from {{ ref("int_item_ratings") }})
select
    item_ratings.*,
    store_items.item_name,
    store_items.category_id,
    store_items.category_name,
    store_items.subcat_id,
    store_items.subcat_name,
    orders.warehouse,
    orders.last_order_overall,
    orders.last_order_per_warehouse,
    orders.compensated_amount
from item_ratings
inner join orders on item_ratings.order_id = orders.order_id
inner join
    store_items
    on item_ratings.item_id = store_items.item_id
    and orders.store_id = store_items.store_id
