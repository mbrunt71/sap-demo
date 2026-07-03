
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select REQUISITION_NUMBER
from DEMO.SILVER.purchase_requisitions
where REQUISITION_NUMBER is null



  
  
      
    ) dbt_internal_test