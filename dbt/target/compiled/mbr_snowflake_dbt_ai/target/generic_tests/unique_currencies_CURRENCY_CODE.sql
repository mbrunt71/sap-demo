
    
    

select
    CURRENCY_CODE as unique_field,
    count(*) as n_records

from DEMO.SILVER_SILVER.currencies
where CURRENCY_CODE is not null
group by CURRENCY_CODE
having count(*) > 1


