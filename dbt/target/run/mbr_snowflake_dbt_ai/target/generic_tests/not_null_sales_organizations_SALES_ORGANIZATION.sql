
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select SALES_ORGANIZATION
from DEMO.SILVER.sales_organizations
where SALES_ORGANIZATION is null



  
  
      
    ) dbt_internal_test