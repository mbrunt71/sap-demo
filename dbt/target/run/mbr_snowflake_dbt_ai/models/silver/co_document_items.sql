
  
    



create or replace transient  table DEMO.SILVER_SILVER.co_document_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.COEP
    )
;




  