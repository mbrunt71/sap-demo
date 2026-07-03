
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    BILLING_DOCUMENT_NUMBER as unique_field,
    count(*) as n_records

from DEMO.SILVER.billing_documents
where BILLING_DOCUMENT_NUMBER is not null
group by BILLING_DOCUMENT_NUMBER
having count(*) > 1



  
  
      
    ) dbt_internal_test