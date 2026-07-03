
    
    

with child as (
    select COMPANY_CODE as from_field
    from DEMO.SILVER.customer_company_codes
    where COMPANY_CODE is not null
),

parent as (
    select COMPANY_CODE as to_field
    from DEMO.SILVER.company_codes
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


