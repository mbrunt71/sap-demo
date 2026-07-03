
    
    

select
    SALES_ORDER_NUMBER as unique_field,
    count(*) as n_records

from DEMO.SILVER_SILVER.sales_orders
where SALES_ORDER_NUMBER is not null
group by SALES_ORDER_NUMBER
having count(*) > 1


