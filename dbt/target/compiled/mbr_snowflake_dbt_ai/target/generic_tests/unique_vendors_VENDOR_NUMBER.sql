
    
    

select
    VENDOR_NUMBER as unique_field,
    count(*) as n_records

from DEMO.SILVER_SILVER.vendors
where VENDOR_NUMBER is not null
group by VENDOR_NUMBER
having count(*) > 1


