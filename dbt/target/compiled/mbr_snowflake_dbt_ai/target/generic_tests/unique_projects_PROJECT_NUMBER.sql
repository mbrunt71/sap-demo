
    
    

select
    PROJECT_NUMBER as unique_field,
    count(*) as n_records

from DEMO.SILVER.projects
where PROJECT_NUMBER is not null
group by PROJECT_NUMBER
having count(*) > 1


