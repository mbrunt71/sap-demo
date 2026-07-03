
    
    

select
     as unique_field,
    count(*) as n_records

from DEMO.SILVER.customer_company_codes
where  is not null
group by 
having count(*) > 1


