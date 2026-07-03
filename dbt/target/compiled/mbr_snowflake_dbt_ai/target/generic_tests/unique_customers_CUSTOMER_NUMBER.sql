
    
    

select
    CUSTOMER_NUMBER as unique_field,
    count(*) as n_records

from DEMO.SILVER_SILVER.customers
where CUSTOMER_NUMBER is not null
group by CUSTOMER_NUMBER
having count(*) > 1


