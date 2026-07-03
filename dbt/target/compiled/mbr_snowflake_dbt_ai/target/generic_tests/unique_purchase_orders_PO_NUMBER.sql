
    
    

select
    PO_NUMBER as unique_field,
    count(*) as n_records

from DEMO.SILVER_SILVER.purchase_orders
where PO_NUMBER is not null
group by PO_NUMBER
having count(*) > 1


