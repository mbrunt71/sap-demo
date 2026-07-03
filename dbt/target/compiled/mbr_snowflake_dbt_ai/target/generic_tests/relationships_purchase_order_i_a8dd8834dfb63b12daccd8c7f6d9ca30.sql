
    
    

with child as (
    select PO_NUMBER as from_field
    from DEMO.SILVER_SILVER.purchase_order_items
    where PO_NUMBER is not null
),

parent as (
    select PO_NUMBER as to_field
    from DEMO.SILVER_SILVER.purchase_orders
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


