
  
    



create or replace transient  table DEMO.SILVER_SILVER.serial_number_documents
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.SER01
    )
;




  