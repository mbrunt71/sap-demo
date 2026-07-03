
  
    



create or replace transient  table DEMO.SILVER_SILVER.change_document_headers
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.CDHDR
    )
;




  