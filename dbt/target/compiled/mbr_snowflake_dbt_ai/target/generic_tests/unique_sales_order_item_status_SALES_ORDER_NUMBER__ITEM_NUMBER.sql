
    
    

select
     as unique_field,
    count(*) as n_records

from DEMO.SILVER_SILVER.sales_order_item_status
where  is not null
group by 
having count(*) > 1


