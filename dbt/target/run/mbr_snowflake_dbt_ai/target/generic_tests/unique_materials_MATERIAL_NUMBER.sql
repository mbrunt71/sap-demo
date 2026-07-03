
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    MATERIAL_NUMBER as unique_field,
    count(*) as n_records

from DEMO.SILVER.materials
where MATERIAL_NUMBER is not null
group by MATERIAL_NUMBER
having count(*) > 1



  
  
      
    ) dbt_internal_test