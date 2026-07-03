
    
    

with child as (
    select ORDER_NUMBER as from_field
    from DEMO.SILVER_SILVER.production_order_items
    where ORDER_NUMBER is not null
),

parent as (
    select ORDER_NUMBER as to_field
    from DEMO.SILVER_SILVER.production_orders
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


