
  
    



create or replace transient  table DEMO.SILVER_SILVER.application_log_headers
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.BALHDR
    )
;




  