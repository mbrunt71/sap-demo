
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    PROJECT_NUMBER as unique_field,
    count(*) as n_records

from DEMO.SILVER.projects
where PROJECT_NUMBER is not null
group by PROJECT_NUMBER
having count(*) > 1



  
  
      
    ) dbt_internal_test