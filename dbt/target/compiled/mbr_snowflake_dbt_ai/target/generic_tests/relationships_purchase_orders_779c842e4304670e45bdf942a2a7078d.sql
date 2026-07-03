
    
    

with child as (
    select VENDOR_NUMBER as from_field
    from DEMO.SILVER_SILVER.purchase_orders
    where VENDOR_NUMBER is not null
),

parent as (
    select VENDOR_NUMBER as to_field
    from DEMO.SILVER_SILVER.vendors
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


