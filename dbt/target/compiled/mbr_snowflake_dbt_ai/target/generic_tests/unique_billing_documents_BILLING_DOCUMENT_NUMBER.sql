
    
    

select
    BILLING_DOCUMENT_NUMBER as unique_field,
    count(*) as n_records

from DEMO.SILVER_SILVER.billing_documents
where BILLING_DOCUMENT_NUMBER is not null
group by BILLING_DOCUMENT_NUMBER
having count(*) > 1


