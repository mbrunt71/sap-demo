
    
    

with child as (
    select COMPLAINT_NUMBER as from_field
    from DEMO.SILVER.complaint_activities
    where COMPLAINT_NUMBER is not null
),

parent as (
    select COMPLAINT_NUMBER as to_field
    from DEMO.SILVER.complaints
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


