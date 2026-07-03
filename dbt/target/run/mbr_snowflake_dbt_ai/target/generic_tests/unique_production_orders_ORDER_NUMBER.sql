
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    ORDER_NUMBER as unique_field,
    count(*) as n_records

from DEMO.SILVER.production_orders
where ORDER_NUMBER is not null
group by ORDER_NUMBER
having count(*) > 1



  
  
      
    ) dbt_internal_test