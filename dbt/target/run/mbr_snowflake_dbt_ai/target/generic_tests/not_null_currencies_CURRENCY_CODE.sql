
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select CURRENCY_CODE
from DEMO.SILVER.currencies
where CURRENCY_CODE is null



  
  
      
    ) dbt_internal_test