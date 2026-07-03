
    
    

select
     as unique_field,
    count(*) as n_records

from DEMO.SILVER.material_valuation
where  is not null
group by 
having count(*) > 1


