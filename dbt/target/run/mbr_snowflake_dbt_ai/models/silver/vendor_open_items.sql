
  
    



create or replace transient  table DEMO.SILVER_SILVER.vendor_open_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.BSIK
    )
;




  