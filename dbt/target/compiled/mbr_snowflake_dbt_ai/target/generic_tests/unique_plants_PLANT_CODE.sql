
    
    

select
    PLANT_CODE as unique_field,
    count(*) as n_records

from DEMO.SILVER_SILVER.plants
where PLANT_CODE is not null
group by PLANT_CODE
having count(*) > 1


