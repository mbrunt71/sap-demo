
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select DELIVERY_NUMBER as from_field
    from DEMO.SILVER.delivery_items
    where DELIVERY_NUMBER is not null
),

parent as (
    select DELIVERY_NUMBER as to_field
    from DEMO.SILVER.deliveries
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test