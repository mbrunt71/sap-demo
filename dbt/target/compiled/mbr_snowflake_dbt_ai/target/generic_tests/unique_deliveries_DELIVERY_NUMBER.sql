
    
    

select
    DELIVERY_NUMBER as unique_field,
    count(*) as n_records

from DEMO.SILVER_SILVER.deliveries
where DELIVERY_NUMBER is not null
group by DELIVERY_NUMBER
having count(*) > 1


