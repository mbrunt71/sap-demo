
  
    



create or replace transient  table DEMO.SILVER_SILVER.change_document_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.CDPOS
    )
;




  