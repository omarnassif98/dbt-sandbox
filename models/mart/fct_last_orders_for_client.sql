with clients_last_order_per_warehouse as (
    select client_id, max(arrived_at) as last_order_per_warehouse
     from {{ref("stg_orders")}} group by client_id, store_id
),
clients_last_order_overall as (
    select client_id, max(arrived_at) as last_order_overall
     from clients_last_order_per_warehouse group by client_id
)
select clients_last_order_per_warehouse.*, clients_last_order_overall.last_order_overall from clients_last_order_per_warehouse left join clients_last_order_overall using client_id
