
    
    

with child as (
    select PLANT_CODE as from_field
    from DEMO.SILVER_SILVER.complaints
    where PLANT_CODE is not null
),

parent as (
    select PLANT_CODE as to_field
    from DEMO.SILVER_SILVER.plants
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


