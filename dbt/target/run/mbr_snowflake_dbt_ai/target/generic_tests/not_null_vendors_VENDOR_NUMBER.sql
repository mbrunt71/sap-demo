
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select VENDOR_NUMBER
from DEMO.SILVER.vendors
where VENDOR_NUMBER is null



  
  
      
    ) dbt_internal_test