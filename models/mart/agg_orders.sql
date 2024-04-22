with orders as (
    select * from {{ref("int_orders")}}
),
compensation_per_order as (
    select * from {{ref("fct_compensation_per_order")}}
),
last_order_for_client as (
    select * from {{ref("fct_last_orders_for_client")}}
)
select orders.*, compensation_per_order.compensated_amount, last_order_for_client.last_order_per_warehouse, last_order_for_client.last_order_overall 
 from orders 
 left join compensation_per_order on orders.order_id = compensation_per_order.order_id 
 left join last_order_for_client on orders.client_id = last_order_for_client.client_id