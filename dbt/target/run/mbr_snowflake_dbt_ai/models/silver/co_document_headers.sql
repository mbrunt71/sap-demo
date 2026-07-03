
  
    



create or replace transient  table DEMO.SILVER_SILVER.co_document_headers
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.COBK
    )
;




  