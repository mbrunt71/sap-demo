
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    SALES_ORGANIZATION as unique_field,
    count(*) as n_records

from DEMO.SILVER.sales_organizations
where SALES_ORGANIZATION is not null
group by SALES_ORGANIZATION
having count(*) > 1



  
  
      
    ) dbt_internal_test