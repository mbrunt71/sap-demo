
    
    

select
    COMPANY_CODE as unique_field,
    count(*) as n_records

from DEMO.SILVER.company_codes
where COMPANY_CODE is not null
group by COMPANY_CODE
having count(*) > 1


