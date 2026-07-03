
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select PLANT_CODE
from DEMO.SILVER.plants
where PLANT_CODE is null



  
  
      
    ) dbt_internal_test