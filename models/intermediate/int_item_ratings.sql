with item_ratings as (
    select * from {{ref("stg_item_ratings")}}
),
ratings as (
    select * from {{ref("stg_ratings")}}
)
select item_ratings.*, ratings.order_id, ratings.stars from 
item_ratings left join ratings on item_ratings.rating_id = ratings.id