
    
    

with child as (
    select MATERIAL_NUMBER as from_field
    from DEMO.SILVER_SILVER.billing_document_items
    where MATERIAL_NUMBER is not null
),

parent as (
    select MATERIAL_NUMBER as to_field
    from DEMO.SILVER_SILVER.materials
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


