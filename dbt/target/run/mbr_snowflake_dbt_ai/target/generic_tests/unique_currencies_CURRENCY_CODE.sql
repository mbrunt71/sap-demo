
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    CURRENCY_CODE as unique_field,
    count(*) as n_records

from DEMO.SILVER.currencies
where CURRENCY_CODE is not null
group by CURRENCY_CODE
having count(*) > 1



  
  
      
    ) dbt_internal_test