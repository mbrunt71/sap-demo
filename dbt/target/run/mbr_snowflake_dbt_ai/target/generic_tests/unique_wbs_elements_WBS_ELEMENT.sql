
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    WBS_ELEMENT as unique_field,
    count(*) as n_records

from DEMO.SILVER.wbs_elements
where WBS_ELEMENT is not null
group by WBS_ELEMENT
having count(*) > 1



  
  
      
    ) dbt_internal_test