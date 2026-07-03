
    
    

select
     as unique_field,
    count(*) as n_records

from DEMO.SILVER_SILVER.purchase_requisitions
where  is not null
group by 
having count(*) > 1


