
    
    

with child as (
    select PAYER_CUSTOMER as from_field
    from DEMO.SILVER_SILVER.billing_documents
    where PAYER_CUSTOMER is not null
),

parent as (
    select CUSTOMER_NUMBER as to_field
    from DEMO.SILVER_SILVER.customers
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


