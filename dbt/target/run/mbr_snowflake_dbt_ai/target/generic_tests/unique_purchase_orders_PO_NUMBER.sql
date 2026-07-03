
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    PO_NUMBER as unique_field,
    count(*) as n_records

from DEMO.SILVER.purchase_orders
where PO_NUMBER is not null
group by PO_NUMBER
having count(*) > 1



  
  
      
    ) dbt_internal_test