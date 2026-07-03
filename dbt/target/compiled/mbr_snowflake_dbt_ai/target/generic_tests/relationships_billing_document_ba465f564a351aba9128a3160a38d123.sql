
    
    

with child as (
    select BILLING_DOCUMENT_NUMBER as from_field
    from DEMO.SILVER_SILVER.billing_document_items
    where BILLING_DOCUMENT_NUMBER is not null
),

parent as (
    select BILLING_DOCUMENT_NUMBER as to_field
    from DEMO.SILVER_SILVER.billing_documents
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


