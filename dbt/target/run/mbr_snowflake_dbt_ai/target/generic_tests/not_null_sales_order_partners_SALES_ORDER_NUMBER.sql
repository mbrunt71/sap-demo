
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select SALES_ORDER_NUMBER
from DEMO.SILVER.sales_order_partners
where SALES_ORDER_NUMBER is null



  
  
      
    ) dbt_internal_test