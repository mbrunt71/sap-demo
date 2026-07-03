
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select MATERIAL_NUMBER
from DEMO.SILVER.material_sales_data
where MATERIAL_NUMBER is null



  
  
      
    ) dbt_internal_test