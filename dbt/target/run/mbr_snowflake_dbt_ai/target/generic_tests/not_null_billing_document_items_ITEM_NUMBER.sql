
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select ITEM_NUMBER
from DEMO.SILVER.billing_document_items
where ITEM_NUMBER is null



  
  
      
    ) dbt_internal_test