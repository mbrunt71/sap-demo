
    
    

select
    COMPLAINT_NUMBER as unique_field,
    count(*) as n_records

from DEMO.SILVER_SILVER.complaints
where COMPLAINT_NUMBER is not null
group by COMPLAINT_NUMBER
having count(*) > 1


