
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select CUSTOMER_NUMBER
from DEMO.SILVER.customer_sales_areas
where CUSTOMER_NUMBER is null



  
  
      
    ) dbt_internal_test