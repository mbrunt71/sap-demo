
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select WBS_ELEMENT
from DEMO.SILVER.wbs_elements
where WBS_ELEMENT is null



  
  
      
    ) dbt_internal_test