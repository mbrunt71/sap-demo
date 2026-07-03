
    
    

select
    MATERIAL_NUMBER as unique_field,
    count(*) as n_records

from DEMO.SILVER_SILVER.materials
where MATERIAL_NUMBER is not null
group by MATERIAL_NUMBER
having count(*) > 1


