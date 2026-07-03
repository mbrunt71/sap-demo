
    
    

select
     as unique_field,
    count(*) as n_records

from DEMO.SILVER.complaint_items
where  is not null
group by 
having count(*) > 1


