
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select COMPLAINT_NUMBER
from DEMO.SILVER.complaint_items
where COMPLAINT_NUMBER is null



  
  
      
    ) dbt_internal_test