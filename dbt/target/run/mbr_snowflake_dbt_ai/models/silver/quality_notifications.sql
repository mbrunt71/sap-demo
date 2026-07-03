
  
    



create or replace transient  table DEMO.SILVER_SILVER.quality_notifications
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.QMEL
    )
;




  