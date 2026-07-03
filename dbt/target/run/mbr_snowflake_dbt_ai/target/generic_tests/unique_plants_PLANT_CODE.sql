
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    PLANT_CODE as unique_field,
    count(*) as n_records

from DEMO.SILVER.plants
where PLANT_CODE is not null
group by PLANT_CODE
having count(*) > 1



  
  
      
    ) dbt_internal_test