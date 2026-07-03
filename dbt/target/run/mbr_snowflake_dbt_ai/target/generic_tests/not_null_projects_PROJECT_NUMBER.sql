
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select PROJECT_NUMBER
from DEMO.SILVER.projects
where PROJECT_NUMBER is null



  
  
      
    ) dbt_internal_test