
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select COMPANY_CODE
from DEMO.SILVER.company_codes
where COMPANY_CODE is null



  
  
      
    ) dbt_internal_test