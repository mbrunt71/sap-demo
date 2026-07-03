
    
    

select
    ORDER_NUMBER as unique_field,
    count(*) as n_records

from DEMO.SILVER_SILVER.production_orders
where ORDER_NUMBER is not null
group by ORDER_NUMBER
having count(*) > 1


