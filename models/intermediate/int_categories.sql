with stg as (
    select *
     from {{ref("stg_categories")}}
)
select subcat.id as subcat_id, subcat.ref as subcat_name, cat.id as category_id, cat.ref as category_name
from stg subcat left join stg cat on subcat.parent_id = cat.id