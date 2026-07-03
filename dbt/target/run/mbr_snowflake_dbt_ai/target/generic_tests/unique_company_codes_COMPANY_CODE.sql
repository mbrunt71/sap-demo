
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    COMPANY_CODE as unique_field,
    count(*) as n_records

from DEMO.SILVER.company_codes
where COMPANY_CODE is not null
group by COMPANY_CODE
having count(*) > 1



  
  
      
    ) dbt_internal_test