
  
    



create or replace transient  table DEMO.SILVER_SILVER.vendor_cleared_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.BSAK
    )
;




  