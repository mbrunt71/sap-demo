
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    SALES_ORDER_NUMBER as unique_field,
    count(*) as n_records

from DEMO.SILVER.sales_order_status
where SALES_ORDER_NUMBER is not null
group by SALES_ORDER_NUMBER
having count(*) > 1



  
  
      
    ) dbt_internal_test