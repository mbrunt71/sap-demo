
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select BILLING_DOCUMENT_NUMBER
from DEMO.SILVER.billing_document_items
where BILLING_DOCUMENT_NUMBER is null



  
  
      
    ) dbt_internal_test