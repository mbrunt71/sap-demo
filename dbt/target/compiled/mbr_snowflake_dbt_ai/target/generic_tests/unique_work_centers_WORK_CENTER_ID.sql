
    
    

select
    WORK_CENTER_ID as unique_field,
    count(*) as n_records

from DEMO.SILVER_SILVER.work_centers
where WORK_CENTER_ID is not null
group by WORK_CENTER_ID
having count(*) > 1


