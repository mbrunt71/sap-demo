
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select SALES_ORGANIZATION as from_field
    from DEMO.SILVER.billing_documents
    where SALES_ORGANIZATION is not null
),

parent as (
    select SALES_ORGANIZATION as to_field
    from DEMO.SILVER.sales_organizations
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test