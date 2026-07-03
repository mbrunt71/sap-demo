
  
    



create or replace transient  table DEMO.SILVER_SILVER.application_log_data
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.BALDAT
    )
;




  