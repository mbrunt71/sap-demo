
    
    

with child as (
    select SALES_ORDER_NUMBER as from_field
    from DEMO.SILVER_SILVER.sales_order_status
    where SALES_ORDER_NUMBER is not null
),

parent as (
    select SALES_ORDER_NUMBER as to_field
    from DEMO.SILVER_SILVER.sales_orders
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


