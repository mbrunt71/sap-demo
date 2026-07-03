
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select DELIVERY_NUMBER
from DEMO.SILVER.deliveries
where DELIVERY_NUMBER is null



  
  
      
    ) dbt_internal_test