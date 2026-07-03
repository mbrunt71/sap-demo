
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select PO_NUMBER
from DEMO.SILVER.purchase_orders
where PO_NUMBER is null



  
  
      
    ) dbt_internal_test