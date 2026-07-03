
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    COMPLAINT_NUMBER as unique_field,
    count(*) as n_records

from DEMO.SILVER.complaints
where COMPLAINT_NUMBER is not null
group by COMPLAINT_NUMBER
having count(*) > 1



  
  
      
    ) dbt_internal_test