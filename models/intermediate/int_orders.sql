with rel_stores as (
    select * from {{ref("stg_stores")}} where lower(warehouse) like 'toters fresh%'
),
rel_orders as (
    select * from {{ref("stg_orders")}} where store_id in (select id from rel_stores)
)
select rel_orders.*, rel_stores.warehouse from rel_orders inner join rel_stores on rel_orders.store_id = rel_stores.id