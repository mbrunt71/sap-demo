
    
    

select
    WBS_ELEMENT as unique_field,
    count(*) as n_records

from DEMO.SILVER.wbs_elements
where WBS_ELEMENT is not null
group by WBS_ELEMENT
having count(*) > 1


