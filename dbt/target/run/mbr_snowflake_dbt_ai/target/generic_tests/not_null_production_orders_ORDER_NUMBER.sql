
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select ORDER_NUMBER
from DEMO.SILVER.production_orders
where ORDER_NUMBER is null



  
  
      
    ) dbt_internal_test