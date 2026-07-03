
    
    

select
     as unique_field,
    count(*) as n_records

from DEMO.SILVER.inventory_stock
where  is not null
group by 
having count(*) > 1


