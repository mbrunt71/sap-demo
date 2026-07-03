
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    VENDOR_NUMBER as unique_field,
    count(*) as n_records

from DEMO.SILVER.vendors
where VENDOR_NUMBER is not null
group by VENDOR_NUMBER
having count(*) > 1



  
  
      
    ) dbt_internal_test