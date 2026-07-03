
  
    



create or replace transient  table DEMO.SILVER_SILVER.vendor_purchasing_org
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.LFM1
    )
;




  